var express = require('express')
var router = express.Router()
var Repository = require('../connection/query').Repository
var repo = new Repository()

/**
 * fetches wallet of a particular member
 */
router.get('/wallet/:id', async (req, res, next) => {
  var ans = await repo.query('select wallet from member where memberid=:id', {
    id: req.params.id
  })
  console.log(ans)

  res.send(ans.data[0])
})

/**
 * fetches all the members(non-admin) from the database
 */
router.get('/', async (req, res, next) => {
  var ans = await repo.query('select p.id ID, p.email EMAIL, m.wallet WALLET, is_premium(p.id) PREMIUM from person p join member m on (p.id=m.memberid)', {})
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches all the blogs of a particular admin
 */
router.get('/blogs/:id', async (req, res, next) => {
  var ans = await repo.query('select a.adminid adminid, b.blogid, b.title title, b.time time, b.text text from adminblog a join blog b on(adminid=:id and a.blogid=b.blogid)', { 
    id: req.params.id 
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches all the animes uploaded by a particular admin
 */
router.get('/anime/:id', async (req, res, next) => {
  var ans = await repo.query('select adminid, a.animeid animeid, title, "Release Date", synopsis from anime a join adminanime b on(adminid=:id and a.animeid=b.animeid)', {
    id: req.params.id
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches all the mangas uploaded by a particular admin
 */
 router.get('/manga/:id', async (req, res, next) => {
  var ans = await repo.query('select adminid, a.mangaid mangaid, title, "Release Date", synopsis from manga a join adminmanga b on(adminid=:id and a.mangaid=b.mangaid)', {
    id: req.params.id
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches all the premium animes uploaded by a particular admin
 */
 router.get('/panime/:id', async (req, res, next) => {
  var ans = await repo.query('select adminid, a.panimeid panimeid, title, "Release Date", synopsis from panime a join adminpanime b on(adminid=:id and a.panimeid=b.panimeid)', {
    id: req.params.id
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches all the premium mangas uploaded by a particular admin
 */
 router.get('/pmanga/:id', async (req, res, next) => {
  var ans = await repo.query('select adminid, a.pmangaid mangaid, title, "Release Date", synopsis from pmanga a join adminpmanga b on(adminid=:id and a.pmangaid=b.pmangaid)', {
    id: req.params.id
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches all the anime reviews of a particular user
 */
router.get('/reviews/anime/:id', async (req, res, next) => {
  var ans = await repo.query('select b.title, a.text, a.rating, a.time from animereview a join anime b on(a.animeid=b.animeid and id=:id)', {
    id: req.params.id
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches all the manga reviews of a particular user
 */
router.get('/reviews/manga/:id', async (req, res, next) => {
  var ans = await repo.query('select b.title, a.text, a.rating, a.time from mangareview a join manga b on(a.mangaid=b.mangaid and id=:id)', {
    id: req.params.id
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches all the premium anime reviews of a particular user
 */
 router.get('/reviews/panime/:id', async (req, res, next) => {
  var ans = await repo.query('select b.title, a.text, a.rating, a.time from premiumanimereview a join premiumanime b on(a.panimeid=b.panimeid and id=:id)', {
    id: req.params.id
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches all the premium manga reviews of a particular user
 */
 router.get('/reviews/pmanga/:id', async (req, res, next) => {
  var ans = await repo.query('select b.title, a.text, a.rating, a.time from premiummangareview a join premiummanga b on(a.pmangaid=b.pmangaid and id=:id)', {
    id: req.params.id
  })
  console.log(ans)

  res.send(ans.data)
})

/**
 * fetches all the plans of a particular member
 */
router.get('/plans/:id', async (req, res, next) => {
  var ans = await repo.query('select b.planrange, b.cost, startdate, enddate from memberplan a join plan b on(memberid=:id and a.planid=b.planid)', {
    id: req.params.id
  })
  console.log(ans)

  res.send(ans.data)
})

module.exports = router;
