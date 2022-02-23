var express = require('express')
var router = express.Router()
var oracledb = require('oracledb')
var fs = require('fs')
var Repository = require('../connection/query').Repository
const res = require('express/lib/response')
var repo = new Repository()

/***
 * fetches all animes from the database
 */
router.get('/anime', async (req, res, next) => {
    var ans = await repo.query('select * from anime', {})
    console.log(ans)
    res.send(ans.data)
    // oracledb.getConnection({
    //     user: "hr",
    //     password: "hr",
    //     connectString: "(DESCRIPTION =(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))(CONNECT_DATA =(SID= ORCL)))"
    // }, (err, con) => {
    //     if(err){
    //         console.log('Cannot connect...')
    //         console.log(err)
    //         res.send(err)
    //     }
    //     else{
    //         var q = 'select * from anime'

    //         binds = {}

    //         // For a complete list of options see the documentation.
    //         options = {
    //             outFormat: oracledb.OUT_FORMAT_OBJECT, // query result format
    //         }

    //         con.execute(q, binds, options, (e, a) => {
    //             if(e) res.send(e)
    //             else{
    //                 res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3000')
    //                 res.send(a.rows)
    //             }
    //         })
    //     } 
    // })
})

/**
 * fetches a particular anime with the parameter animeId from the database
 */
router.get('/anime/:animeId', async (req, res, next) => {
  //need to fetch the average ratings from the review table...
  const animeId = req.params.animeId
  var ans = await repo.query('select animeid, title, "Release Date", synopsis, p.producerid, p.name from anime a join producer p on(animeid = :animeId and p.producerid=a.producerid)', {
    animeId: animeId
  })
  console.log(ans)
  
  res.send(ans.data[0])
})

/**
 * fetches the strings of all the episode names of a particular anime with the parameter animeId from the database
 */
