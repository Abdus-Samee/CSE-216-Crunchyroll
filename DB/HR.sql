-- ----------------------------
-- Table structure for ADMIN
-- ----------------------------
DROP TABLE "HR"."ADMIN";
CREATE TABLE "HR"."ADMIN" (
  "ADMINID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ADMIN
-- ----------------------------
INSERT INTO "HR"."ADMIN" VALUES ('41');
INSERT INTO "HR"."ADMIN" VALUES ('2');

-- ----------------------------
-- Table structure for ADMINANIME
-- ----------------------------
DROP TABLE "HR"."ADMINANIME";
CREATE TABLE "HR"."ADMINANIME" (
  "ADMINID" NUMBER VISIBLE NOT NULL,
  "ANIMEID" NUMBER VISIBLE NOT NULL,
  "STATUS" VARCHAR2(10 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ADMINANIME
-- ----------------------------
INSERT INTO "HR"."ADMINANIME" VALUES ('2', '61', 'upload');
INSERT INTO "HR"."ADMINANIME" VALUES ('2', '21', 'upload');
INSERT INTO "HR"."ADMINANIME" VALUES ('41', '62', 'upload');
INSERT INTO "HR"."ADMINANIME" VALUES ('2', '1', 'upload');
INSERT INTO "HR"."ADMINANIME" VALUES ('2', '2', 'upload');

-- ----------------------------
-- Table structure for ADMINBLOG
-- ----------------------------
DROP TABLE "HR"."ADMINBLOG";
CREATE TABLE "HR"."ADMINBLOG" (
  "BLOGID" NUMBER VISIBLE NOT NULL,
  "ADMINID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ADMINBLOG
-- ----------------------------
INSERT INTO "HR"."ADMINBLOG" VALUES ('1', '2');
INSERT INTO "HR"."ADMINBLOG" VALUES ('21', '41');

-- ----------------------------
-- Table structure for ADMINMANGA
-- ----------------------------
DROP TABLE "HR"."ADMINMANGA";
CREATE TABLE "HR"."ADMINMANGA" (
  "ADMINID" NUMBER VISIBLE NOT NULL,
  "MANGAID" NUMBER VISIBLE NOT NULL,
  "STATUS" VARCHAR2(10 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ADMINMANGA
-- ----------------------------
INSERT INTO "HR"."ADMINMANGA" VALUES ('41', '42', 'upload');
INSERT INTO "HR"."ADMINMANGA" VALUES ('2', '1', 'upload');
INSERT INTO "HR"."ADMINMANGA" VALUES ('2', '41', 'upload');

-- ----------------------------
-- Table structure for ADMINPANIME
-- ----------------------------
DROP TABLE "HR"."ADMINPANIME";
CREATE TABLE "HR"."ADMINPANIME" (
  "ADMINID" NUMBER VISIBLE NOT NULL,
  "PANIMEID" NUMBER VISIBLE NOT NULL,
  "STATUS" VARCHAR2(10 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ADMINPANIME
-- ----------------------------
INSERT INTO "HR"."ADMINPANIME" VALUES ('2', '21', 'upload');
INSERT INTO "HR"."ADMINPANIME" VALUES ('2', '1', 'upload');
INSERT INTO "HR"."ADMINPANIME" VALUES ('41', '22', 'upload');

-- ----------------------------
-- Table structure for ADMINPMANGA
-- ----------------------------
DROP TABLE "HR"."ADMINPMANGA";
CREATE TABLE "HR"."ADMINPMANGA" (
  "ADMINID" NUMBER VISIBLE NOT NULL,
  "PMANGAID" NUMBER VISIBLE NOT NULL,
  "STATUS" VARCHAR2(10 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ADMINPMANGA
-- ----------------------------
INSERT INTO "HR"."ADMINPMANGA" VALUES ('41', '21', 'upload');
INSERT INTO "HR"."ADMINPMANGA" VALUES ('2', '1', 'upload');

-- ----------------------------
-- Table structure for ANIME
-- ----------------------------
DROP TABLE "HR"."ANIME";
CREATE TABLE "HR"."ANIME" (
  "ANIMEID" NUMBER VISIBLE NOT NULL,
  "TITLE" VARCHAR2(30 BYTE) VISIBLE NOT NULL,
  "Release Date" DATE VISIBLE NOT NULL,
  "SYNOPSIS" VARCHAR2(800 BYTE) VISIBLE,
  "PRODUCERID" NUMBER VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ANIME
-- ----------------------------
INSERT INTO "HR"."ANIME" VALUES ('1', 'Death Note', TO_DATE('2006-10-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'A high-school student discovers a supernatural notebook that grants its user the ability to kill.', '62');
INSERT INTO "HR"."ANIME" VALUES ('61', 'Hero Academia', TO_DATE('2017-12-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'The story follows Izuku Midoriya, a boy born without superpowers in a world where they have become a common place, but who still dreams of becoming a superhero himself.', '61');
INSERT INTO "HR"."ANIME" VALUES ('21', 'Shingeki no Kyojin', TO_DATE('2022-02-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Turning against his former allies and enemies alike, Eren Yeager sets a disastrous plan in motion. Under the guidance of the Beast Titan, Zeke, Eren takes extreme measures to end the ancient conflict between Marley and Eldia—but his true intentions remain a mystery. Delving deep into the past of his family, Eren fights to control his own destiny.', '21');
INSERT INTO "HR"."ANIME" VALUES ('62', 'Jujutsu Kaisen', TO_DATE('2020-06-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'A boy swallows a cursed talisman - the finger of a demon - and becomes cursed himself. He enters a shaman''s school to be able to locate the demon''s other body parts and thus exorcise himself.', '64');
INSERT INTO "HR"."ANIME" VALUES ('2', 'Your Name', TO_DATE('2022-01-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Story of a highschool boy in Tokyo and a countryside girl', '2');

-- ----------------------------
-- Table structure for ANIMEEPISODES
-- ----------------------------
DROP TABLE "HR"."ANIMEEPISODES";
CREATE TABLE "HR"."ANIMEEPISODES" (
  "ANIMEID" NUMBER VISIBLE NOT NULL,
  "EPISODE" VARCHAR2(200 BYTE) VISIBLE NOT NULL,
  "ROOT" VARCHAR2(20 BYTE) VISIBLE DEFAULT 'public/videos/',
  "EXTENSION" VARCHAR2(6 BYTE) VISIBLE DEFAULT '.mp4'
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ANIMEEPISODES
-- ----------------------------
INSERT INTO "HR"."ANIMEEPISODES" VALUES ('1', 'episode1', 'public/videos/', '.mp4');
INSERT INTO "HR"."ANIMEEPISODES" VALUES ('1', 'episode2', 'public/videos/', '.mp4');
INSERT INTO "HR"."ANIMEEPISODES" VALUES ('1', 'episode3', 'public/videos/', '.mp4');
INSERT INTO "HR"."ANIMEEPISODES" VALUES ('1', 'episode4', 'public/videos/', '.mp4');
INSERT INTO "HR"."ANIMEEPISODES" VALUES ('2', 'episode1', 'public/videos/', '.mp4');
INSERT INTO "HR"."ANIMEEPISODES" VALUES ('21', 'episode1', 'public/videos/', '.mp4');
INSERT INTO "HR"."ANIMEEPISODES" VALUES ('21', 'episode2', 'public/videos/', '.mp4');
INSERT INTO "HR"."ANIMEEPISODES" VALUES ('21', 'episode3', 'public/videos/', '.mp4');
INSERT INTO "HR"."ANIMEEPISODES" VALUES ('61', 'episode1', 'public/videos/', '.mp4');
INSERT INTO "HR"."ANIMEEPISODES" VALUES ('61', 'episode2', 'public/videos/', '.mp4');
INSERT INTO "HR"."ANIMEEPISODES" VALUES ('61', 'episode3', 'public/videos/', '.mp4');
INSERT INTO "HR"."ANIMEEPISODES" VALUES ('1', 'episode5', 'public/videos/', '.mp4');
INSERT INTO "HR"."ANIMEEPISODES" VALUES ('62', 'episode1', 'public/videos/', '.mp4');
INSERT INTO "HR"."ANIMEEPISODES" VALUES ('62', 'episode2', 'public/videos/', '.mp4');
INSERT INTO "HR"."ANIMEEPISODES" VALUES ('62', 'episode3', 'public/videos/', '.mp4');

-- ----------------------------
-- Table structure for ANIMEGENRE
-- ----------------------------
DROP TABLE "HR"."ANIMEGENRE";
CREATE TABLE "HR"."ANIMEGENRE" (
  "ANIMEID" NUMBER VISIBLE NOT NULL,
  "GENRENAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ANIMEGENRE
-- ----------------------------
INSERT INTO "HR"."ANIMEGENRE" VALUES ('1', 'Mystery');
INSERT INTO "HR"."ANIMEGENRE" VALUES ('1', 'Supernatural');
INSERT INTO "HR"."ANIMEGENRE" VALUES ('2', 'Comedy');
INSERT INTO "HR"."ANIMEGENRE" VALUES ('2', 'Romance');
INSERT INTO "HR"."ANIMEGENRE" VALUES ('2', 'Slice of Life');
INSERT INTO "HR"."ANIMEGENRE" VALUES ('21', 'Mystery');
INSERT INTO "HR"."ANIMEGENRE" VALUES ('61', 'Adventure');
INSERT INTO "HR"."ANIMEGENRE" VALUES ('61', 'Comedy');
INSERT INTO "HR"."ANIMEGENRE" VALUES ('61', 'Fantasy');
INSERT INTO "HR"."ANIMEGENRE" VALUES ('61', 'Supernatural');
INSERT INTO "HR"."ANIMEGENRE" VALUES ('62', 'Action');
INSERT INTO "HR"."ANIMEGENRE" VALUES ('62', 'Adventure');
INSERT INTO "HR"."ANIMEGENRE" VALUES ('62', 'Drama');
INSERT INTO "HR"."ANIMEGENRE" VALUES ('62', 'Fantasy');
INSERT INTO "HR"."ANIMEGENRE" VALUES ('62', 'Mystery');
INSERT INTO "HR"."ANIMEGENRE" VALUES ('62', 'Supernatural');

-- ----------------------------
-- Table structure for ANIMEREVIEW
-- ----------------------------
DROP TABLE "HR"."ANIMEREVIEW";
CREATE TABLE "HR"."ANIMEREVIEW" (
  "ID" NUMBER VISIBLE NOT NULL,
  "ANIMEID" NUMBER VISIBLE NOT NULL,
  "TEXT" VARCHAR2(100 BYTE) VISIBLE,
  "RATING" NUMBER VISIBLE NOT NULL,
  "TIME" DATE VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ANIMEREVIEW
-- ----------------------------
INSERT INTO "HR"."ANIMEREVIEW" VALUES ('1', '21', 'A good anime with nice & thrilling story!', '5', TO_DATE('2022-02-16 18:35:22', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "HR"."ANIMEREVIEW" VALUES ('2', '21', 'Unique plot and engaging storyline, although a bit complex', '4', TO_DATE('2022-02-16 20:09:40', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "HR"."ANIMEREVIEW" VALUES ('41', '1', 'An awesome anime with a unique storyline. Give it a try!', '4', TO_DATE('2022-02-22 22:36:29', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for AUTHOR
-- ----------------------------
DROP TABLE "HR"."AUTHOR";
CREATE TABLE "HR"."AUTHOR" (
  "AUTHORID" NUMBER VISIBLE NOT NULL,
  "NAME" VARCHAR2(20 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of AUTHOR
-- ----------------------------
INSERT INTO "HR"."AUTHOR" VALUES ('1', 'Eiichiro Oda');
INSERT INTO "HR"."AUTHOR" VALUES ('21', 'Ishida');
INSERT INTO "HR"."AUTHOR" VALUES ('42', 'Tite Kubo');
INSERT INTO "HR"."AUTHOR" VALUES ('43', 'Takehito Inoue');
INSERT INTO "HR"."AUTHOR" VALUES ('22', 'Takeshi Furusawa');
INSERT INTO "HR"."AUTHOR" VALUES ('41', 'Makoto Yukimura');

-- ----------------------------
-- Table structure for BLOG
-- ----------------------------
DROP TABLE "HR"."BLOG";
CREATE TABLE "HR"."BLOG" (
  "BLOGID" NUMBER VISIBLE NOT NULL,
  "TITLE" VARCHAR2(50 BYTE) VISIBLE NOT NULL,
  "TIME" DATE VISIBLE,
  "TEXT" VARCHAR2(4000 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of BLOG
-- ----------------------------
INSERT INTO "HR"."BLOG" VALUES ('1', 'Test blog', TO_DATE('2022-02-04 23:31:58', 'SYYYY-MM-DD HH24:MI:SS'), '<p>Testing blog submission... <strong>1234</strong></p>');
INSERT INTO "HR"."BLOG" VALUES ('21', 'Is Reiner true heart of AOT?', TO_DATE('2022-02-22 22:44:05', 'SYYYY-MM-DD HH24:MI:SS'), '<p><span style="background-color: rgb(255, 255, 255); color: rgb(63, 63, 63);">At every stage of the story, Reiner represents the beating heart of strength at the core of&nbsp;</span><strong style="background-color: rgb(255, 255, 255); color: rgb(63, 63, 63);"><em>Attack</em></strong><span style="background-color: rgb(255, 255, 255); color: rgb(63, 63, 63);">&nbsp;</span><strong style="background-color: rgb(255, 255, 255); color: rgb(63, 63, 63);"><em>on Titan</em></strong><span style="background-color: rgb(255, 255, 255); color: rgb(63, 63, 63);">.</span></p><p><span style="background-color: rgb(255, 255, 255); color: rgb(63, 63, 63);"><span class="ql-cursor">﻿</span>When Reiner is first introduced, we see him as a large, intimidating boy, a presence we can''t ignore. He stands tall, one of the most outwardly confident of the cadets at the start of the story; at a time when the characters are still finding their footing, preparing to take on the ferocious Titans themselves and even dying left and right, Reiner seems almost unfazed by the danger around him. He''s a pillar the cadets can turn to in hard times, like a big brother for the rest of the kids. Where the other more mature characters are either emotionally distant, like Annie, or too aloof to be figures of strength, like Ymir, Reiner is someone characters like Eren can and do turn to for support when they''re feeling weak. In early&nbsp;</span><strong style="background-color: rgb(255, 255, 255); color: rgb(63, 63, 63);"><em>Attack</em></strong><span style="background-color: rgb(255, 255, 255); color: rgb(63, 63, 63);">&nbsp;</span><strong style="background-color: rgb(255, 255, 255); color: rgb(63, 63, 63);"><em>on</em></strong><span style="background-color: rgb(255, 255, 255); color: rgb(63, 63, 63);">&nbsp;</span><strong style="background-color: rgb(255, 255, 255); color: rgb(63, 63, 63);"><em>Titan</em></strong><span style="background-color: rgb(255, 255, 255); color: rgb(63, 63, 63);">, Reiner represents the kind of tenacity one needs to survive in a harsh world like the one inside the Walls, and that''s exactly what we need at a time when we believe the danger is as simple as the Titans.</span></p>');

-- ----------------------------
-- Table structure for COMMENTS
-- ----------------------------
DROP TABLE "HR"."COMMENTS";
CREATE TABLE "HR"."COMMENTS" (
  "COMMENTID" NUMBER VISIBLE DEFAULT "HR"."ISEQ$$_79582".nextval NOT NULL,
  "BLOGID" NUMBER VISIBLE NOT NULL,
  "TEXT" VARCHAR2(30 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of COMMENTS
-- ----------------------------
INSERT INTO "HR"."COMMENTS" VALUES ('3', '1', 'Test Comment 2');
INSERT INTO "HR"."COMMENTS" VALUES ('4', '1', 'test comment 3');
INSERT INTO "HR"."COMMENTS" VALUES ('1', '1', 'test comment.');

-- ----------------------------
-- Table structure for GENRE
-- ----------------------------
DROP TABLE "HR"."GENRE";
CREATE TABLE "HR"."GENRE" (
  "GENRENAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "DESCRIPTION" VARCHAR2(200 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of GENRE
-- ----------------------------
INSERT INTO "HR"."GENRE" VALUES ('Adventure', 'Thrilling and exciting stories which will rile you up');
INSERT INTO "HR"."GENRE" VALUES ('Slice of Life', 'Telling stories related to life which are simple, yet soothing');
INSERT INTO "HR"."GENRE" VALUES ('Supernatural', 'Unexpected and unnatural phenomenons occur here everytime and everywhere');
INSERT INTO "HR"."GENRE" VALUES ('Romance', 'Tells romantic stories of the leads');
INSERT INTO "HR"."GENRE" VALUES ('Action', 'Stories with loads of fighting scenes and heroes!');
INSERT INTO "HR"."GENRE" VALUES ('Comedy', 'Animes and movies which offer a bit more humour than the other ones');
INSERT INTO "HR"."GENRE" VALUES ('Drama', 'Stories here are build up following a series of events');
INSERT INTO "HR"."GENRE" VALUES ('Fantasy', 'Incidents here occur which do not happen in day to day life');
INSERT INTO "HR"."GENRE" VALUES ('Horror', 'A genre of speculative fiction which is intended to frighten, scare, or disgust');
INSERT INTO "HR"."GENRE" VALUES ('Mystery', 'Story revolving around a secret or mystery that the protagonist needs to solve');

-- ----------------------------
-- Table structure for MANGA
-- ----------------------------
DROP TABLE "HR"."MANGA";
CREATE TABLE "HR"."MANGA" (
  "MANGAID" NUMBER VISIBLE NOT NULL,
  "TITLE" VARCHAR2(30 BYTE) VISIBLE NOT NULL,
  "Release Date" DATE VISIBLE NOT NULL,
  "SYNOPSIS" VARCHAR2(800 BYTE) VISIBLE,
  "AUTHORID" NUMBER VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MANGA
-- ----------------------------
INSERT INTO "HR"."MANGA" VALUES ('1', 'One Piece', TO_DATE('2022-01-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Adventurous :)', '1');
INSERT INTO "HR"."MANGA" VALUES ('42', 'Bleach', TO_DATE('2001-07-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'The adventures of the hot-headed teenager Ichigo Kurosaki, who inherits his parents'' destiny after he obtains the powers of a Soul Reaper at death personification similar to the Grim Reaper from another Soul Reaper, Rukia Kuchiki.', '42');
INSERT INTO "HR"."MANGA" VALUES ('21', 'Tokyo Ghoul', TO_DATE('2022-02-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'A sinister threat is invading Tokyo: flesh-eating "ghouls" who appear identical to humans and blend into their population. The story continues as reserved college student Ken Kaneki gets involved in series of events with ghouls', '21');
INSERT INTO "HR"."MANGA" VALUES ('41', 'Vinland Saga', TO_DATE('2005-01-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Thorfinn pursues a journey with his father''s killer in order to take revenge and end his life in a duel as an honourable warrior and pay his father a homage. A young man named Thorfinn finds himself in a quest for revenge against his father''s killer', '41');

-- ----------------------------
-- Table structure for MANGACHAPTERS
-- ----------------------------
DROP TABLE "HR"."MANGACHAPTERS";
CREATE TABLE "HR"."MANGACHAPTERS" (
  "MANGAID" NUMBER VISIBLE NOT NULL,
  "CHAPTER" VARCHAR2(200 BYTE) VISIBLE NOT NULL,
  "ROOT" VARCHAR2(20 BYTE) VISIBLE DEFAULT 'public/pdf/',
  "EXTENSION" VARCHAR2(6 BYTE) VISIBLE DEFAULT '.pdf'
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MANGACHAPTERS
-- ----------------------------
INSERT INTO "HR"."MANGACHAPTERS" VALUES ('42', 'chapter1', 'public/pdf/', '.pdf');
INSERT INTO "HR"."MANGACHAPTERS" VALUES ('42', 'chapter2', 'public/pdf/', '.pdf');
INSERT INTO "HR"."MANGACHAPTERS" VALUES ('42', 'chapter3', 'public/pdf/', '.pdf');
INSERT INTO "HR"."MANGACHAPTERS" VALUES ('1', 'chapter1', 'public/pdf/', '.pdf');
INSERT INTO "HR"."MANGACHAPTERS" VALUES ('1', 'chapter2', 'public/pdf/', '.pdf');
INSERT INTO "HR"."MANGACHAPTERS" VALUES ('1', 'chapter3', 'public/pdf/', '.pdf');
INSERT INTO "HR"."MANGACHAPTERS" VALUES ('21', 'chapter1', 'public/pdf/', '.pdf');
INSERT INTO "HR"."MANGACHAPTERS" VALUES ('21', 'chapter2', 'public/pdf/', '.pdf');
INSERT INTO "HR"."MANGACHAPTERS" VALUES ('21', 'chapter3', 'public/pdf/', '.pdf');
INSERT INTO "HR"."MANGACHAPTERS" VALUES ('41', 'chapter1', 'public/pdf/', '.pdf');
INSERT INTO "HR"."MANGACHAPTERS" VALUES ('41', 'chapter2', 'public/pdf/', '.pdf');
INSERT INTO "HR"."MANGACHAPTERS" VALUES ('41', 'chapter3', 'public/pdf/', '.pdf');

-- ----------------------------
-- Table structure for MANGAGENRE
-- ----------------------------
DROP TABLE "HR"."MANGAGENRE";
CREATE TABLE "HR"."MANGAGENRE" (
  "MANGAID" NUMBER VISIBLE NOT NULL,
  "GENRENAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MANGAGENRE
-- ----------------------------
INSERT INTO "HR"."MANGAGENRE" VALUES ('1', 'Action');
INSERT INTO "HR"."MANGAGENRE" VALUES ('1', 'Comedy');
INSERT INTO "HR"."MANGAGENRE" VALUES ('1', 'Drama');
INSERT INTO "HR"."MANGAGENRE" VALUES ('1', 'Fantasy');
INSERT INTO "HR"."MANGAGENRE" VALUES ('21', 'Action');
INSERT INTO "HR"."MANGAGENRE" VALUES ('21', 'Drama');
INSERT INTO "HR"."MANGAGENRE" VALUES ('21', 'Horror');
INSERT INTO "HR"."MANGAGENRE" VALUES ('21', 'Mystery');
INSERT INTO "HR"."MANGAGENRE" VALUES ('21', 'Supernatural');
INSERT INTO "HR"."MANGAGENRE" VALUES ('41', 'Action');
INSERT INTO "HR"."MANGAGENRE" VALUES ('41', 'Adventure');
INSERT INTO "HR"."MANGAGENRE" VALUES ('41', 'Mystery');
INSERT INTO "HR"."MANGAGENRE" VALUES ('42', 'Action');
INSERT INTO "HR"."MANGAGENRE" VALUES ('42', 'Adventure');
INSERT INTO "HR"."MANGAGENRE" VALUES ('42', 'Fantasy');
INSERT INTO "HR"."MANGAGENRE" VALUES ('42', 'Supernatural');

-- ----------------------------
-- Table structure for MANGAREVIEW
-- ----------------------------
DROP TABLE "HR"."MANGAREVIEW";
CREATE TABLE "HR"."MANGAREVIEW" (
  "ID" NUMBER VISIBLE NOT NULL,
  "MANGAID" NUMBER VISIBLE NOT NULL,
  "TEXT" VARCHAR2(100 BYTE) VISIBLE,
  "RATING" NUMBER VISIBLE NOT NULL,
  "TIME" DATE VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MANGAREVIEW
-- ----------------------------

-- ----------------------------
-- Table structure for MEMBER
-- ----------------------------
DROP TABLE "HR"."MEMBER";
CREATE TABLE "HR"."MEMBER" (
  "MEMBERID" NUMBER VISIBLE NOT NULL,
  "WALLET" NUMBER VISIBLE DEFAULT 500
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MEMBER
-- ----------------------------
INSERT INTO "HR"."MEMBER" VALUES ('3', '475');
INSERT INTO "HR"."MEMBER" VALUES ('15', '475');
INSERT INTO "HR"."MEMBER" VALUES ('42', '425');
INSERT INTO "HR"."MEMBER" VALUES ('1', '500');
INSERT INTO "HR"."MEMBER" VALUES ('48', '425');
INSERT INTO "HR"."MEMBER" VALUES ('49', '500');

-- ----------------------------
-- Table structure for MEMBERPLAN
-- ----------------------------
DROP TABLE "HR"."MEMBERPLAN";
CREATE TABLE "HR"."MEMBERPLAN" (
  "PLANID" NUMBER VISIBLE NOT NULL,
  "MEMBERID" NUMBER VISIBLE NOT NULL,
  "STARTDATE" DATE VISIBLE NOT NULL,
  "ENDDATE" DATE VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MEMBERPLAN
-- ----------------------------
INSERT INTO "HR"."MEMBERPLAN" VALUES ('2', '48', TO_DATE('2022-02-23 14:00:09', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-08-23 14:00:09', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "HR"."MEMBERPLAN" VALUES ('2', '42', TO_DATE('2022-02-23 13:52:20', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-08-23 13:52:20', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "HR"."MEMBERPLAN" VALUES ('1', '3', TO_DATE('2022-02-23 15:04:22', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-03-23 15:04:22', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "HR"."MEMBERPLAN" VALUES ('1', '15', TO_DATE('2022-02-19 02:43:23', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-03-19 02:43:23', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for PERSON
-- ----------------------------
DROP TABLE "HR"."PERSON";
CREATE TABLE "HR"."PERSON" (
  "ID" NUMBER VISIBLE NOT NULL,
  "EMAIL" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "PASSWORD" VARCHAR2(30 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PERSON
-- ----------------------------
INSERT INTO "HR"."PERSON" VALUES ('3', 'abdus@gmail.com', 'abdus1234');
INSERT INTO "HR"."PERSON" VALUES ('41', 'admin@gmail.com', 'admin1234');
INSERT INTO "HR"."PERSON" VALUES ('15', 'nehal@gmail.com', 'nehal1234');
INSERT INTO "HR"."PERSON" VALUES ('42', 'test1@gmail.com', 'test1pass');
INSERT INTO "HR"."PERSON" VALUES ('1', 'test@gmail.com', 'testpassword');
INSERT INTO "HR"."PERSON" VALUES ('2', 'samee@gmail.com', 'samee1234');
INSERT INTO "HR"."PERSON" VALUES ('48', 'recenttest@test.com', 'recent1234');
INSERT INTO "HR"."PERSON" VALUES ('49', 'test21@gmail.com', 'test21pass');

-- ----------------------------
-- Table structure for PLAN
-- ----------------------------
DROP TABLE "HR"."PLAN";
CREATE TABLE "HR"."PLAN" (
  "PLANID" NUMBER VISIBLE NOT NULL,
  "PLANRANGE" NUMBER VISIBLE NOT NULL,
  "COST" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PLAN
-- ----------------------------
INSERT INTO "HR"."PLAN" VALUES ('1', '1', '25');
INSERT INTO "HR"."PLAN" VALUES ('2', '6', '75');
INSERT INTO "HR"."PLAN" VALUES ('3', '12', '100');

-- ----------------------------
-- Table structure for PREMIUMANIME
-- ----------------------------
DROP TABLE "HR"."PREMIUMANIME";
CREATE TABLE "HR"."PREMIUMANIME" (
  "PANIMEID" NUMBER VISIBLE NOT NULL,
  "TITLE" VARCHAR2(30 BYTE) VISIBLE NOT NULL,
  "Release Date" DATE VISIBLE NOT NULL,
  "SYNOPSIS" VARCHAR2(800 BYTE) VISIBLE,
  "PRODUCERID" NUMBER VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PREMIUMANIME
-- ----------------------------
INSERT INTO "HR"."PREMIUMANIME" VALUES ('21', 'Tonari no Totoro', TO_DATE('1988-12-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'When two girls move to the country to be near their ailing mother, they have adventures with the wondrous forest spirits who live nearby', '1');
INSERT INTO "HR"."PREMIUMANIME" VALUES ('1', 'Naruto the Last Movie', TO_DATE('2014-12-06 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Two years after the Fourth Shinobi World War, Naruto must stop Toneri Otsutsuki, a descendent of Hamura Otsutsuki, after Toneri causes the moon to descend toward Earth.', '41');
INSERT INTO "HR"."PREMIUMANIME" VALUES ('22', 'Grave of the Fireflies', TO_DATE('1988-02-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'A young boy and his little sister struggle to survive in Japan during the World War II.', '63');

-- ----------------------------
-- Table structure for PREMIUMANIMEEPISODES
-- ----------------------------
DROP TABLE "HR"."PREMIUMANIMEEPISODES";
CREATE TABLE "HR"."PREMIUMANIMEEPISODES" (
  "PANIMEID" NUMBER VISIBLE NOT NULL,
  "EPISODE" VARCHAR2(200 BYTE) VISIBLE NOT NULL,
  "ROOT" VARCHAR2(20 BYTE) VISIBLE DEFAULT 'public/pvideos/',
  "EXTENSION" VARCHAR2(6 BYTE) VISIBLE DEFAULT '.mp4'
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PREMIUMANIMEEPISODES
-- ----------------------------
INSERT INTO "HR"."PREMIUMANIMEEPISODES" VALUES ('21', 'episode1', 'public/pvideos/', '.mp4');
INSERT INTO "HR"."PREMIUMANIMEEPISODES" VALUES ('1', 'episode1', 'public/pvideos/', '.mp4');
INSERT INTO "HR"."PREMIUMANIMEEPISODES" VALUES ('22', 'episode1', 'public/pvideos/', '.mp4');

-- ----------------------------
-- Table structure for PREMIUMANIMEGENRE
-- ----------------------------
DROP TABLE "HR"."PREMIUMANIMEGENRE";
CREATE TABLE "HR"."PREMIUMANIMEGENRE" (
  "PANIMEID" NUMBER VISIBLE NOT NULL,
  "GENRENAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PREMIUMANIMEGENRE
-- ----------------------------
INSERT INTO "HR"."PREMIUMANIMEGENRE" VALUES ('1', 'Adventure');
INSERT INTO "HR"."PREMIUMANIMEGENRE" VALUES ('1', 'Supernatural');
INSERT INTO "HR"."PREMIUMANIMEGENRE" VALUES ('21', 'Adventure');
INSERT INTO "HR"."PREMIUMANIMEGENRE" VALUES ('21', 'Supernatural');
INSERT INTO "HR"."PREMIUMANIMEGENRE" VALUES ('22', 'Adventure');
INSERT INTO "HR"."PREMIUMANIMEGENRE" VALUES ('22', 'Drama');

-- ----------------------------
-- Table structure for PREMIUMANIMEREVIEW
-- ----------------------------
DROP TABLE "HR"."PREMIUMANIMEREVIEW";
CREATE TABLE "HR"."PREMIUMANIMEREVIEW" (
  "ID" NUMBER VISIBLE NOT NULL,
  "PANIMEID" NUMBER VISIBLE NOT NULL,
  "TEXT" VARCHAR2(100 BYTE) VISIBLE,
  "RATING" NUMBER VISIBLE NOT NULL,
  "TIME" DATE VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PREMIUMANIMEREVIEW
-- ----------------------------
INSERT INTO "HR"."PREMIUMANIMEREVIEW" VALUES ('3', '1', 'Nice one!', '4', TO_DATE('2022-02-23 15:04:51', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for PREMIUMMANGA
-- ----------------------------
DROP TABLE "HR"."PREMIUMMANGA";
CREATE TABLE "HR"."PREMIUMMANGA" (
  "PMANGAID" NUMBER VISIBLE NOT NULL,
  "TITLE" VARCHAR2(30 BYTE) VISIBLE NOT NULL,
  "Release Date" DATE VISIBLE NOT NULL,
  "SYNOPSIS" VARCHAR2(800 BYTE) VISIBLE,
  "AUTHORID" NUMBER VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PREMIUMMANGA
-- ----------------------------
INSERT INTO "HR"."PREMIUMMANGA" VALUES ('21', 'Slam Dunk', TO_DATE('1990-01-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'About Sakuragi Hanamichi, a freshman of Shohoku High School, who joins the basketball team because of the girl he has a crush on, Haruko. Although he is newbie in this sport, he is no ordinary basketball player.', '43');
INSERT INTO "HR"."PREMIUMMANGA" VALUES ('1', 'ReLife', TO_DATE('2013-10-12 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'A young man, failing at life, is offered a new start as a 10 years younger high school student. Arata Kaizaki decides to take part in a research program "ReLIFE"', '22');

-- ----------------------------
-- Table structure for PREMIUMMANGACHAPTERS
-- ----------------------------
DROP TABLE "HR"."PREMIUMMANGACHAPTERS";
CREATE TABLE "HR"."PREMIUMMANGACHAPTERS" (
  "PMANGAID" NUMBER VISIBLE NOT NULL,
  "CHAPTER" VARCHAR2(200 BYTE) VISIBLE NOT NULL,
  "ROOT" VARCHAR2(20 BYTE) VISIBLE DEFAULT 'public/ppdf/',
  "EXTENSION" VARCHAR2(6 BYTE) VISIBLE DEFAULT '.pdf'
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PREMIUMMANGACHAPTERS
-- ----------------------------
INSERT INTO "HR"."PREMIUMMANGACHAPTERS" VALUES ('21', 'chapter1', 'public/ppdf/', '.pdf');
INSERT INTO "HR"."PREMIUMMANGACHAPTERS" VALUES ('21', 'chapter2', 'public/ppdf/', '.pdf');
INSERT INTO "HR"."PREMIUMMANGACHAPTERS" VALUES ('21', 'chapter3', 'public/ppdf/', '.pdf');
INSERT INTO "HR"."PREMIUMMANGACHAPTERS" VALUES ('1', 'chapter1', 'public/ppdf/', '.pdf');
INSERT INTO "HR"."PREMIUMMANGACHAPTERS" VALUES ('1', 'chapter2', 'public/ppdf/', '.pdf');
INSERT INTO "HR"."PREMIUMMANGACHAPTERS" VALUES ('1', 'chapter3', 'public/ppdf/', '.pdf');

-- ----------------------------
-- Table structure for PREMIUMMANGAGENRE
-- ----------------------------
DROP TABLE "HR"."PREMIUMMANGAGENRE";
CREATE TABLE "HR"."PREMIUMMANGAGENRE" (
  "PMANGAID" NUMBER VISIBLE NOT NULL,
  "GENRENAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PREMIUMMANGAGENRE
-- ----------------------------
INSERT INTO "HR"."PREMIUMMANGAGENRE" VALUES ('1', 'Drama');
INSERT INTO "HR"."PREMIUMMANGAGENRE" VALUES ('1', 'Romance');
INSERT INTO "HR"."PREMIUMMANGAGENRE" VALUES ('1', 'Slice of Life');
INSERT INTO "HR"."PREMIUMMANGAGENRE" VALUES ('21', 'Comedy');
INSERT INTO "HR"."PREMIUMMANGAGENRE" VALUES ('21', 'Drama');
INSERT INTO "HR"."PREMIUMMANGAGENRE" VALUES ('21', 'Slice of Life');

-- ----------------------------
-- Table structure for PREMIUMMANGAREVIEW
-- ----------------------------
DROP TABLE "HR"."PREMIUMMANGAREVIEW";
CREATE TABLE "HR"."PREMIUMMANGAREVIEW" (
  "ID" NUMBER VISIBLE NOT NULL,
  "PMANGAID" NUMBER VISIBLE NOT NULL,
  "TEXT" VARCHAR2(100 BYTE) VISIBLE,
  "RATING" NUMBER VISIBLE NOT NULL,
  "TIME" DATE VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PREMIUMMANGAREVIEW
-- ----------------------------

-- ----------------------------
-- Table structure for PRODUCER
-- ----------------------------
DROP TABLE "HR"."PRODUCER";
CREATE TABLE "HR"."PRODUCER" (
  "PRODUCERID" NUMBER VISIBLE NOT NULL,
  "NAME" VARCHAR2(20 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PRODUCER
-- ----------------------------
INSERT INTO "HR"."PRODUCER" VALUES ('2', 'Makoto Shinkai');
INSERT INTO "HR"."PRODUCER" VALUES ('63', 'Isao Takahata');
INSERT INTO "HR"."PRODUCER" VALUES ('64', 'Gege Akutami');
INSERT INTO "HR"."PRODUCER" VALUES ('1', 'Hayao Miyazaki');
INSERT INTO "HR"."PRODUCER" VALUES ('21', 'Mappa');
INSERT INTO "HR"."PRODUCER" VALUES ('41', 'Tsueno Kobayashi');
INSERT INTO "HR"."PRODUCER" VALUES ('61', 'Kohei Horikoshi');
INSERT INTO "HR"."PRODUCER" VALUES ('62', 'Tsugumi Ohba');

-- ----------------------------
-- Function structure for BLOG_PROC
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "HR"."BLOG_PROC" AS
BEGIN
	INSERT INTO Blog(Title, Time, Text) VALUES(Ttl, SYSDATE, Txt);
	SELECT BlogID INTO blogid FROM Blog WHERE Title = Title AND Text = Txt;
	INSERT INTO AdminBlog(BlogID, AdminID) VALUES(blogid, Id);
	COMMIT;
	ans := 1;
EXCEPTION
	WHEN NO_DATA_FOUND THEN
		ans := -1;
	WHEN OTHERS THEN
		ans := -2;
END;
/

-- ----------------------------
-- Function structure for BUY_PLAN
-- ----------------------------
CREATE OR REPLACE
FUNCTION "HR"."BUY_PLAN" AS
BEGIN
	IF IS_PREMIUM(MemID) = 0 THEN
		SELECT WALLET INTO available_wallet
		FROM MEMBER
		WHERE MEMBERID = MemID;
	
		SELECT COST INTO planCost
		FROM PLAN
		WHERE PLANID = pID;
		
		SELECT PLANRANGE INTO months_to_add
		FROM PLAN
		WHERE PLANID = pID;
		
		IF available_wallet >= planCost THEN
			INSERT INTO MEMBERPLAN(MEMBERID,PLANID,STARTDATE,ENDDATE)  VALUES(MemID, pID,SYSDATE, ADD_MONTHS(sysdate, months_to_add));
	
			UPDATE MEMBER 
			SET WALLET = WALLET - planCost
			WHERE MEMBERID = MemID;
			COMMIT;
			RETURN 1;
		
		ELSE
			RETURN 0;
		END IF;
		
		
	ELSIF IS_PREMIUM(MemID) = 1 THEN
		RETURN 0;
	ELSE 
		RETURN -1;
	END IF;
END;
/

-- ----------------------------
-- Function structure for GET
-- ----------------------------
CREATE OR REPLACE
FUNCTION "HR"."GET" AS
BEGIN
	select count(*) into mc from person p join member m on(p.id=m.memberid) where email=e and password=p;
	select count(*) into ac from person p join admin a on(p.id=a.adminid) where email=e and password=p;
	if mc <> 0 then 
		select id into ans from person p join member m on(p.id=m.memberid) where email=e and password=p;
		msg := 'member';
	elsif ac <> 0 then
		select id into ans from person p join admin a on(p.id=a.adminid) where email=e and password=p;
		msg := 'admin';
	else 
		ans := -1;
		msg := '';
	end if;
	return TO_CHAR(ans) || ' ' || msg;
END;
/

-- ----------------------------
-- Function structure for IS_PREMIUM
-- ----------------------------
CREATE OR REPLACE
FUNCTION "HR"."IS_PREMIUM" AS
BEGIN	
	bool := 0;
	SELECT ENDDATE INTO Exp_date
	FROM MEMBERPLAN
	WHERE MEMBERID = MemID;
	
	IF Exp_date >= SYSDATE THEN
	bool := 1;
	ELSE
	bool := 0;
	END IF;
	
	RETURN bool;
EXCEPTION
	WHEN NO_DATA_FOUND THEN
		RETURN 0;	
	WHEN others THEN
		RETURN -1;
END;
/

-- ----------------------------
-- Sequence structure for ANIME_SEQ
-- ----------------------------
DROP SEQUENCE "HR"."ANIME_SEQ";
CREATE SEQUENCE "HR"."ANIME_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for AUTHOR_SEQ
-- ----------------------------
DROP SEQUENCE "HR"."AUTHOR_SEQ";
CREATE SEQUENCE "HR"."AUTHOR_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for AUTH_SEQ
-- ----------------------------
DROP SEQUENCE "HR"."AUTH_SEQ";
CREATE SEQUENCE "HR"."AUTH_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for BLOG_SEQ
-- ----------------------------
DROP SEQUENCE "HR"."BLOG_SEQ";
CREATE SEQUENCE "HR"."BLOG_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for DEPARTMENTS_SEQ
-- ----------------------------
DROP SEQUENCE "HR"."DEPARTMENTS_SEQ";
CREATE SEQUENCE "HR"."DEPARTMENTS_SEQ" MINVALUE 1 MAXVALUE 9990 INCREMENT BY 10 NOCACHE;

-- ----------------------------
-- Sequence structure for EMPLOYEES_SEQ
-- ----------------------------
DROP SEQUENCE "HR"."EMPLOYEES_SEQ";
CREATE SEQUENCE "HR"."EMPLOYEES_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 NOCACHE;

-- ----------------------------
-- Sequence structure for ISEQ$$_79582
-- ----------------------------
DROP SEQUENCE "HR"."ISEQ$$_79582";
CREATE SEQUENCE "HR"."ISEQ$$_79582" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for LOCATIONS_SEQ
-- ----------------------------
DROP SEQUENCE "HR"."LOCATIONS_SEQ";
CREATE SEQUENCE "HR"."LOCATIONS_SEQ" MINVALUE 1 MAXVALUE 9900 INCREMENT BY 100 NOCACHE;

-- ----------------------------
-- Sequence structure for MANGA_SEQ
-- ----------------------------
DROP SEQUENCE "HR"."MANGA_SEQ";
CREATE SEQUENCE "HR"."MANGA_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for PANIME_SEQ
-- ----------------------------
DROP SEQUENCE "HR"."PANIME_SEQ";
CREATE SEQUENCE "HR"."PANIME_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for PERSON_SEQ
-- ----------------------------
DROP SEQUENCE "HR"."PERSON_SEQ";
CREATE SEQUENCE "HR"."PERSON_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for PLAN_SEQ
-- ----------------------------
DROP SEQUENCE "HR"."PLAN_SEQ";
CREATE SEQUENCE "HR"."PLAN_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for PMANGA_SEQ
-- ----------------------------
DROP SEQUENCE "HR"."PMANGA_SEQ";
CREATE SEQUENCE "HR"."PMANGA_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for PROD_SEQ
-- ----------------------------
DROP SEQUENCE "HR"."PROD_SEQ";
CREATE SEQUENCE "HR"."PROD_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Checks structure for table ADMIN
-- ----------------------------
ALTER TABLE "HR"."ADMIN" ADD CONSTRAINT "SYS_C007919" CHECK ("ADMINID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ADMINANIME
-- ----------------------------
ALTER TABLE "HR"."ADMINANIME" ADD CONSTRAINT "SYS_C008023" PRIMARY KEY ("ADMINID", "ANIMEID");

-- ----------------------------
-- Checks structure for table ADMINANIME
-- ----------------------------
ALTER TABLE "HR"."ADMINANIME" ADD CONSTRAINT "SYS_C008020" CHECK ("ADMINID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."ADMINANIME" ADD CONSTRAINT "SYS_C008021" CHECK ("ANIMEID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."ADMINANIME" ADD CONSTRAINT "SYS_C008022" CHECK ("STATUS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ADMINBLOG
-- ----------------------------
ALTER TABLE "HR"."ADMINBLOG" ADD CONSTRAINT "SYS_C008006" PRIMARY KEY ("BLOGID", "ADMINID");

-- ----------------------------
-- Checks structure for table ADMINBLOG
-- ----------------------------
ALTER TABLE "HR"."ADMINBLOG" ADD CONSTRAINT "SYS_C008004" CHECK ("BLOGID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."ADMINBLOG" ADD CONSTRAINT "SYS_C008005" CHECK ("ADMINID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ADMINMANGA
-- ----------------------------
ALTER TABLE "HR"."ADMINMANGA" ADD CONSTRAINT "SYS_C008015" PRIMARY KEY ("ADMINID", "MANGAID");

-- ----------------------------
-- Checks structure for table ADMINMANGA
-- ----------------------------
ALTER TABLE "HR"."ADMINMANGA" ADD CONSTRAINT "SYS_C008012" CHECK ("ADMINID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."ADMINMANGA" ADD CONSTRAINT "SYS_C008013" CHECK ("MANGAID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."ADMINMANGA" ADD CONSTRAINT "SYS_C008014" CHECK ("STATUS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ADMINPANIME
-- ----------------------------
ALTER TABLE "HR"."ADMINPANIME" ADD CONSTRAINT "SYS_C008027" PRIMARY KEY ("ADMINID", "PANIMEID");

-- ----------------------------
-- Checks structure for table ADMINPANIME
-- ----------------------------
ALTER TABLE "HR"."ADMINPANIME" ADD CONSTRAINT "SYS_C008024" CHECK ("ADMINID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."ADMINPANIME" ADD CONSTRAINT "SYS_C008025" CHECK ("PANIMEID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."ADMINPANIME" ADD CONSTRAINT "SYS_C008026" CHECK ("STATUS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ADMINPMANGA
-- ----------------------------
ALTER TABLE "HR"."ADMINPMANGA" ADD CONSTRAINT "SYS_C008019" PRIMARY KEY ("ADMINID", "PMANGAID");

-- ----------------------------
-- Checks structure for table ADMINPMANGA
-- ----------------------------
ALTER TABLE "HR"."ADMINPMANGA" ADD CONSTRAINT "SYS_C008016" CHECK ("ADMINID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."ADMINPMANGA" ADD CONSTRAINT "SYS_C008017" CHECK ("PMANGAID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."ADMINPMANGA" ADD CONSTRAINT "SYS_C008018" CHECK ("STATUS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ANIME
-- ----------------------------
ALTER TABLE "HR"."ANIME" ADD CONSTRAINT "SYS_C007939" PRIMARY KEY ("ANIMEID");

-- ----------------------------
-- Checks structure for table ANIME
-- ----------------------------
ALTER TABLE "HR"."ANIME" ADD CONSTRAINT "SYS_C007937" CHECK ("TITLE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."ANIME" ADD CONSTRAINT "SYS_C007938" CHECK ("Release Date" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table ANIME
-- ----------------------------
CREATE TRIGGER "HR"."ANIME_TRIGGER" BEFORE INSERT ON "HR"."ANIME" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
begin
     select anime_seq.nextval into :new.AnimeID from dual;
   end;
/

-- ----------------------------
-- Primary Key structure for table ANIMEEPISODES
-- ----------------------------
ALTER TABLE "HR"."ANIMEEPISODES" ADD CONSTRAINT "SYS_C008118" PRIMARY KEY ("ANIMEID", "EPISODE");

-- ----------------------------
-- Checks structure for table ANIMEEPISODES
-- ----------------------------
ALTER TABLE "HR"."ANIMEEPISODES" ADD CONSTRAINT "SYS_C008116" CHECK ("ANIMEID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."ANIMEEPISODES" ADD CONSTRAINT "SYS_C008117" CHECK ("EPISODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ANIMEGENRE
-- ----------------------------
ALTER TABLE "HR"."ANIMEGENRE" ADD CONSTRAINT "SYS_C007955" PRIMARY KEY ("ANIMEID", "GENRENAME");

-- ----------------------------
-- Checks structure for table ANIMEGENRE
-- ----------------------------
ALTER TABLE "HR"."ANIMEGENRE" ADD CONSTRAINT "SYS_C007953" CHECK ("ANIMEID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."ANIMEGENRE" ADD CONSTRAINT "SYS_C007954" CHECK ("GENRENAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ANIMEREVIEW
-- ----------------------------
ALTER TABLE "HR"."ANIMEREVIEW" ADD CONSTRAINT "SYS_C008288" PRIMARY KEY ("ID", "ANIMEID");

-- ----------------------------
-- Checks structure for table ANIMEREVIEW
-- ----------------------------
ALTER TABLE "HR"."ANIMEREVIEW" ADD CONSTRAINT "SYS_C008285" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."ANIMEREVIEW" ADD CONSTRAINT "SYS_C008286" CHECK ("ANIMEID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."ANIMEREVIEW" ADD CONSTRAINT "SYS_C008287" CHECK ("RATING" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table AUTHOR
-- ----------------------------
ALTER TABLE "HR"."AUTHOR" ADD CONSTRAINT "SYS_C007929" PRIMARY KEY ("AUTHORID");

-- ----------------------------
-- Triggers structure for table AUTHOR
-- ----------------------------
CREATE TRIGGER "HR"."AUTHOR_TRIGGER" BEFORE INSERT ON "HR"."AUTHOR" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
begin
     select author_seq.nextval into :new.AuthorID from dual;
   end;
/

-- ----------------------------
-- Primary Key structure for table BLOG
-- ----------------------------
ALTER TABLE "HR"."BLOG" ADD CONSTRAINT "SYS_C008188" PRIMARY KEY ("BLOGID");

-- ----------------------------
-- Checks structure for table BLOG
-- ----------------------------
ALTER TABLE "HR"."BLOG" ADD CONSTRAINT "SYS_C008186" CHECK ("TITLE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."BLOG" ADD CONSTRAINT "SYS_C008187" CHECK ("TEXT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table BLOG
-- ----------------------------
CREATE TRIGGER "HR"."BLOG_TRIGGER" BEFORE INSERT ON "HR"."BLOG" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
begin
     select blog_seq.nextval into :new.BlogID from dual;
   end;
/

-- ----------------------------
-- Primary Key structure for table COMMENTS
-- ----------------------------
ALTER TABLE "HR"."COMMENTS" ADD CONSTRAINT "SYS_C008228" PRIMARY KEY ("COMMENTID", "BLOGID");

-- ----------------------------
-- Checks structure for table COMMENTS
-- ----------------------------
ALTER TABLE "HR"."COMMENTS" ADD CONSTRAINT "SYS_C008225" CHECK ("COMMENTID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."COMMENTS" ADD CONSTRAINT "SYS_C008226" CHECK ("BLOGID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."COMMENTS" ADD CONSTRAINT "SYS_C008227" CHECK ("TEXT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table GENRE
-- ----------------------------
ALTER TABLE "HR"."GENRE" ADD CONSTRAINT "SYS_C007927" PRIMARY KEY ("GENRENAME");

-- ----------------------------
-- Checks structure for table GENRE
-- ----------------------------
ALTER TABLE "HR"."GENRE" ADD CONSTRAINT "SYS_C007926" CHECK ("GENRENAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table MANGA
-- ----------------------------
ALTER TABLE "HR"."MANGA" ADD CONSTRAINT "SYS_C007947" PRIMARY KEY ("MANGAID");

-- ----------------------------
-- Checks structure for table MANGA
-- ----------------------------
ALTER TABLE "HR"."MANGA" ADD CONSTRAINT "SYS_C007945" CHECK ("TITLE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."MANGA" ADD CONSTRAINT "SYS_C007946" CHECK ("Release Date" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table MANGA
-- ----------------------------
CREATE TRIGGER "HR"."MANGA_TRIGGER" BEFORE INSERT ON "HR"."MANGA" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
begin
     select manga_seq.nextval into :new.MangaID from dual;
   end;
/

-- ----------------------------
-- Primary Key structure for table MANGACHAPTERS
-- ----------------------------
ALTER TABLE "HR"."MANGACHAPTERS" ADD CONSTRAINT "SYS_C008124" PRIMARY KEY ("MANGAID", "CHAPTER");

-- ----------------------------
-- Checks structure for table MANGACHAPTERS
-- ----------------------------
ALTER TABLE "HR"."MANGACHAPTERS" ADD CONSTRAINT "SYS_C008122" CHECK ("MANGAID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."MANGACHAPTERS" ADD CONSTRAINT "SYS_C008123" CHECK ("CHAPTER" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table MANGAGENRE
-- ----------------------------
ALTER TABLE "HR"."MANGAGENRE" ADD CONSTRAINT "SYS_C007961" PRIMARY KEY ("MANGAID", "GENRENAME");

-- ----------------------------
-- Checks structure for table MANGAGENRE
-- ----------------------------
ALTER TABLE "HR"."MANGAGENRE" ADD CONSTRAINT "SYS_C007959" CHECK ("MANGAID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."MANGAGENRE" ADD CONSTRAINT "SYS_C007960" CHECK ("GENRENAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table MANGAREVIEW
-- ----------------------------
ALTER TABLE "HR"."MANGAREVIEW" ADD CONSTRAINT "SYS_C008296" PRIMARY KEY ("ID", "MANGAID");

-- ----------------------------
-- Checks structure for table MANGAREVIEW
-- ----------------------------
ALTER TABLE "HR"."MANGAREVIEW" ADD CONSTRAINT "SYS_C008293" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."MANGAREVIEW" ADD CONSTRAINT "SYS_C008294" CHECK ("MANGAID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."MANGAREVIEW" ADD CONSTRAINT "SYS_C008295" CHECK ("RATING" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table MEMBER
-- ----------------------------
ALTER TABLE "HR"."MEMBER" ADD CONSTRAINT "SYS_C007921" CHECK ("MEMBERID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table MEMBERPLAN
-- ----------------------------
ALTER TABLE "HR"."MEMBERPLAN" ADD CONSTRAINT "SYS_C008011" PRIMARY KEY ("PLANID", "MEMBERID");

-- ----------------------------
-- Checks structure for table MEMBERPLAN
-- ----------------------------
ALTER TABLE "HR"."MEMBERPLAN" ADD CONSTRAINT "SYS_C008007" CHECK ("PLANID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."MEMBERPLAN" ADD CONSTRAINT "SYS_C008008" CHECK ("MEMBERID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."MEMBERPLAN" ADD CONSTRAINT "SYS_C008009" CHECK ("STARTDATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."MEMBERPLAN" ADD CONSTRAINT "SYS_C008010" CHECK ("ENDDATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PERSON
-- ----------------------------
ALTER TABLE "HR"."PERSON" ADD CONSTRAINT "SYS_C007917" PRIMARY KEY ("ID");

-- ----------------------------
-- Uniques structure for table PERSON
-- ----------------------------
ALTER TABLE "HR"."PERSON" ADD CONSTRAINT "SYS_C007918" UNIQUE ("EMAIL") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table PERSON
-- ----------------------------
ALTER TABLE "HR"."PERSON" ADD CONSTRAINT "SYS_C007914" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."PERSON" ADD CONSTRAINT "SYS_C007915" CHECK ("EMAIL" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."PERSON" ADD CONSTRAINT "SYS_C007916" CHECK ("PASSWORD" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table PERSON
-- ----------------------------
CREATE TRIGGER "HR"."PERSON_TRIGGER" BEFORE INSERT ON "HR"."PERSON" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
begin
     select person_seq.nextval into :new.ID from dual;
   end;
/

-- ----------------------------
-- Primary Key structure for table PLAN
-- ----------------------------
ALTER TABLE "HR"."PLAN" ADD CONSTRAINT "SYS_C008312" PRIMARY KEY ("PLANID");

-- ----------------------------
-- Checks structure for table PLAN
-- ----------------------------
ALTER TABLE "HR"."PLAN" ADD CONSTRAINT "SYS_C008309" CHECK ("PLANID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."PLAN" ADD CONSTRAINT "SYS_C008310" CHECK ("PLANRANGE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."PLAN" ADD CONSTRAINT "SYS_C008311" CHECK ("COST" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table PLAN
-- ----------------------------
CREATE TRIGGER "HR"."PLAN_TRIGGER" BEFORE INSERT ON "HR"."PLAN" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
begin
     select plan_seq.nextval into :new.PlanID from dual;
   end;
/

-- ----------------------------
-- Primary Key structure for table PREMIUMANIME
-- ----------------------------
ALTER TABLE "HR"."PREMIUMANIME" ADD CONSTRAINT "SYS_C007943" PRIMARY KEY ("PANIMEID");

-- ----------------------------
-- Checks structure for table PREMIUMANIME
-- ----------------------------
ALTER TABLE "HR"."PREMIUMANIME" ADD CONSTRAINT "SYS_C007941" CHECK ("TITLE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."PREMIUMANIME" ADD CONSTRAINT "SYS_C007942" CHECK ("Release Date" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table PREMIUMANIME
-- ----------------------------
CREATE TRIGGER "HR"."PANIME_TRIGGER" BEFORE INSERT ON "HR"."PREMIUMANIME" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
begin
     select panime_seq.nextval into :new.PAnimeID from dual;
   end;
/

-- ----------------------------
-- Primary Key structure for table PREMIUMANIMEEPISODES
-- ----------------------------
ALTER TABLE "HR"."PREMIUMANIMEEPISODES" ADD CONSTRAINT "SYS_C008121" PRIMARY KEY ("PANIMEID", "EPISODE");

-- ----------------------------
-- Checks structure for table PREMIUMANIMEEPISODES
-- ----------------------------
ALTER TABLE "HR"."PREMIUMANIMEEPISODES" ADD CONSTRAINT "SYS_C008119" CHECK ("PANIMEID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."PREMIUMANIMEEPISODES" ADD CONSTRAINT "SYS_C008120" CHECK ("EPISODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PREMIUMANIMEGENRE
-- ----------------------------
ALTER TABLE "HR"."PREMIUMANIMEGENRE" ADD CONSTRAINT "SYS_C007958" PRIMARY KEY ("PANIMEID", "GENRENAME");

-- ----------------------------
-- Checks structure for table PREMIUMANIMEGENRE
-- ----------------------------
ALTER TABLE "HR"."PREMIUMANIMEGENRE" ADD CONSTRAINT "SYS_C007956" CHECK ("PANIMEID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."PREMIUMANIMEGENRE" ADD CONSTRAINT "SYS_C007957" CHECK ("GENRENAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PREMIUMANIMEREVIEW
-- ----------------------------
ALTER TABLE "HR"."PREMIUMANIMEREVIEW" ADD CONSTRAINT "SYS_C008292" PRIMARY KEY ("ID", "PANIMEID");

-- ----------------------------
-- Checks structure for table PREMIUMANIMEREVIEW
-- ----------------------------
ALTER TABLE "HR"."PREMIUMANIMEREVIEW" ADD CONSTRAINT "SYS_C008289" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."PREMIUMANIMEREVIEW" ADD CONSTRAINT "SYS_C008290" CHECK ("PANIMEID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."PREMIUMANIMEREVIEW" ADD CONSTRAINT "SYS_C008291" CHECK ("RATING" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PREMIUMMANGA
-- ----------------------------
ALTER TABLE "HR"."PREMIUMMANGA" ADD CONSTRAINT "SYS_C007951" PRIMARY KEY ("PMANGAID");

-- ----------------------------
-- Checks structure for table PREMIUMMANGA
-- ----------------------------
ALTER TABLE "HR"."PREMIUMMANGA" ADD CONSTRAINT "SYS_C007949" CHECK ("TITLE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."PREMIUMMANGA" ADD CONSTRAINT "SYS_C007950" CHECK ("Release Date" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table PREMIUMMANGA
-- ----------------------------
CREATE TRIGGER "HR"."PMANGA_TRIGGER" BEFORE INSERT ON "HR"."PREMIUMMANGA" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
begin
     select pmanga_seq.nextval into :new.PMangaID from dual;
   end;
/

-- ----------------------------
-- Primary Key structure for table PREMIUMMANGACHAPTERS
-- ----------------------------
ALTER TABLE "HR"."PREMIUMMANGACHAPTERS" ADD CONSTRAINT "SYS_C008127" PRIMARY KEY ("PMANGAID", "CHAPTER");

-- ----------------------------
-- Checks structure for table PREMIUMMANGACHAPTERS
-- ----------------------------
ALTER TABLE "HR"."PREMIUMMANGACHAPTERS" ADD CONSTRAINT "SYS_C008125" CHECK ("PMANGAID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."PREMIUMMANGACHAPTERS" ADD CONSTRAINT "SYS_C008126" CHECK ("CHAPTER" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PREMIUMMANGAGENRE
-- ----------------------------
ALTER TABLE "HR"."PREMIUMMANGAGENRE" ADD CONSTRAINT "SYS_C007964" PRIMARY KEY ("PMANGAID", "GENRENAME");

-- ----------------------------
-- Checks structure for table PREMIUMMANGAGENRE
-- ----------------------------
ALTER TABLE "HR"."PREMIUMMANGAGENRE" ADD CONSTRAINT "SYS_C007962" CHECK ("PMANGAID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."PREMIUMMANGAGENRE" ADD CONSTRAINT "SYS_C007963" CHECK ("GENRENAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PREMIUMMANGAREVIEW
-- ----------------------------
ALTER TABLE "HR"."PREMIUMMANGAREVIEW" ADD CONSTRAINT "SYS_C008300" PRIMARY KEY ("ID", "PMANGAID");

-- ----------------------------
-- Checks structure for table PREMIUMMANGAREVIEW
-- ----------------------------
ALTER TABLE "HR"."PREMIUMMANGAREVIEW" ADD CONSTRAINT "SYS_C008297" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."PREMIUMMANGAREVIEW" ADD CONSTRAINT "SYS_C008298" CHECK ("PMANGAID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."PREMIUMMANGAREVIEW" ADD CONSTRAINT "SYS_C008299" CHECK ("RATING" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PRODUCER
-- ----------------------------
ALTER TABLE "HR"."PRODUCER" ADD CONSTRAINT "SYS_C007928" PRIMARY KEY ("PRODUCERID");

-- ----------------------------
-- Triggers structure for table PRODUCER
-- ----------------------------
CREATE TRIGGER "HR"."PROD_TRIGGER" BEFORE INSERT ON "HR"."PRODUCER" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
begin
     select prod_seq.nextval into :new.ProducerID from dual;
   end;
/

-- ----------------------------
-- Foreign Keys structure for table ADMIN
-- ----------------------------
ALTER TABLE "HR"."ADMIN" ADD CONSTRAINT "SYS_C007920" FOREIGN KEY ("ADMINID") REFERENCES "HR"."PERSON" ("ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ANIME
-- ----------------------------
ALTER TABLE "HR"."ANIME" ADD CONSTRAINT "SYS_C007940" FOREIGN KEY ("PRODUCERID") REFERENCES "HR"."PRODUCER" ("PRODUCERID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table MANGA
-- ----------------------------
ALTER TABLE "HR"."MANGA" ADD CONSTRAINT "SYS_C007948" FOREIGN KEY ("AUTHORID") REFERENCES "HR"."AUTHOR" ("AUTHORID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table MEMBER
-- ----------------------------
ALTER TABLE "HR"."MEMBER" ADD CONSTRAINT "SYS_C007922" FOREIGN KEY ("MEMBERID") REFERENCES "HR"."PERSON" ("ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table PREMIUMANIME
-- ----------------------------
ALTER TABLE "HR"."PREMIUMANIME" ADD CONSTRAINT "SYS_C007944" FOREIGN KEY ("PRODUCERID") REFERENCES "HR"."PRODUCER" ("PRODUCERID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table PREMIUMMANGA
-- ----------------------------
ALTER TABLE "HR"."PREMIUMMANGA" ADD CONSTRAINT "SYS_C007952" FOREIGN KEY ("AUTHORID") REFERENCES "HR"."AUTHOR" ("AUTHORID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