router.get('/anime/episodes/:animeId', async (req, res, next) => {
  const animeId = req.params.animeId
  var ans = await repo.query('select * from animeepisodes where animeid = :animeId', {
    animeId: animeId 
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches a particular episode of a particular anime from the database
 */
 router.get('/anime/:animeId/:episode', async (req, res, next) => {
  // Ensure there is a range given for the video
  const range = req.headers.range
  // get video stats (about 61MB)
  var ans = await repo.query('select * from animeepisodes where animeid = :animeId and episode = :episode', {
    animeId: req.params.animeId,
    episode: req.params.episode 
  })
  console.log(ans)

  const videoPath = ans.data[0].ROOT + req.params.animeId + "/" + ans.data[0].EPISODE + ans.data[0].EXTENSION
  const videoSize = fs.statSync(videoPath).size
  console.log(videoPath)
  console.log(videoSize)

  if (!range) {
    const head = {
        'Content-Length': videoSize,
        'Content-Type': 'video/mp4',
    }
    res.writeHead(200, head)
    fs.createReadStream(videoPath).pipe(res)
  }else{
    // Parse Range
    // Example: "bytes=32324-"
    const CHUNK_SIZE = 10 ** 6 // 1MB
    const start = Number(range.replace(/\D/g, ""))
    const end = Math.min(start + CHUNK_SIZE, videoSize - 1)

    // Create headers
    const contentLength = end - start + 1
    const headers = {
        "Content-Range": `bytes ${start}-${end}/${videoSize}`,
        "Accept-Ranges": "bytes",
        "Content-Length": contentLength,
        "Content-Type": "video/mp4",
    }

    // HTTP Status 206 for Partial Content
    res.writeHead(206, headers)

    // create video read stream for this particular chunk
    const videoStream = fs.createReadStream(videoPath, { start, end })

    // Stream the video chunk to the client
    videoStream.pipe(res)
  }
})
  
/**
 * fetches all the reviews of a particular anime from the database
 */
router.get('/animereview/:animeId', async (req, res, next) => {
  const animeId = req.params.animeId
  var ans = await repo.query('select * from animereview where animeid = :animeId', {
    animeId: animeId
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches the overall review only of a particular anime for an unlogged user
 */
router.get('/animereview/total/:animeId', async (req, res, next) => {
  const animeId = req.params.animeId
  var ans = await repo.query('select sum(rating)/count(id) count from animereview where animeid = :animeId', {
    animeId: animeId
  })
  console.log(ans)

  res.send(ans.data[0])
})

/**
 * checks if a particular user has already reviewed a particular anime
 */
router.get('/animereview/:animeId/:userId', async (req, res, next) => {
  const animeId = req.params.animeId
  const userId = req.params.userId
  var selectReview = 'select sum(rating)/count(id) count, '+
                     '(select id from animereview where animeid=:animeId and id=:userId) member, '+
                     '(select rating from animereview where animeid=:animeId and id=:userId) rating '+
                     'from animereview where animeid=:animeId group by animeid'
  var ans = await repo.query(selectReview, {
    animeId: animeId,
    userId: userId
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * older route which checks if a particular user has already reviewed a particular anime
 */
// router.get('/animereview/:animeId/:userId', async (req, res, next) => {
//   const animeId = req.params.animeId
//   const userId = req.params.userId
//   var ans = await repo.query('select * from animereview where animeid = :animeId and memberid = :userId', {
//     animeId: animeId,
//     userId: userId
//   })
//   console.log(ans)

//   res.send(ans.data)
// })
 
/**
 * registers rating for a particular anime
 */
router.post('/animereview/:animeId', async (req, res, next) => {
    const animeId = req.params.animeId
    const rating = req.body.rating
    const reviewText = req.body.reviewText
    const userid = req.body.userID

    var insertReview  = "declare \n" +
                         "begin \n" +
                         "insert into animereview(id, animeid, text, rating, time) values(:userid, :animeId, :reviewText, :rating, sysdate);\n" + 
                         "commit; \n" +
                         "end;"

    var ans = await repo.query(insertReview, {
        userid: userid,
        animeId: animeId,
        reviewText: reviewText,
        rating: rating,
    })
    console.log(ans)

    res.send(ans)
})

/**
 * fetches all the genre names from the database
 */
router.get('/genres', async (req, res, next) => {
  var ans = await repo.query('select * from genre', {})
  console.log(ans)
  res.send(ans.data)
})

/**
 * fetches all the animes of a particular genre from the database
 */
router.get('/animegenre/:genre', async (req, res, next) => {
  var ans = await repo.query('select * from anime where animeid in (select animeid from animegenre where genrename=:genre)', {
    genre: req.params.genre
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches all the premium animes of a particular genre from the database
 */
router.get('/panimegenre/:genre', async (req, res, next) => {
  var ans = await repo.query('select * from premiumanime where panimeid in (select panimeid from premiumanimegenre where genrename=:genre)', {
    genre: req.params.genre
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches all the mangas of a particular genre from the database
 */
router.get('/mangagenre/:genre', async (req, res, next) => {
  var ans = await repo.query('select * from manga where mangaid in (select mangaid from mangagenre where genrename=:genre)', {
    genre: req.params.genre
  })

  console.log(ans)
  res.send(ans.data)
})

/**
 * fetches all the premium mangas of a particular genre from the database
 */
router.get('/pmangagenre/:genre', async (req, res, next) => {
  var ans = await repo.query('select * from premiummanga where pmangaid in (select pmangaid from premiummangagenre where genrename=:genre)', {
    genre: req.params.genre
  })
  console.log(ans)

  res.send(ans.data)
})

router.get('/video', (req, res) => {
  // Ensure there is a range given for the video
  const range = req.headers.range
  // get video stats (about 61MB)
  const videoPath = "public/videos/102.mp4"
  const videoSize = fs.statSync("public/videos/102.mp4").size
  console.log(videoPath)
  console.log(videoSize)

  if (!range) {
    const head = {
        'Content-Length': videoSize,
        'Content-Type': 'video/mp4',
    }
    res.writeHead(200, head)
    fs.createReadStream(videoPath).pipe(res)
  }else{
    // Parse Range
    // Example: "bytes=32324-"
    const CHUNK_SIZE = 10 ** 6 // 1MB
    const start = Number(range.replace(/\D/g, ""))
    const end = Math.min(start + CHUNK_SIZE, videoSize - 1)

    // Create headers
    const contentLength = end - start + 1
    const headers = {
        "Content-Range": `bytes ${start}-${end}/${videoSize}`,
        "Accept-Ranges": "bytes",
        "Content-Length": contentLength,
        "Content-Type": "video/mp4",
    }

    // HTTP Status 206 for Partial Content
    res.writeHead(206, headers)

    // create video read stream for this particular chunk
    const videoStream = fs.createReadStream(videoPath, { start, end })

    // Stream the video chunk to the client
    videoStream.pipe(res)
  }
})

/**
 * testing route for sending pdf as a response
 */
router.get('/pdf', (req, res) => {
  var data =fs.readFileSync('public/pdf/manga.pdf')
  res.contentType("application/pdf")
  res.send(data)
})

/**
 * fetches all mangaas from the database
 */
 router.get('/manga', async (req, res, next) => {
  var ans = await repo.query('select * from manga', {})
  console.log(ans)
  res.send(ans.data)
})

/**
 * fetches a particular manga with the parameter mangaId from the database
 */
 router.get('/manga/:mangaId', async (req, res, next) => {
  const mangaId = req.params.mangaId
  var ans = await repo.query('select mangaid, title, "Release Date", synopsis, b.authorid, b.name from manga a join author b on(mangaid = :mangaId and b.authorid=a.authorid)', {
    mangaId: mangaId
  })
  console.log(ans)
  
  res.send(ans.data[0])
})

/**
 * fetches all the chapter names of a particular manga from the database
 */
router.get('/manga/chapters/:mangaId', async (req, res, next) => {
  const mangaId = req.params.mangaId
  var ans = await repo.query('select chapter from mangachapters where mangaid = :mangaId', {
    mangaId: mangaId
  })
  console.log(ans)
  res.send(ans.data)
})

/**
 * fetches the pdf of the concerned chapter of a particular manga from the database
 */
router.get('/manga/:mangaId/:chapter', async (req, res, next) => {
  const mangaId = req.params.mangaId
  const chapter = req.params.chapter
  var data =fs.readFileSync('public/pdf/'+mangaId+'/'+chapter+'.pdf')
  res.contentType("application/pdf")
  res.send(data)
})

/**
 * fetches all the reviews of a particular manga from the database
 */
 router.get('/mangareview/:mangaId', async (req, res, next) => {
  const mangaId = req.params.mangaId
  var ans = await repo.query('select * from mangareview where mangaId = :mangaId', {
    mangaId: mangaId
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches the overall review only of a particular manga for an unlogged user
 */
 router.get('/mangareview/total/:mangaId', async (req, res, next) => {
  const mangaId = req.params.mangaId
  var ans = await repo.query('select sum(rating)/count(id) count from mangareview where mangaId = :mangaId', {
    mangaId: mangaId
  })
  console.log(ans)

  res.send(ans.data[0])
})

/**
 * checks if a particular user has already reviewed a particular manga
 */
 router.get('/mangareview/:mangaId/:userId', async (req, res, next) => {
  const mangaId = req.params.mangaId
  const userId = req.params.userId
  var selectReview = 'select sum(rating)/count(id) count, '+
                     '(select id from mangareview where mangaId=:mangaId and id=:userId) member, '+
                     '(select rating from mangareview where mangaId=:mangaId and id=:userId) rating '+
                     'from mangareview where animeid=:animeId group by mangaId'
  var ans = await repo.query(selectReview, {
    mangaId: mangaId,
    userId: userId
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * registers rating for a particular manga
 */
 router.post('/mangareview/:mangaId', async (req, res, next) => {
  const mangaId = req.params.mangaId
  const rating = req.body.rating
  const reviewText = req.body.reviewText
  const userid = req.body.userID

  var insertReview  = "declare \n" +
                       "begin \n" +
                       "insert into mangareview(id, mangaId, text, rating, time) values(:userid, :mangaId, :reviewText, :rating, sysdate);\n" + 
                       "commit; \n" +
                       "end;"

  var ans = await repo.query(insertReview, {
      userid: userid,
      mangaId: mangaId,
      reviewText: reviewText,
      rating: rating,
  })
  console.log(ans)

  res.send(ans)
})

/**
 * fetches all the strings of the images of a particular chapter of a particular manga from the database
 */
// router.get('/manga/image/:mangaId/:chapter', async (req, res, next) => {
//   const mangaId = req.params.mangaId
//   const chapter = req.params.chapter
//   var image = fs.readFileSync('public/images/' + mangaId + '/' + chapter + '.jpg')
//   res.contentType("image/png")
//   res.send(image)
// })

/**
 * fetches all the blogs from the database
 */
router.get('/blogs', async (req, res, next) => {
  var ans = await repo.query('select * from blog', {})
  console.log(ans)
  res.send(ans.data)
})

/**
 * stores blogs written by an admin
 */
router.post('/blogs', async (req, res, next) => {
  const title = req.body.title
  const text = req.body.text
  const id = req.body.id

  var ans = await repo.query('select blog_func(:id, :title, :text) rep from dual', {
    title: title,
    text: text,
    id: id
  })
  console.log(ans)

  res.send({
    reply: ans.data[0]["REP"]
  })
})

/**
 * fetches a blog with a particular id
 */
router.get('/blogs/:id', async (req, res, next) => {
  var ans = await repo.query('select * from blog where blogid = :id', {
    id: req.params.id 
  })
  console.log(ans)

  res.send(ans.data[0])
})

/**
 * fetches all the comments of a particular blog
 */
router.get('/comments/:blogid', async (req, res, next) => {
  var ans = await repo.query('select * from comments where blogid = :blogid', {
    blogid: req.params.blogid
  })
  console.log(ans)

  res.send(ans.data)
})

/** 
 * stores a comment written by a member
 */
router.post('/blogs/:id', async (req, res, next) => {
  var insertComment  = "declare \n" +
                "begin \n" +
                "insert into comments(blogid, text) values(:id, :txt);\n" + 
                "commit; \n" +
                "end;"
  var ans = await repo.query(insertComment, {
    id: req.params.id,
    txt: req.body.comment
  })

  console.log(ans)
  res.send(ans)
})

/**
 * fetches all the plans from the database
 */
router.get('/plan', async (req, res, next) => {
  var ans = await repo.query('select * from plan', {})
  console.log(ans)

  res.send(ans.data)
})

/**
 * calls a function from database to buy a plan
 */
router.post('/plan', async (req, res, next) => {
  const memberid = req.body.memberid
  const planid = req.body.planid

  var ans = await repo.query('select buy_plan(:memberid, :planid) rep from dual', {
    memberid: memberid,
    planid: planid
  })
  console.log(ans)

  res.send({
    reply: ans.data[0]["REP"]
  })
})

/**
 * checks if a member bought any plan or not
 */
router.get('/plan/:memberid', async (req, res, next) => {
  var ans = await repo.query('select is_premium(:memberid) rep from dual', {
    memberid: req.params.memberid
  })
  console.log(ans)

  res.send({
    reply: ans.data[0]["REP"]
  })  
})

/**
 * fetches all the premium animes from the database
 */
router.get('/panime', async (req, res, next) => {
  var ans = await repo.query('select * from premiumanime', {})
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches a particular premium anime with the parameter panimeId from the database
 */
 router.get('/panime/:panimeId', async (req, res, next) => {
  //need to fetch the average ratings from the review table...
  const panimeId = req.params.panimeId
  var ans = await repo.query('select panimeid, title, "Release Date", synopsis, p.producerid, p.name from premiumanime a join producer p on(panimeid = :panimeId and p.producerid=a.producerid)', {
    panimeId: panimeId
  })
  console.log(ans)
  
  res.send(ans.data[0])
})

/**
 * fetches the strings of all the episode names of a particular premium anime with the parameter panimeId from the database
 */
 router.get('/panime/episodes/:panimeId', async (req, res, next) => {
  const panimeId = req.params.panimeId
  var ans = await repo.query('select * from premiumanimeepisodes where panimeId = :panimeId', {
    panimeId: panimeId 
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches a particular episode of a particular premium anime from the database
 */
 router.get('/panime/:panimeId/:episode', async (req, res, next) => {
  // Ensure there is a range given for the video
  const range = req.headers.range
  // get video stats (about 61MB)
  const videoPath = "public/pvideos/" + req.params.panimeId + "/" + req.params.episode + ".mp4"
  const videoSize = fs.statSync(videoPath).size
  console.log(videoPath)
  console.log(videoSize)

  if (!range) {
    const head = {
        'Content-Length': videoSize,
        'Content-Type': 'video/mp4',
    }
    res.writeHead(200, head)
    fs.createReadStream(videoPath).pipe(res)
  }else{
    // Parse Range
    // Example: "bytes=32324-"
    const CHUNK_SIZE = 10 ** 6 // 1MB
    const start = Number(range.replace(/\D/g, ""))
    const end = Math.min(start + CHUNK_SIZE, videoSize - 1)

    // Create headers
    const contentLength = end - start + 1
    const headers = {
        "Content-Range": `bytes ${start}-${end}/${videoSize}`,
        "Accept-Ranges": "bytes",
        "Content-Length": contentLength,
        "Content-Type": "video/mp4",
    }

    // HTTP Status 206 for Partial Content
    res.writeHead(206, headers)

    // create video read stream for this particular chunk
    const videoStream = fs.createReadStream(videoPath, { start, end })

    // Stream the video chunk to the client
    videoStream.pipe(res)
  }
})

/**
 * fetches all the reviews of a particular premium anime from the database
 */
 router.get('/panimereview/:panimeId', async (req, res, next) => {
  const panimeId = req.params.panimeId
  var ans = await repo.query('select * from premiumanimereview where panimeId = :panimeId', {
    panimeId: panimeId
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches the overall review only of a particular premium anime for an unlogged user
 */
 router.get('/panimereview/total/:panimeId', async (req, res, next) => {
  const panimeId = req.params.panimeId
  var ans = await repo.query('select sum(rating)/count(id) count from premiumanimereview where panimeId = :panimeId', {
    panimeId: panimeId
  })
  console.log(ans)

  res.send(ans.data[0])
})

/**
 * checks if a particular user has already reviewed a particular premium anime
 */
 router.get('/panimereview/:panimeId/:userId', async (req, res, next) => {
  const panimeId = req.params.panimeId
  const userId = req.params.userId
  var selectReview = 'select sum(rating)/count(id) count, '+
                     '(select id from premiumanimereview where panimeId=:panimeId and id=:userId) member, '+
                     '(select rating from premiumanimereview where panimeId=:panimeId and id=:userId) rating '+
                     'from premiumanimereview where panimeId=:panimeId group by panimeId'
  var ans = await repo.query(selectReview, {
    panimeId: panimeId,
    userId: userId
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * registers rating for a particular premium anime
 */
 router.post('/panimereview/:panimeId', async (req, res, next) => {
  const panimeId = req.params.panimeId
  const rating = req.body.rating
  const reviewText = req.body.reviewText
  const userid = req.body.userID

  var insertReview  = "declare \n" +
                       "begin \n" +
                       "insert into premiumanimereview(id, panimeid, text, rating, time) values(:userid, :panimeId, :reviewText, :rating, sysdate);\n" + 
                       "commit; \n" +
                       "end;"

  var ans = await repo.query(insertReview, {
      userid: userid,
      panimeId: panimeId,
      reviewText: reviewText,
      rating: rating,
  })
  console.log(ans)

  res.send(ans)
})

/**
 * fetches all the premium mangas from the database
 */
router.get('/pmanga', async (req, res, next) => {
  var ans = await repo.query('select * from premiummanga', {})
  console.log(ans)

  res.send(ans.data)
})


/**
 * fetches a particular premium manga with the parameter pmangaId from the database
 */
 router.get('/pmanga/:pmangaId', async (req, res, next) => {
  const pmangaId = req.params.pmangaId
  var ans = await repo.query('select pmangaid, title, "Release Date", synopsis, b.authorid, b.name from premiummanga a join author b on(pmangaId = :pmangaId and b.authorid=a.authorid)', {
    pmangaId: pmangaId
  })
  console.log(ans)
  
  res.send(ans.data[0])
}) 

/**
 * fetches all the chapter names of a particular premium manga from the database
 */
 router.get('/pmanga/chapters/:pmangaId', async (req, res, next) => {
  const pmangaId = req.params.pmangaId
  var ans = await repo.query('select chapter from premiummangachapters where pmangaId = :pmangaId', {
    pmangaId: pmangaId
  })
  console.log(ans)
  res.send(ans.data)
})

/**
 * fetches the pdf of the concerned chapter of a particular premium manga from the database
 */
 router.get('/pmanga/:pmangaId/:chapter', async (req, res, next) => {
  const pmangaId = req.params.pmangaId
  const chapter = req.params.chapter
  var data =fs.readFileSync('public/ppdf/'+pmangaId+'/'+chapter+'.pdf')
  res.contentType("application/pdf")
  res.send(data)
})

/**
 * fetches all the reviews of a particular premium manga from the database
 */
 router.get('/pmangareview/:pmangaId', async (req, res, next) => {
  const pmangaId = req.params.pmangaId
  var ans = await repo.query('select * from premiummangareview where pmangaId = :pmangaId', {
    pmangaId: pmangaId
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches the overall review only of a particular premium manga for an unlogged user
 */
 router.get('/pmangareview/total/:pmangaId', async (req, res, next) => {
  const pmangaId = req.params.pmangaId
  var ans = await repo.query('select sum(rating)/count(id) count from premiummangareview where pmangaId = :pmangaId', {
    pmangaId: pmangaId
  })
  console.log(ans)

  res.send(ans.data[0])
})

/**
 * checks if a particular user has already reviewed a particular premium manga
 */
 router.get('/pmangareview/:pmangaId/:userId', async (req, res, next) => {
  const pmangaId = req.params.pmangaId
  const userId = req.params.userId
  var selectReview = 'select sum(rating)/count(id) count, '+
                     '(select id from premiummangareview where pmangaId=:pmangaId and id=:userId) member, '+
                     '(select rating from premiummangareview where pmangaId=:pmangaId and id=:userId) rating '+
                     'from premiummangareview where pmangaId=:pmangaId group by pmangaId'
  var ans = await repo.query(selectReview, {
    pmangaId: pmangaId,
    userId: userId
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * registers rating for a particular premium manga
 */
 router.post('/pmangareview/:pmangaId', async (req, res, next) => {
  const pmangaId = req.params.pmangaId
  const rating = req.body.rating
  const reviewText = req.body.reviewText
  const userid = req.body.userID

  var insertReview  = "declare \n" +
                       "begin \n" +
                       "insert into premiummangareview(id, pmangaId, text, rating, time) values(:userid, :pmangaId, :reviewText, :rating, sysdate);\n" + 
                       "commit; \n" +
                       "end;"

  var ans = await repo.query(insertReview, {
      userid: userid,
      pmangaId: pmangaId,
      reviewText: reviewText,
      rating: rating,
  })
  console.log(ans)

  res.send(ans)
})

module.exports = router