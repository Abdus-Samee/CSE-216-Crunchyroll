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
-- Table structure for COUNTRIES
-- ----------------------------
DROP TABLE "HR"."COUNTRIES";
CREATE TABLE "HR"."COUNTRIES" (
  "COUNTRY_ID" CHAR(2 BYTE) VISIBLE NOT NULL,
  "COUNTRY_NAME" VARCHAR2(40 BYTE) VISIBLE,
  "REGION_ID" NUMBER VISIBLE
)
ORGANIZATION INDEX
LOGGING
PCTFREE 10
INITRANS 2
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
DISABLE ROW MOVEMENT
PCTTHRESHOLD 50

;
COMMENT ON COLUMN "HR"."COUNTRIES"."COUNTRY_ID" IS 'Primary key of countries table.';
COMMENT ON COLUMN "HR"."COUNTRIES"."COUNTRY_NAME" IS 'Country name';
COMMENT ON COLUMN "HR"."COUNTRIES"."REGION_ID" IS 'Region ID for the country. Foreign key to region_id column in the departments table.';
COMMENT ON TABLE "HR"."COUNTRIES" IS 'country table. Contains 25 rows. References with locations table.';

-- ----------------------------
-- Records of COUNTRIES
-- ----------------------------
INSERT INTO "HR"."COUNTRIES" VALUES ('AR', 'Argentina', '2');
INSERT INTO "HR"."COUNTRIES" VALUES ('AU', 'Australia', '3');
INSERT INTO "HR"."COUNTRIES" VALUES ('BE', 'Belgium', '1');
INSERT INTO "HR"."COUNTRIES" VALUES ('BR', 'Brazil', '2');
INSERT INTO "HR"."COUNTRIES" VALUES ('CA', 'Canada', '2');
INSERT INTO "HR"."COUNTRIES" VALUES ('CH', 'Switzerland', '1');
INSERT INTO "HR"."COUNTRIES" VALUES ('CN', 'China', '3');
INSERT INTO "HR"."COUNTRIES" VALUES ('DE', 'Germany', '1');
INSERT INTO "HR"."COUNTRIES" VALUES ('DK', 'Denmark', '1');
INSERT INTO "HR"."COUNTRIES" VALUES ('EG', 'Egypt', '4');
INSERT INTO "HR"."COUNTRIES" VALUES ('FR', 'France', '1');
INSERT INTO "HR"."COUNTRIES" VALUES ('IL', 'Israel', '4');
INSERT INTO "HR"."COUNTRIES" VALUES ('IN', 'India', '3');
INSERT INTO "HR"."COUNTRIES" VALUES ('IT', 'Italy', '1');
INSERT INTO "HR"."COUNTRIES" VALUES ('JP', 'Japan', '3');
INSERT INTO "HR"."COUNTRIES" VALUES ('KW', 'Kuwait', '4');
INSERT INTO "HR"."COUNTRIES" VALUES ('ML', 'Malaysia', '3');
INSERT INTO "HR"."COUNTRIES" VALUES ('MX', 'Mexico', '2');
INSERT INTO "HR"."COUNTRIES" VALUES ('NG', 'Nigeria', '4');
INSERT INTO "HR"."COUNTRIES" VALUES ('NL', 'Netherlands', '1');
INSERT INTO "HR"."COUNTRIES" VALUES ('SG', 'Singapore', '3');
INSERT INTO "HR"."COUNTRIES" VALUES ('UK', 'United Kingdom', '1');
INSERT INTO "HR"."COUNTRIES" VALUES ('US', 'United States of America', '2');
INSERT INTO "HR"."COUNTRIES" VALUES ('ZM', 'Zambia', '4');
INSERT INTO "HR"."COUNTRIES" VALUES ('ZW', 'Zimbabwe', '4');

-- ----------------------------
-- Table structure for DEPARTMENTS
-- ----------------------------
DROP TABLE "HR"."DEPARTMENTS";
CREATE TABLE "HR"."DEPARTMENTS" (
  "DEPARTMENT_ID" NUMBER(4,0) VISIBLE NOT NULL,
  "DEPARTMENT_NAME" VARCHAR2(30 BYTE) VISIBLE NOT NULL,
  "MANAGER_ID" NUMBER(6,0) VISIBLE,
  "LOCATION_ID" NUMBER(4,0) VISIBLE
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
COMMENT ON COLUMN "HR"."DEPARTMENTS"."DEPARTMENT_ID" IS 'Primary key column of departments table.';
COMMENT ON COLUMN "HR"."DEPARTMENTS"."DEPARTMENT_NAME" IS 'A not null column that shows name of a department. Administration,
Marketing, Purchasing, Human Resources, Shipping, IT, Executive, Public
Relations, Sales, Finance, and Accounting. ';
COMMENT ON COLUMN "HR"."DEPARTMENTS"."MANAGER_ID" IS 'Manager_id of a department. Foreign key to employee_id column of employees table. The manager_id column of the employee table references this column.';
COMMENT ON COLUMN "HR"."DEPARTMENTS"."LOCATION_ID" IS 'Location id where a department is located. Foreign key to location_id column of locations table.';
COMMENT ON TABLE "HR"."DEPARTMENTS" IS 'Departments table that shows details of departments where employees
work. Contains 27 rows; references with locations, employees, and job_history tables.';

-- ----------------------------
-- Records of DEPARTMENTS
-- ----------------------------
INSERT INTO "HR"."DEPARTMENTS" VALUES ('10', 'Administration', '200', '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('20', 'Marketing', '201', '1800');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('30', 'Purchasing', '114', '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('40', 'Human Resources', '203', '2400');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('50', 'Shipping', '121', '1500');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('60', 'IT', '103', '1400');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('70', 'Public Relations', '204', '2700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('80', 'Sales', '145', '2500');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('90', 'Executive', '100', '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('100', 'Finance', '108', '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('110', 'Accounting', '205', '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('120', 'Treasury', NULL, '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('130', 'Corporate Tax', NULL, '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('140', 'Control And Credit', NULL, '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('150', 'Shareholder Services', NULL, '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('160', 'Benefits', NULL, '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('170', 'Manufacturing', NULL, '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('180', 'Construction', NULL, '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('190', 'Contracting', NULL, '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('200', 'Operations', NULL, '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('210', 'IT Support', NULL, '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('220', 'NOC', NULL, '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('230', 'IT Helpdesk', NULL, '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('240', 'Government Sales', NULL, '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('250', 'Retail Sales', NULL, '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('260', 'Recruiting', NULL, '1700');
INSERT INTO "HR"."DEPARTMENTS" VALUES ('270', 'Payroll', NULL, '1700');

-- ----------------------------
-- Table structure for DEPARTMENT_SALARY
-- ----------------------------
DROP TABLE "HR"."DEPARTMENT_SALARY";
CREATE TABLE "HR"."DEPARTMENT_SALARY" (
  "DEPARTMENT_ID" NUMBER(4,0) VISIBLE NOT NULL,
  "TOTAL_SALARY" NUMBER(8,2) VISIBLE
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
-- Records of DEPARTMENT_SALARY
-- ----------------------------
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('10', '24900');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('20', '35000');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('80', '28200');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('200', '19800');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('160', '16808');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('260', '15000');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('140', '22608');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('150', '31000');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('110', '18400');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('120', '15900');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('240', '20700');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('220', '97200');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('190', '8300');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('90', '37500');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('270', '28400');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('230', '15700');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('30', '28400');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('170', '25400');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('100', '11500');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('130', '20000');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('210', '22600');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('50', '26000');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('70', '9300');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('250', '10300');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('60', '67600');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('180', '21200');
INSERT INTO "HR"."DEPARTMENT_SALARY" VALUES ('40', '13700');

-- ----------------------------
-- Table structure for EMPLOYEES
-- ----------------------------
DROP TABLE "HR"."EMPLOYEES";
CREATE TABLE "HR"."EMPLOYEES" (
  "EMPLOYEE_ID" NUMBER(6,0) VISIBLE NOT NULL,
  "FIRST_NAME" VARCHAR2(20 BYTE) VISIBLE,
  "LAST_NAME" VARCHAR2(25 BYTE) VISIBLE NOT NULL,
  "EMAIL" VARCHAR2(25 BYTE) VISIBLE NOT NULL,
  "PHONE_NUMBER" VARCHAR2(20 BYTE) VISIBLE,
  "HIRE_DATE" DATE VISIBLE NOT NULL,
  "JOB_ID" VARCHAR2(10 BYTE) VISIBLE NOT NULL,
  "SALARY" NUMBER(8,2) VISIBLE,
  "COMMISSION_PCT" NUMBER(2,2) VISIBLE,
  "MANAGER_ID" NUMBER(6,0) VISIBLE,
  "DEPARTMENT_ID" NUMBER(4,0) VISIBLE
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
COMMENT ON COLUMN "HR"."EMPLOYEES"."EMPLOYEE_ID" IS 'Primary key of employees table.';
COMMENT ON COLUMN "HR"."EMPLOYEES"."FIRST_NAME" IS 'First name of the employee. A not null column.';
COMMENT ON COLUMN "HR"."EMPLOYEES"."LAST_NAME" IS 'Last name of the employee. A not null column.';
COMMENT ON COLUMN "HR"."EMPLOYEES"."EMAIL" IS 'Email id of the employee';
COMMENT ON COLUMN "HR"."EMPLOYEES"."PHONE_NUMBER" IS 'Phone number of the employee; includes country code and area code';
COMMENT ON COLUMN "HR"."EMPLOYEES"."HIRE_DATE" IS 'Date when the employee started on this job. A not null column.';
COMMENT ON COLUMN "HR"."EMPLOYEES"."JOB_ID" IS 'Current job of the employee; foreign key to job_id column of the
jobs table. A not null column.';
COMMENT ON COLUMN "HR"."EMPLOYEES"."SALARY" IS 'Monthly salary of the employee. Must be greater
than zero (enforced by constraint emp_salary_min)';
COMMENT ON COLUMN "HR"."EMPLOYEES"."COMMISSION_PCT" IS 'Commission percentage of the employee; Only employees in sales
department elgible for commission percentage';
COMMENT ON COLUMN "HR"."EMPLOYEES"."MANAGER_ID" IS 'Manager id of the employee; has same domain as manager_id in
departments table. Foreign key to employee_id column of employees table.
(useful for reflexive joins and CONNECT BY query)';
COMMENT ON COLUMN "HR"."EMPLOYEES"."DEPARTMENT_ID" IS 'Department id where employee works; foreign key to department_id
column of the departments table';
COMMENT ON TABLE "HR"."EMPLOYEES" IS 'employees table. Contains 107 rows. References with departments,
jobs, job_history tables. Contains a self reference.';

-- ----------------------------
-- Records of EMPLOYEES
-- ----------------------------
INSERT INTO "HR"."EMPLOYEES" VALUES ('100', 'Steven', 'King', 'SKING', '515.123.4567', TO_DATE('2003-06-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'AD_PRES', '24000', NULL, NULL, '90');
INSERT INTO "HR"."EMPLOYEES" VALUES ('101', 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', TO_DATE('2005-09-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'AD_VP', '17000', NULL, '100', '90');
INSERT INTO "HR"."EMPLOYEES" VALUES ('102', 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', TO_DATE('2001-01-13 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'AD_VP', '17000', NULL, '100', '90');
INSERT INTO "HR"."EMPLOYEES" VALUES ('103', 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', TO_DATE('2006-01-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'IT_PROG', '9000', NULL, '102', '60');
INSERT INTO "HR"."EMPLOYEES" VALUES ('104', 'Bruce', 'Ernst', 'BERNST', '590.423.4568', TO_DATE('2007-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'IT_PROG', '6000', NULL, '103', '60');
INSERT INTO "HR"."EMPLOYEES" VALUES ('105', 'David', 'Austin', 'DAUSTIN', '590.423.4569', TO_DATE('2005-06-25 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'IT_PROG', '4800', NULL, '103', '60');
INSERT INTO "HR"."EMPLOYEES" VALUES ('106', 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', TO_DATE('2006-02-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'IT_PROG', '4800', NULL, '103', '60');
INSERT INTO "HR"."EMPLOYEES" VALUES ('107', 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', TO_DATE('2007-02-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'IT_PROG', '4200', NULL, '103', '60');
INSERT INTO "HR"."EMPLOYEES" VALUES ('108', 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', TO_DATE('2002-08-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'FI_MGR', '12008', NULL, '101', '100');
INSERT INTO "HR"."EMPLOYEES" VALUES ('109', 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', TO_DATE('2002-08-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'FI_ACCOUNT', '9000', NULL, '108', '100');
INSERT INTO "HR"."EMPLOYEES" VALUES ('110', 'John', 'Chen', 'JCHEN', '515.124.4269', TO_DATE('2005-09-28 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'FI_ACCOUNT', '8200', NULL, '108', '100');
INSERT INTO "HR"."EMPLOYEES" VALUES ('111', 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', TO_DATE('2005-09-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'FI_ACCOUNT', '7700', NULL, '108', '100');
INSERT INTO "HR"."EMPLOYEES" VALUES ('112', 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', TO_DATE('2006-03-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'FI_ACCOUNT', '7800', NULL, '108', '100');
INSERT INTO "HR"."EMPLOYEES" VALUES ('113', 'Luis', 'Popp', 'LPOPP', '515.124.4567', TO_DATE('2007-12-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'FI_ACCOUNT', '6900', NULL, '108', '100');
INSERT INTO "HR"."EMPLOYEES" VALUES ('114', 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', TO_DATE('2002-12-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'PU_MAN', '11000', NULL, '100', '30');
INSERT INTO "HR"."EMPLOYEES" VALUES ('115', 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', TO_DATE('2003-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'PU_CLERK', '3100', NULL, '114', '30');
INSERT INTO "HR"."EMPLOYEES" VALUES ('116', 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', TO_DATE('2005-12-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'PU_CLERK', '2900', NULL, '114', '30');
INSERT INTO "HR"."EMPLOYEES" VALUES ('117', 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', TO_DATE('2005-07-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'PU_CLERK', '2800', NULL, '114', '30');
INSERT INTO "HR"."EMPLOYEES" VALUES ('118', 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', TO_DATE('2006-11-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'PU_CLERK', '2600', NULL, '114', '30');
INSERT INTO "HR"."EMPLOYEES" VALUES ('119', 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', TO_DATE('2007-08-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'PU_CLERK', '2500', NULL, '114', '30');
INSERT INTO "HR"."EMPLOYEES" VALUES ('120', 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', TO_DATE('2004-07-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_MAN', '8000', NULL, '100', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('121', 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', TO_DATE('2005-04-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_MAN', '8200', NULL, '100', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('122', 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', TO_DATE('2003-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_MAN', '7900', NULL, '100', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('123', 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', TO_DATE('2005-10-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_MAN', '6500', NULL, '100', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('124', 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', TO_DATE('2007-11-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_MAN', '5800', NULL, '100', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('125', 'Julia', 'Nayer', 'JNAYER', '650.124.1214', TO_DATE('2005-07-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '3200', NULL, '120', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('126', 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', TO_DATE('2006-09-28 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2700', NULL, '120', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('127', 'James', 'Landry', 'JLANDRY', '650.124.1334', TO_DATE('2007-01-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2400', NULL, '120', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('128', 'Steven', 'Markle', 'SMARKLE', '650.124.1434', TO_DATE('2008-03-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2200', NULL, '120', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('129', 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', TO_DATE('2005-08-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '3300', NULL, '121', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('130', 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', TO_DATE('2005-10-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2800', NULL, '121', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('131', 'James', 'Marlow', 'JAMRLOW', '650.124.7234', TO_DATE('2005-02-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2500', NULL, '121', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('132', 'TJ', 'Olson', 'TJOLSON', '650.124.8234', TO_DATE('2007-04-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2100', NULL, '121', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('133', 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', TO_DATE('2004-06-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '3300', NULL, '122', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('134', 'Michael', 'Rogers', 'MROGERS', '650.127.1834', TO_DATE('2006-08-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2900', NULL, '122', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('135', 'Ki', 'Gee', 'KGEE', '650.127.1734', TO_DATE('2007-12-12 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2400', NULL, '122', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('136', 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', TO_DATE('2008-02-06 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2200', NULL, '122', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('137', 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', TO_DATE('2003-07-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '3600', NULL, '123', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('138', 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', TO_DATE('2005-10-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '3200', NULL, '123', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('139', 'John', 'Seo', 'JSEO', '650.121.2019', TO_DATE('2006-02-12 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2700', NULL, '123', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('140', 'Joshua', 'Patel', 'JPATEL', '650.121.1834', TO_DATE('2006-04-06 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2500', NULL, '123', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('141', 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', TO_DATE('2003-10-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '3500', NULL, '124', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('142', 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', TO_DATE('2005-01-29 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '3100', NULL, '124', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('143', 'Randall', 'Matos', 'RMATOS', '650.121.2874', TO_DATE('2006-03-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2600', NULL, '124', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('144', 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', TO_DATE('2006-07-09 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2500', NULL, '124', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('145', 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', TO_DATE('2004-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_MAN', '14000', '0.4', '100', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('146', 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', TO_DATE('2005-01-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_MAN', '13500', '0.3', '100', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('147', 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', TO_DATE('2005-03-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_MAN', '12000', '0.3', '100', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('148', 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', TO_DATE('2007-10-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_MAN', '11000', '0.3', '100', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('149', 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', TO_DATE('2008-01-29 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_MAN', '10500', '0.2', '100', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('150', 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', TO_DATE('2005-01-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '10000', '0.3', '145', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('151', 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', TO_DATE('2005-03-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '9500', '0.25', '145', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('152', 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', TO_DATE('2005-08-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '9000', '0.25', '145', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('153', 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', TO_DATE('2006-03-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '8000', '0.2', '145', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('154', 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', TO_DATE('2006-12-09 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '7500', '0.2', '145', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('155', 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', TO_DATE('2007-11-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '7000', '0.15', '145', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('156', 'Janette', 'King', 'JKING', '011.44.1345.429268', TO_DATE('2004-01-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '10000', '0.35', '146', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('157', 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', TO_DATE('2004-03-04 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '9500', '0.35', '146', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('158', 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', TO_DATE('2004-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '9000', '0.35', '146', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('159', 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', TO_DATE('2005-03-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '8000', '0.3', '146', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('160', 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', TO_DATE('2005-12-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '7500', '0.3', '146', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('161', 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', TO_DATE('2006-11-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '7000', '0.25', '146', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('162', 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', TO_DATE('2005-11-11 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '10500', '0.25', '147', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('163', 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', TO_DATE('2007-03-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '9500', '0.15', '147', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('164', 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', TO_DATE('2008-01-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '7200', '0.1', '147', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('165', 'David', 'Lee', 'DLEE', '011.44.1346.529268', TO_DATE('2008-02-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '6800', '0.1', '147', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('166', 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', TO_DATE('2008-03-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '6400', '0.1', '147', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('167', 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', TO_DATE('2008-04-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '6200', '0.1', '147', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('168', 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', TO_DATE('2005-03-11 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '11500', '0.25', '148', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('169', 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', TO_DATE('2006-03-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '10000', '0.2', '148', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('170', 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', TO_DATE('2006-01-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '9600', '0.2', '148', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('171', 'William', 'Smith', 'WSMITH', '011.44.1343.629268', TO_DATE('2007-02-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '7400', '0.15', '148', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('172', 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', TO_DATE('2007-03-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '7300', '0.15', '148', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('173', 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', TO_DATE('2008-04-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '6100', '0.1', '148', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('174', 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', TO_DATE('2004-05-11 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '11000', '0.3', '149', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('175', 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', TO_DATE('2005-03-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '8800', '0.25', '149', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('176', 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', TO_DATE('2006-03-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '8600', '0.2', '149', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('177', 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', TO_DATE('2006-04-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '8400', '0.2', '149', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('178', 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', TO_DATE('2007-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '7000', '0.15', '149', NULL);
INSERT INTO "HR"."EMPLOYEES" VALUES ('179', 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', TO_DATE('2008-01-04 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '6200', '0.1', '149', '80');
INSERT INTO "HR"."EMPLOYEES" VALUES ('180', 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', TO_DATE('2006-01-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3200', NULL, '120', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('181', 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', TO_DATE('2006-02-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3100', NULL, '120', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('182', 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', TO_DATE('2007-06-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '2500', NULL, '120', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('183', 'Girard', 'Geoni', 'GGEONI', '650.507.9879', TO_DATE('2008-02-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '2800', NULL, '120', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('184', 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', TO_DATE('2004-01-27 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '4200', NULL, '121', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('185', 'Alexis', 'Bull', 'ABULL', '650.509.2876', TO_DATE('2005-02-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '4100', NULL, '121', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('186', 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', TO_DATE('2006-06-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3400', NULL, '121', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('187', 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', TO_DATE('2007-02-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3000', NULL, '121', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('188', 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', TO_DATE('2005-06-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3800', NULL, '122', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('189', 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', TO_DATE('2005-08-13 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3600', NULL, '122', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('190', 'Timothy', 'Gates', 'TGATES', '650.505.3876', TO_DATE('2006-07-11 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '2900', NULL, '122', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('191', 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', TO_DATE('2007-12-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '2500', NULL, '122', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('192', 'Sarah', 'Bell', 'SBELL', '650.501.1876', TO_DATE('2004-02-04 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '4000', NULL, '123', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('193', 'Britney', 'Everett', 'BEVERETT', '650.501.2876', TO_DATE('2005-03-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3900', NULL, '123', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('194', 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', TO_DATE('2006-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3200', NULL, '123', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('195', 'Vance', 'Jones', 'VJONES', '650.501.4876', TO_DATE('2007-03-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '2800', NULL, '123', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('196', 'Alana', 'Walsh', 'AWALSH', '650.507.9811', TO_DATE('2006-04-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3100', NULL, '124', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('197', 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', TO_DATE('2006-05-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3000', NULL, '124', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('198', 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', TO_DATE('2007-06-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '2600', NULL, '124', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('199', 'Douglas', 'Grant', 'DGRANT', '650.507.9844', TO_DATE('2008-01-13 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '2600', NULL, '124', '50');
INSERT INTO "HR"."EMPLOYEES" VALUES ('200', 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', TO_DATE('2003-09-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'AD_ASST', '4400', NULL, '101', '10');
INSERT INTO "HR"."EMPLOYEES" VALUES ('201', 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', TO_DATE('2004-02-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'MK_MAN', '13000', NULL, '100', '20');
INSERT INTO "HR"."EMPLOYEES" VALUES ('202', 'Pat', 'Fay', 'PFAY', '603.123.6666', TO_DATE('2005-08-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'MK_REP', '6000', NULL, '201', '20');
INSERT INTO "HR"."EMPLOYEES" VALUES ('203', 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', TO_DATE('2002-06-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'HR_REP', '6500', NULL, '101', '40');
INSERT INTO "HR"."EMPLOYEES" VALUES ('204', 'Hermann', 'Baer', 'HBAER', '515.123.8888', TO_DATE('2002-06-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'PR_REP', '10000', NULL, '101', '70');
INSERT INTO "HR"."EMPLOYEES" VALUES ('205', 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', TO_DATE('2002-06-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'AC_MGR', '12008', NULL, '101', '110');
INSERT INTO "HR"."EMPLOYEES" VALUES ('206', 'William', 'Gietz', 'WGIETZ', '515.123.8181', TO_DATE('2002-06-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'AC_ACCOUNT', '8300', NULL, '205', '110');

-- ----------------------------
-- Table structure for EMPLOYEE_DEPARTMENT
-- ----------------------------
DROP TABLE "HR"."EMPLOYEE_DEPARTMENT";
CREATE TABLE "HR"."EMPLOYEE_DEPARTMENT" (
  "EMPLOYEE_ID" NUMBER(6,0) VISIBLE NOT NULL,
  "DEPARTMENT_ID" NUMBER(4,0) VISIBLE NOT NULL
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
-- Records of EMPLOYEE_DEPARTMENT
-- ----------------------------
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('100', '20');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('101', '220');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('102', '10');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('103', '270');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('104', '60');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('105', '240');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('106', '160');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('107', '40');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('108', '140');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('109', '260');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('110', '210');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('111', '50');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('112', '250');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('113', '220');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('114', '150');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('115', '110');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('116', '240');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('117', '70');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('118', '30');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('119', '220');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('120', '170');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('121', '80');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('122', '10');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('123', '70');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('124', '60');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('125', '210');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('126', '20');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('127', '220');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('128', '60');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('129', '200');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('130', '260');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('131', '100');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('132', '60');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('133', '270');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('134', '220');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('135', '60');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('136', '220');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('137', '120');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('138', '260');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('139', '120');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('140', '250');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('141', '220');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('142', '270');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('143', '60');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('144', '180');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('145', '90');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('146', '170');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('147', '130');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('148', '220');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('149', '60');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('150', '80');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('151', '50');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('152', '90');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('153', '130');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('154', '180');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('155', '60');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('156', '150');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('157', '230');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('158', '100');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('159', '210');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('160', '30');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('161', '150');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('162', '90');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('163', '40');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('164', '60');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('165', '220');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('166', '220');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('167', '60');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('168', '110');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('169', '200');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('170', '220');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('171', '140');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('172', '30');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('173', '220');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('174', '30');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('175', '50');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('176', '240');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('177', '180');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('178', '60');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('179', '220');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('180', '210');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('181', '230');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('182', '220');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('183', '220');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('184', '190');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('185', '190');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('186', '60');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('187', '220');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('188', '110');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('189', '120');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('190', '220');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('191', '220');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('192', '90');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('193', '170');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('194', '140');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('195', '180');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('196', '230');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('197', '150');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('198', '60');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('199', '60');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('200', '240');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('201', '270');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('202', '120');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('203', '200');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('204', '80');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('205', '160');
INSERT INTO "HR"."EMPLOYEE_DEPARTMENT" VALUES ('206', '20');

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
-- Table structure for GG
-- ----------------------------
DROP TABLE "HR"."GG";
CREATE TABLE "HR"."GG" (
  "MEMBERID" NUMBER VISIBLE NOT NULL,
  "ANIMEID" NUMBER VISIBLE NOT NULL,
  "TEXT" VARCHAR2(50 BYTE) VISIBLE,
  "RATING" FLOAT(4) VISIBLE DEFAULT 0.0
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
-- Records of GG
-- ----------------------------
INSERT INTO "HR"."GG" VALUES ('1', '2', 'gg', '2.4');

-- ----------------------------
-- Table structure for JOBS
-- ----------------------------
DROP TABLE "HR"."JOBS";
CREATE TABLE "HR"."JOBS" (
  "JOB_ID" VARCHAR2(10 BYTE) VISIBLE NOT NULL,
  "JOB_TITLE" VARCHAR2(35 BYTE) VISIBLE NOT NULL,
  "MIN_SALARY" NUMBER(6,0) VISIBLE,
  "MAX_SALARY" NUMBER(6,0) VISIBLE
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
COMMENT ON COLUMN "HR"."JOBS"."JOB_ID" IS 'Primary key of jobs table.';
COMMENT ON COLUMN "HR"."JOBS"."JOB_TITLE" IS 'A not null column that shows job title, e.g. AD_VP, FI_ACCOUNTANT';
COMMENT ON COLUMN "HR"."JOBS"."MIN_SALARY" IS 'Minimum salary for a job title.';
COMMENT ON COLUMN "HR"."JOBS"."MAX_SALARY" IS 'Maximum salary for a job title';
COMMENT ON TABLE "HR"."JOBS" IS 'jobs table with job titles and salary ranges. Contains 19 rows.
References with employees and job_history table.';

-- ----------------------------
-- Records of JOBS
-- ----------------------------
INSERT INTO "HR"."JOBS" VALUES ('AD_PRES', 'President', '20080', '40000');
INSERT INTO "HR"."JOBS" VALUES ('AD_VP', 'Administration Vice President', '15000', '30000');
INSERT INTO "HR"."JOBS" VALUES ('AD_ASST', 'Administration Assistant', '3000', '6000');
INSERT INTO "HR"."JOBS" VALUES ('FI_MGR', 'Finance Manager', '8200', '16000');
INSERT INTO "HR"."JOBS" VALUES ('FI_ACCOUNT', 'Accountant', '4200', '9000');
INSERT INTO "HR"."JOBS" VALUES ('AC_MGR', 'Accounting Manager', '8200', '16000');
INSERT INTO "HR"."JOBS" VALUES ('AC_ACCOUNT', 'Public Accountant', '4200', '9000');
INSERT INTO "HR"."JOBS" VALUES ('SA_MAN', 'Sales Manager', '10000', '20080');
INSERT INTO "HR"."JOBS" VALUES ('SA_REP', 'Sales Representative', '6000', '12008');
INSERT INTO "HR"."JOBS" VALUES ('PU_MAN', 'Purchasing Manager', '8000', '15000');
INSERT INTO "HR"."JOBS" VALUES ('PU_CLERK', 'Purchasing Clerk', '2500', '5500');
INSERT INTO "HR"."JOBS" VALUES ('ST_MAN', 'Stock Manager', '5500', '8500');
INSERT INTO "HR"."JOBS" VALUES ('ST_CLERK', 'Stock Clerk', '2008', '5000');
INSERT INTO "HR"."JOBS" VALUES ('SH_CLERK', 'Shipping Clerk', '2500', '5500');
INSERT INTO "HR"."JOBS" VALUES ('IT_PROG', 'Programmer', '4000', '10000');
INSERT INTO "HR"."JOBS" VALUES ('MK_MAN', 'Marketing Manager', '9000', '15000');
INSERT INTO "HR"."JOBS" VALUES ('MK_REP', 'Marketing Representative', '4000', '9000');
INSERT INTO "HR"."JOBS" VALUES ('HR_REP', 'Human Resources Representative', '4000', '9000');
INSERT INTO "HR"."JOBS" VALUES ('PR_REP', 'Public Relations Representative', '4500', '10500');

-- ----------------------------
-- Table structure for JOB_HISTORY
-- ----------------------------
DROP TABLE "HR"."JOB_HISTORY";
CREATE TABLE "HR"."JOB_HISTORY" (
  "EMPLOYEE_ID" NUMBER(6,0) VISIBLE NOT NULL,
  "START_DATE" DATE VISIBLE NOT NULL,
  "END_DATE" DATE VISIBLE NOT NULL,
  "JOB_ID" VARCHAR2(10 BYTE) VISIBLE NOT NULL,
  "DEPARTMENT_ID" NUMBER(4,0) VISIBLE
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
COMMENT ON COLUMN "HR"."JOB_HISTORY"."EMPLOYEE_ID" IS 'A not null column in the complex primary key employee_id+start_date.
Foreign key to employee_id column of the employee table';
COMMENT ON COLUMN "HR"."JOB_HISTORY"."START_DATE" IS 'A not null column in the complex primary key employee_id+start_date.
Must be less than the end_date of the job_history table. (enforced by
constraint jhist_date_interval)';
COMMENT ON COLUMN "HR"."JOB_HISTORY"."END_DATE" IS 'Last day of the employee in this job role. A not null column. Must be
greater than the start_date of the job_history table.
(enforced by constraint jhist_date_interval)';
COMMENT ON COLUMN "HR"."JOB_HISTORY"."JOB_ID" IS 'Job role in which the employee worked in the past; foreign key to
job_id column in the jobs table. A not null column.';
COMMENT ON COLUMN "HR"."JOB_HISTORY"."DEPARTMENT_ID" IS 'Department id in which the employee worked in the past; foreign key to deparment_id column in the departments table';
COMMENT ON TABLE "HR"."JOB_HISTORY" IS 'Table that stores job history of the employees. If an employee
changes departments within the job or changes jobs within the department,
new rows get inserted into this table with old job information of the
employee. Contains a complex primary key: employee_id+start_date.
Contains 25 rows. References with jobs, employees, and departments tables.';

-- ----------------------------
-- Records of JOB_HISTORY
-- ----------------------------
INSERT INTO "HR"."JOB_HISTORY" VALUES ('102', TO_DATE('2001-01-13 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2006-07-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'IT_PROG', '60');
INSERT INTO "HR"."JOB_HISTORY" VALUES ('101', TO_DATE('1997-09-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2001-10-27 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'AC_ACCOUNT', '110');
INSERT INTO "HR"."JOB_HISTORY" VALUES ('101', TO_DATE('2001-10-28 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2005-03-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'AC_MGR', '110');
INSERT INTO "HR"."JOB_HISTORY" VALUES ('201', TO_DATE('2004-02-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2007-12-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'MK_REP', '20');
INSERT INTO "HR"."JOB_HISTORY" VALUES ('114', TO_DATE('2006-03-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2007-12-31 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '50');
INSERT INTO "HR"."JOB_HISTORY" VALUES ('122', TO_DATE('2007-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2007-12-31 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '50');
INSERT INTO "HR"."JOB_HISTORY" VALUES ('200', TO_DATE('1995-09-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2001-06-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'AD_ASST', '90');
INSERT INTO "HR"."JOB_HISTORY" VALUES ('176', TO_DATE('2006-03-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2006-12-31 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '80');
INSERT INTO "HR"."JOB_HISTORY" VALUES ('176', TO_DATE('2007-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2007-12-31 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_MAN', '80');
INSERT INTO "HR"."JOB_HISTORY" VALUES ('200', TO_DATE('2002-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2006-12-31 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'AC_ACCOUNT', '90');

-- ----------------------------
-- Table structure for LIMITS
-- ----------------------------
DROP TABLE "HR"."LIMITS";
CREATE TABLE "HR"."LIMITS" (
  "DEPARTMENT_ID" NUMBER(4,0) VISIBLE NOT NULL,
  "LIMIT" NUMBER(2,0) VISIBLE
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
-- Records of LIMITS
-- ----------------------------
INSERT INTO "HR"."LIMITS" VALUES ('10', '2');
INSERT INTO "HR"."LIMITS" VALUES ('20', '3');
INSERT INTO "HR"."LIMITS" VALUES ('30', '4');
INSERT INTO "HR"."LIMITS" VALUES ('40', '2');
INSERT INTO "HR"."LIMITS" VALUES ('50', '3');
INSERT INTO "HR"."LIMITS" VALUES ('70', '2');
INSERT INTO "HR"."LIMITS" VALUES ('80', '3');
INSERT INTO "HR"."LIMITS" VALUES ('90', '4');
INSERT INTO "HR"."LIMITS" VALUES ('100', '2');
INSERT INTO "HR"."LIMITS" VALUES ('110', '3');
INSERT INTO "HR"."LIMITS" VALUES ('120', '4');
INSERT INTO "HR"."LIMITS" VALUES ('130', '2');
INSERT INTO "HR"."LIMITS" VALUES ('140', '3');
INSERT INTO "HR"."LIMITS" VALUES ('150', '4');
INSERT INTO "HR"."LIMITS" VALUES ('160', '2');
INSERT INTO "HR"."LIMITS" VALUES ('170', '3');
INSERT INTO "HR"."LIMITS" VALUES ('180', '4');
INSERT INTO "HR"."LIMITS" VALUES ('190', '2');
INSERT INTO "HR"."LIMITS" VALUES ('200', '3');
INSERT INTO "HR"."LIMITS" VALUES ('210', '4');
INSERT INTO "HR"."LIMITS" VALUES ('230', '3');
INSERT INTO "HR"."LIMITS" VALUES ('240', '4');
INSERT INTO "HR"."LIMITS" VALUES ('250', '2');
INSERT INTO "HR"."LIMITS" VALUES ('260', '3');
INSERT INTO "HR"."LIMITS" VALUES ('270', '4');

-- ----------------------------
-- Table structure for LOCATIONS
-- ----------------------------
DROP TABLE "HR"."LOCATIONS";
CREATE TABLE "HR"."LOCATIONS" (
  "LOCATION_ID" NUMBER(4,0) VISIBLE NOT NULL,
  "STREET_ADDRESS" VARCHAR2(40 BYTE) VISIBLE,
  "POSTAL_CODE" VARCHAR2(12 BYTE) VISIBLE,
  "CITY" VARCHAR2(30 BYTE) VISIBLE NOT NULL,
  "STATE_PROVINCE" VARCHAR2(25 BYTE) VISIBLE,
  "COUNTRY_ID" CHAR(2 BYTE) VISIBLE
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
COMMENT ON COLUMN "HR"."LOCATIONS"."LOCATION_ID" IS 'Primary key of locations table';
COMMENT ON COLUMN "HR"."LOCATIONS"."STREET_ADDRESS" IS 'Street address of an office, warehouse, or production site of a company.
Contains building number and street name';
COMMENT ON COLUMN "HR"."LOCATIONS"."POSTAL_CODE" IS 'Postal code of the location of an office, warehouse, or production site
of a company. ';
COMMENT ON COLUMN "HR"."LOCATIONS"."CITY" IS 'A not null column that shows city where an office, warehouse, or
production site of a company is located. ';
COMMENT ON COLUMN "HR"."LOCATIONS"."STATE_PROVINCE" IS 'State or Province where an office, warehouse, or production site of a
company is located.';
COMMENT ON COLUMN "HR"."LOCATIONS"."COUNTRY_ID" IS 'Country where an office, warehouse, or production site of a company is
located. Foreign key to country_id column of the countries table.';
COMMENT ON TABLE "HR"."LOCATIONS" IS 'Locations table that contains specific address of a specific office,
warehouse, and/or production site of a company. Does not store addresses /
locations of customers. Contains 23 rows; references with the
departments and countries tables. ';

-- ----------------------------
-- Records of LOCATIONS
-- ----------------------------
INSERT INTO "HR"."LOCATIONS" VALUES ('1000', '1297 Via Cola di Rie', '00989', 'Roma', NULL, 'IT');
INSERT INTO "HR"."LOCATIONS" VALUES ('1100', '93091 Calle della Testa', '10934', 'Venice', NULL, 'IT');
INSERT INTO "HR"."LOCATIONS" VALUES ('1200', '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP');
INSERT INTO "HR"."LOCATIONS" VALUES ('1300', '9450 Kamiya-cho', '6823', 'Hiroshima', NULL, 'JP');
INSERT INTO "HR"."LOCATIONS" VALUES ('1400', '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US');
INSERT INTO "HR"."LOCATIONS" VALUES ('1500', '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US');
INSERT INTO "HR"."LOCATIONS" VALUES ('1600', '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US');
INSERT INTO "HR"."LOCATIONS" VALUES ('1700', '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US');
INSERT INTO "HR"."LOCATIONS" VALUES ('1800', '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA');
INSERT INTO "HR"."LOCATIONS" VALUES ('1900', '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA');
INSERT INTO "HR"."LOCATIONS" VALUES ('2000', '40-5-12 Laogianggen', '190518', 'Beijing', NULL, 'CN');
INSERT INTO "HR"."LOCATIONS" VALUES ('2100', '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN');
INSERT INTO "HR"."LOCATIONS" VALUES ('2200', '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU');
INSERT INTO "HR"."LOCATIONS" VALUES ('2300', '198 Clementi North', '540198', 'Singapore', NULL, 'SG');
INSERT INTO "HR"."LOCATIONS" VALUES ('2400', '8204 Arthur St', NULL, 'London', NULL, 'UK');
INSERT INTO "HR"."LOCATIONS" VALUES ('2500', 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK');
INSERT INTO "HR"."LOCATIONS" VALUES ('2600', '9702 Chester Road', '09629850293', 'Stretford', 'Manchester', 'UK');
INSERT INTO "HR"."LOCATIONS" VALUES ('2700', 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE');
INSERT INTO "HR"."LOCATIONS" VALUES ('2800', 'Rua Frei Caneca 1360 ', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR');
INSERT INTO "HR"."LOCATIONS" VALUES ('2900', '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH');
INSERT INTO "HR"."LOCATIONS" VALUES ('3000', 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH');
INSERT INTO "HR"."LOCATIONS" VALUES ('3100', 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL');
INSERT INTO "HR"."LOCATIONS" VALUES ('3200', 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal,', 'MX');

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
-- Table structure for MANGAPRODUCTION
-- ----------------------------
DROP TABLE "HR"."MANGAPRODUCTION";
CREATE TABLE "HR"."MANGAPRODUCTION" (
  "MANGAID" NUMBER VISIBLE NOT NULL,
  "AUTHORID" NUMBER VISIBLE NOT NULL
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
-- Records of MANGAPRODUCTION
-- ----------------------------
INSERT INTO "HR"."MANGAPRODUCTION" VALUES ('1', '1');

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
-- Table structure for OPTIONS
-- ----------------------------
DROP TABLE "HR"."OPTIONS";
CREATE TABLE "HR"."OPTIONS" (
  "EMPLOYEE_ID" NUMBER(6,0) VISIBLE NOT NULL,
  "DEPARTMENT_ID" NUMBER(4,0) VISIBLE NOT NULL,
  "CHOICE" NUMBER(2,0) VISIBLE
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
-- Records of OPTIONS
-- ----------------------------
INSERT INTO "HR"."OPTIONS" VALUES ('134', '230', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '260', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '270', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '70', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '150', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '30', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '130', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '100', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '60', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '120', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '20', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '170', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '50', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '240', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '270', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '60', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '220', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '40', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '110', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '170', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '10', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '130', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '100', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '160', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '200', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '120', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '250', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '80', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '230', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '30', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '20', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '140', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '90', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '150', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '50', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '70', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '190', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '180', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '210', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('135', '260', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '240', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '220', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '140', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '100', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '160', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '270', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '150', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '250', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '40', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '10', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '70', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '30', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '260', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '130', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '200', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '110', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '180', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '60', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '20', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '210', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '50', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '90', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '190', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '170', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '80', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '120', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('136', '230', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '120', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '200', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '190', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '80', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '90', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '210', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '240', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '130', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '150', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '100', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '60', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '180', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '220', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '140', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '260', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '30', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '70', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '50', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '160', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '40', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '250', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '10', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '20', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '110', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '170', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '270', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('137', '230', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '260', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '150', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '10', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '240', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '220', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '100', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '30', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '50', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '130', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '80', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '70', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '230', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '250', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '180', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '160', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '270', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '200', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '210', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '60', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '170', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '90', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '40', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '120', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '20', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '110', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '140', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('138', '190', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '170', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '270', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '120', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '160', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '20', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '240', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '140', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '90', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '230', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '30', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '150', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '80', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '190', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '10', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '60', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '40', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '70', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '110', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '200', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '220', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '130', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '210', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '50', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '250', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '100', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '180', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('139', '260', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '80', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '250', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '190', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '240', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '260', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '10', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '180', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '70', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '140', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '90', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '200', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '100', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '170', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '160', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '130', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '50', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '20', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '120', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '220', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '270', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '210', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '150', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '230', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '40', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '60', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '30', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('140', '110', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '220', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '210', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '140', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '90', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '10', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '110', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '250', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '160', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '180', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '100', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '60', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '130', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '260', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '150', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '30', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '80', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '20', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '70', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '40', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '190', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '170', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '120', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '270', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '240', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '50', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '230', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('141', '200', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '270', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '260', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '60', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '20', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '10', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '250', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '200', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '230', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '150', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '70', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '180', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '160', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '40', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '120', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '130', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '30', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '100', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '190', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '240', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '220', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '80', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '170', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '90', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '110', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '140', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '50', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('142', '210', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '60', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '160', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '30', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '240', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '80', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '70', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '200', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '140', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '100', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '20', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '40', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '10', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '220', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '90', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '190', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '130', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '180', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '270', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '230', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '110', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '210', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '250', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '170', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '50', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '260', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '150', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('143', '120', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '180', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '130', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '210', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '170', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '70', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '60', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '30', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '160', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '190', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '230', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '20', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '240', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '10', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '250', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '220', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '80', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '150', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '260', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '90', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '40', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '200', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '270', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '110', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '100', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '140', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '50', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('144', '120', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '90', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '150', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '10', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '170', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '250', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '20', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '30', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '60', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '210', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '70', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '190', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '270', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '110', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '260', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '120', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '140', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '240', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '130', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '180', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '100', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '40', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '230', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '50', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '220', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '80', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '160', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('145', '200', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '170', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '40', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '190', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '30', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '160', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '20', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '60', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '10', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '110', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '200', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '150', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '240', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '260', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '70', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '270', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '90', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '180', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '120', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '250', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '50', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '220', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '140', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '210', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '230', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '100', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '130', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('146', '80', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '130', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '60', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '50', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '190', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '240', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '100', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '20', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '110', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '120', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '70', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '10', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '80', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '270', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '250', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '200', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '40', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '140', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '90', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '30', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '150', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '160', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '170', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '180', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '220', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '210', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '260', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('147', '230', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '90', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '150', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '80', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '170', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '140', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '210', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '250', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '110', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '130', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '190', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '270', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '240', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '50', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '100', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '30', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '120', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '40', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '180', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '260', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '160', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '10', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '220', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '70', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '230', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '200', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '20', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('148', '60', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '60', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '150', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '80', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '190', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '110', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '180', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '40', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '30', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '170', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '260', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '230', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '250', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '50', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '120', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '160', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '130', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '140', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '220', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '210', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '100', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '70', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '10', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '200', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '20', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '270', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '240', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('149', '90', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '80', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '20', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '270', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '100', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '140', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '40', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '250', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '210', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '170', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '70', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '150', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '110', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '220', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '50', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '60', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '120', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '90', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '160', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '130', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '30', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '190', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '240', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '180', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '200', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '230', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '10', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('150', '260', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '50', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '20', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '40', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '120', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '30', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '270', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '240', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '100', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '180', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '230', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '190', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '10', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '90', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '160', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '220', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '60', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '140', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '200', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '70', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '260', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '80', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '110', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '150', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '130', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '210', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '170', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('151', '250', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '90', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '200', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '80', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '270', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '160', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '60', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '170', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '220', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '70', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '240', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '50', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '260', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '10', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '250', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '190', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '180', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '230', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '40', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '110', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '130', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '210', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '140', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '100', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '150', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '30', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '20', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('152', '120', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '120', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '130', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '170', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '90', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '190', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '150', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '10', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '40', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '270', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '20', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '80', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '70', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '240', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '260', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '220', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '50', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '200', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '110', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '100', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '30', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '180', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '140', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '160', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '200', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '220', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '40', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '170', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '240', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '120', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '30', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '180', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '80', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '10', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '40', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '20', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '110', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '230', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '90', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '140', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '170', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '130', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '120', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '160', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '50', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '270', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '150', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '220', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '60', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '240', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '200', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '250', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '100', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '70', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '190', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '260', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('172', '210', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '170', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '210', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '180', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '220', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '130', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '20', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '150', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '80', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '270', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '40', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '70', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '230', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '120', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '260', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '200', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '160', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '140', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '100', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '60', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '90', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '250', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '30', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '240', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '10', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '50', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '190', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('173', '110', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '30', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '220', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '50', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '110', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '80', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '130', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '90', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '200', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '150', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '270', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '70', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '230', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '190', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '40', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '120', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '170', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '60', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '10', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '210', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '250', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '20', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '260', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '240', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '160', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '180', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '100', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('174', '140', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '50', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '120', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '220', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '180', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '40', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '210', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '140', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '10', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '100', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '90', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '190', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '250', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '230', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '130', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '20', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '150', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '170', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '60', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '70', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '240', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '260', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '30', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '160', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '200', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '80', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '270', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('175', '110', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '90', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '10', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '200', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '240', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '20', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '270', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '160', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '70', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '40', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '140', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '170', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '30', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '230', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '80', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '190', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '60', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '50', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '110', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '180', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '260', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '220', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '100', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '130', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '120', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '210', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '150', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('176', '250', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '180', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '80', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '10', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '190', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '130', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '70', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '270', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '210', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '260', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '50', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '60', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '140', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '30', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '120', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '90', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '160', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '230', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '110', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '170', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '250', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '40', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '20', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '200', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '240', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '150', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '220', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('177', '100', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '80', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '200', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '20', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '10', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '240', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '270', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '100', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '60', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '130', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '50', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '170', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '160', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '250', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '190', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '120', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '90', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '40', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '180', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '230', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '140', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '260', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '210', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '110', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '220', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '70', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '150', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('178', '30', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '220', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '10', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '270', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '210', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '130', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '150', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '70', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '230', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '60', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '90', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '180', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '140', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '200', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '40', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '160', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '250', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '260', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '120', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '20', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '240', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '50', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '100', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '80', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '170', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '110', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '190', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('179', '30', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '190', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '210', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '60', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '200', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '130', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '100', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '270', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '140', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '220', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '40', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '240', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '70', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '250', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '10', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '260', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '80', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '160', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '110', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '20', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '170', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '150', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '120', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '50', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '90', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '180', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '230', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('180', '30', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '160', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '230', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '40', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '220', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '10', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '150', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '180', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '210', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '110', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '190', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '30', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '140', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '70', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '120', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '60', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '130', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '240', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '100', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '270', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '80', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '200', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '20', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '90', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '170', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '250', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '260', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('181', '50', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '200', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '180', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '170', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '30', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '120', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '220', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '40', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '160', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '100', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '10', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '50', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '80', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '150', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '70', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '60', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '260', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '130', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '250', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '90', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '230', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '240', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '270', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '110', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '140', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '20', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '210', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('182', '190', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '230', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '240', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '100', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '220', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '160', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '250', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '180', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '200', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '270', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '50', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '170', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '30', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '80', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '190', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '70', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '120', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '210', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '10', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '60', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '140', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '20', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '40', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '150', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '130', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '90', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '110', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('183', '260', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '190', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '70', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '160', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '10', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '130', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '170', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '120', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '220', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '250', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '60', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '200', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '30', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '100', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '80', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '210', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '270', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '140', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '150', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '40', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '260', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '230', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '90', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '20', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '240', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '110', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '180', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('184', '50', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '190', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '20', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '70', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '180', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '160', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '110', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '100', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '230', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '80', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '140', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '240', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '120', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '60', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '170', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '130', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '250', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '90', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '10', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '210', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '260', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '220', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '200', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '150', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '270', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '30', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '40', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('185', '50', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '270', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '60', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '70', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '200', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '100', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '120', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '50', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '230', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '90', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '20', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '10', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '140', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '110', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '180', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '240', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '250', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '170', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '220', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '30', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '210', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '190', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '130', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '40', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '150', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '260', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '160', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('186', '80', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '220', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '200', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '20', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '260', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '120', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '210', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '110', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '60', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '50', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '230', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '240', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '90', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '100', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '130', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '40', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '140', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '30', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '150', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '10', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '180', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '170', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '270', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '80', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '190', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '70', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '160', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('187', '250', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '110', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '190', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '180', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '30', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '270', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '10', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '140', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '90', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '120', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '240', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '60', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '220', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '260', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '230', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '50', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '170', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '100', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '40', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '250', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '150', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '200', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '70', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '80', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '130', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '20', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '160', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('188', '210', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '120', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '240', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '160', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '60', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '180', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '230', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '140', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '30', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '110', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '220', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '250', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '10', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '130', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '260', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '190', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '70', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '90', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '40', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '80', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '210', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '250', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '230', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('153', '60', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '70', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '100', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '120', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '260', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '180', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '20', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '130', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '240', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '210', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '40', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '110', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '250', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '170', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '150', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '140', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '200', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '220', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '30', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '270', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '10', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '230', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '80', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '60', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '90', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '190', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '50', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('154', '160', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '200', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '190', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '140', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '20', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '160', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '90', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '230', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '120', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '260', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '240', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '70', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '180', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '250', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '80', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '10', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '110', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '60', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '30', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '130', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '50', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '100', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '210', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '270', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '170', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '40', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '220', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('155', '150', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '150', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '190', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '250', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '30', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '260', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '130', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '270', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '210', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '90', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '180', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '70', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '100', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '10', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '110', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '230', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '240', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '160', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '170', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '220', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '50', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '120', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '20', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '200', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '40', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '80', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '60', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('156', '140', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '230', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '20', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '140', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '240', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '100', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '260', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '110', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '220', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '90', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '50', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '80', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '30', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '170', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '190', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '150', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '60', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '40', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '120', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '130', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '210', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '200', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '250', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '160', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '270', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '10', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '70', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('157', '180', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '100', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '190', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '80', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '30', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '130', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '240', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '230', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '220', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '170', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '250', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '150', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '270', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '110', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '90', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '210', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '70', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '260', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '140', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '40', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '10', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '20', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '160', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '50', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '180', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '200', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '120', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('158', '60', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '210', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '260', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '170', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '130', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '50', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '190', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '90', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '200', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '40', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '100', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '230', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '120', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '80', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '30', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '160', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '270', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '10', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '150', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '220', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '20', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '250', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '110', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '140', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '70', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '180', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '60', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('159', '240', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '30', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '50', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '10', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '150', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '130', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '250', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '90', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '100', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '220', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '190', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '70', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '40', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '60', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '230', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '200', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '140', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '240', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '160', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '110', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '80', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '120', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '170', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '20', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '270', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '260', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '210', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('160', '180', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '260', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '210', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '190', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '80', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '20', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '160', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '10', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '50', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '150', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '120', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '140', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '90', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '270', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '180', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '130', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '30', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '170', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '100', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '110', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '240', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '250', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '200', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '40', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '220', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '230', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '60', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('161', '70', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '10', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '70', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '90', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '180', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '130', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '260', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '100', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '60', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '210', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '170', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '20', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '150', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '190', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '110', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '80', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '240', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '230', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '220', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '160', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '250', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '30', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '200', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '50', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '120', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '270', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '40', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('162', '140', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '50', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '120', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '40', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '250', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '160', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '30', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '220', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '210', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '20', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '230', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '260', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '270', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '170', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '130', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '200', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '240', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '70', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '60', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '100', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '180', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '10', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '150', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '140', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '90', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '110', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '80', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('163', '190', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '240', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '180', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '210', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '120', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '80', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '230', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '90', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '70', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '160', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '270', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '30', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '40', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '200', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '50', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '130', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '250', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '20', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '100', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '260', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '150', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '140', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '110', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '190', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '60', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '220', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '10', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('164', '170', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '120', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '110', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '230', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '50', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '260', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '70', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '80', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '140', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '200', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '220', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '180', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '90', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '10', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '190', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '130', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '210', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '30', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '40', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '150', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '60', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '270', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '100', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '250', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '240', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '170', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '20', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('165', '160', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '180', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '210', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '90', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '140', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '220', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '230', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '30', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '60', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '10', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '70', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '250', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '130', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '20', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '240', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '190', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '200', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '270', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '160', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '110', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '170', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '150', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '260', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '50', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '40', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '120', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '80', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('166', '100', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '90', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '80', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '150', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '70', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '50', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '120', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '180', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '260', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '210', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '190', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '110', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '20', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '10', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '40', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '200', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '130', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '170', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '140', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '270', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '160', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '60', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '220', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '100', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '240', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '30', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '230', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('167', '250', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '110', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '90', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '60', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '50', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '170', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '190', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '260', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '40', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '70', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '240', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '200', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '20', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '40', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '110', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '60', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '250', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '150', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '210', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '230', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '180', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '170', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '80', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '30', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '10', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '100', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '260', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '120', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '90', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '50', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '160', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '140', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '270', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '130', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '220', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('117', '190', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '20', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '230', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '190', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '50', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '40', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '150', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '110', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '140', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '250', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '60', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '170', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '30', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '260', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '270', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '180', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '200', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '120', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '90', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '220', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '160', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '100', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '130', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '10', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '240', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '210', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '80', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('100', '70', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '220', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '180', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '110', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '100', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '160', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '50', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '140', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '260', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '90', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '190', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '210', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '20', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '250', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '30', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '120', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '230', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '200', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '60', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '150', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '80', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '270', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '240', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '10', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '130', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '40', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '170', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('101', '70', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '10', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '50', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '20', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '190', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '250', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '200', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '150', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '260', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '100', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '180', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '30', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '210', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '60', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '160', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '70', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '170', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '240', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '110', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '130', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '40', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '270', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '80', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '140', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '230', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '120', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '220', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('102', '90', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '270', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '40', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '70', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '230', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '60', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '20', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '140', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '10', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '260', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '210', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '250', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '190', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '130', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '30', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '100', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '240', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '160', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '110', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '220', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '80', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '180', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '200', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '90', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '170', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '150', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '120', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('103', '50', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '250', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '50', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '210', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '20', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '160', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '100', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '230', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '60', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '40', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '220', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '190', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '30', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '140', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '110', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '270', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '10', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '120', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '150', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '240', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '80', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '130', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '90', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '200', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '180', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '260', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '170', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('104', '70', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '240', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '230', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '100', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '60', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '220', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '180', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '190', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '160', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '80', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '170', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '120', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '30', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '10', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '200', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '140', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '40', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '270', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '20', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '70', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '110', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '260', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '50', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '130', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '150', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '210', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '250', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('105', '90', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '160', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '150', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '30', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '260', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '210', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '90', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '130', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '220', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '180', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '250', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '80', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '20', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '190', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '60', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '230', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '200', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '70', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '50', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '110', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '240', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '10', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '170', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '40', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '140', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '120', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '100', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('106', '270', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '40', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '120', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '60', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '220', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '30', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '70', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '260', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '90', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '270', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '20', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '250', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '190', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '180', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '150', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '50', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '210', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '200', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '80', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '10', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '100', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '140', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '160', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '240', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '230', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '170', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '130', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('107', '110', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '140', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '270', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '40', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '240', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '60', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '110', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '130', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '160', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '250', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '200', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '20', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '120', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '10', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '50', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '180', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '100', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '210', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '260', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '220', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '30', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '230', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '150', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '190', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '80', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '70', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '90', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('108', '170', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '260', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '230', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '270', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '130', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '240', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '190', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '80', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '210', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '250', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '100', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '140', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '110', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '50', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '40', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '200', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '30', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '60', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '160', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '10', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '150', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '120', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '170', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '180', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '20', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '70', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '220', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('109', '90', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '210', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '260', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '170', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '130', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '190', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '60', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '90', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '240', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '180', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '120', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '220', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '80', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '10', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '150', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '110', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '250', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '200', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '140', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '100', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '160', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '20', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '270', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '70', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '40', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '50', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '230', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('110', '30', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '50', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '10', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '90', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '60', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '110', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '250', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '130', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '20', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '160', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '230', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '100', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '190', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '180', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '240', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '40', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '80', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '140', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '70', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '220', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '210', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '200', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '260', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '270', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '30', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '120', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '150', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('111', '170', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '120', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '250', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '260', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '70', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '110', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '190', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '80', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '160', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '10', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '270', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '90', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '100', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '200', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '220', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '130', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '140', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '210', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '40', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '240', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '150', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '230', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '170', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '50', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '30', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '180', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '20', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('112', '60', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '50', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '230', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '160', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '100', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '250', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '190', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '20', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '10', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '80', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '130', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '90', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '120', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '110', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '180', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '210', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '270', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '140', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '260', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '200', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '220', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '240', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '170', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '40', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '60', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '150', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '70', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('113', '30', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '150', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '80', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '220', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '30', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '160', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '270', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '40', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '210', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '250', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '200', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '90', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '180', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '100', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '110', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '240', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '130', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '20', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '10', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '140', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '120', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '230', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '170', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '190', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '260', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '50', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '70', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('114', '60', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '110', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '150', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '70', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '10', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '260', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '80', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '90', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '270', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '180', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '240', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '200', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '50', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '100', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '20', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '210', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '120', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '190', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '170', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '160', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '60', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '40', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '230', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '140', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '130', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '30', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '220', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('115', '250', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '170', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '240', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '10', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '260', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '60', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '40', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '50', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '90', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '200', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '30', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '190', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '270', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '110', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '180', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '80', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '160', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '230', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '220', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '150', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '120', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '70', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '20', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '130', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '210', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '140', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '100', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('116', '250', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '80', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '20', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '30', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '150', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '200', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '90', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '160', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '130', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '220', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '10', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '140', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '250', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '170', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '60', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '230', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '100', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '270', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '240', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '190', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '180', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '70', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '210', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '40', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '260', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '50', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '120', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('118', '110', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '170', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '100', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '270', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '220', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '160', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '120', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '200', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '70', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '40', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '90', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '110', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '10', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '50', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '190', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '260', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '140', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '210', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '240', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '60', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '30', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '150', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '230', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '130', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '20', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '180', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '250', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('119', '80', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '170', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '180', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '210', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '80', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '70', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '250', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '160', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '130', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '140', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '50', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '10', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '190', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '90', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '260', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '270', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '40', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '60', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '220', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '240', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '20', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '230', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '100', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '150', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '120', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '110', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '30', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('120', '200', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '80', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '100', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '210', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '10', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '110', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '30', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '60', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '180', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '90', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '20', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '270', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '150', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '170', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '70', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '160', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '120', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '220', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '140', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '230', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '240', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '260', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '130', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '50', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '190', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '250', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '40', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('121', '200', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '10', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '100', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '260', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '120', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '90', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '50', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '250', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '170', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '80', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '70', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '200', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '130', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '270', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '30', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '140', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '210', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '110', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '220', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '160', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '40', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '230', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '190', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '20', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '180', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '150', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '240', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('122', '60', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '70', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '220', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '210', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '170', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '180', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '90', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '20', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '30', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '190', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '150', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '250', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '80', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '100', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '110', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '230', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '270', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '10', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '260', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '200', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '120', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '60', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '160', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '130', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '140', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '40', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '50', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('123', '240', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '40', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '110', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '80', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '90', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '190', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '20', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '50', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '70', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '260', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '130', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '240', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '60', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '10', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '200', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '210', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '160', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '270', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '170', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '100', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '220', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '140', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '30', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '250', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '230', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '120', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '150', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('124', '180', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '80', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '210', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '60', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '220', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '260', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '190', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '230', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '50', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '160', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '250', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '10', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '100', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '70', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '270', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '120', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '140', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '90', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '110', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '200', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '130', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '40', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '30', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '240', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '20', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '170', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '150', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('125', '180', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '120', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '170', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '110', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '100', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '210', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '20', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '220', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '250', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '90', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '40', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '30', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '150', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '200', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '270', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '50', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '130', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '160', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '240', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '140', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '10', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '190', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '230', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '80', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '60', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '180', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '70', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('126', '260', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '220', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '40', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '10', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '190', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '50', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '70', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '110', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '120', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '100', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '90', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '60', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '180', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '260', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '200', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '240', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '150', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '170', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '210', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '20', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '80', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '130', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '140', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '30', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '230', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '160', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '250', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('127', '270', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '150', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '10', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '210', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '60', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '80', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '30', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '90', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '170', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '260', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '250', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '240', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '130', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '230', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '50', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '110', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '190', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '220', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '200', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '40', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '100', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '160', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '70', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '270', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '140', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '180', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '120', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('128', '20', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '10', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '200', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '270', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '80', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '20', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '110', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '50', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '90', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '60', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '30', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '150', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '170', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '190', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '160', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '260', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '140', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '240', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '120', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '180', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '220', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '100', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '230', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '130', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '70', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '250', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '40', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('129', '210', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '260', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '210', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '40', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '140', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '150', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '230', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '200', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '30', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '130', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '190', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '250', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '10', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '20', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '90', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '110', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '170', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '70', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '100', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '240', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '80', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '160', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '60', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '120', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '220', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '50', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '180', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('130', '270', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '100', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '150', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '130', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '160', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '110', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '200', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '50', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '140', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '40', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '260', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '10', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '70', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '180', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '210', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '220', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '60', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '250', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '20', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '30', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '270', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '170', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '190', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '80', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '240', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '120', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '90', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('131', '230', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '210', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '260', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '160', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '110', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '40', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '250', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '100', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '140', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '150', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '120', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '200', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '240', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '30', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '70', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '60', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '230', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '50', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '130', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '220', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '10', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '20', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '170', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '180', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '90', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '190', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '270', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('132', '80', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '270', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '210', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '180', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '120', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '50', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '70', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '30', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '20', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '140', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '240', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '220', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '260', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '160', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '150', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '100', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '90', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '110', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '40', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '230', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '80', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '170', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '10', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '130', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '250', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '190', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '200', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('133', '60', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '80', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '220', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '180', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '140', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '90', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '210', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '10', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '190', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '40', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '200', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '110', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '250', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '240', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('134', '160', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '150', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '210', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '260', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '110', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '100', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '190', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '40', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '90', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '120', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '270', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '80', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '10', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '230', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '80', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '240', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '90', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '100', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '30', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '180', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '160', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '10', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '260', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '200', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '150', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '40', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '110', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '60', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '70', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '120', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '170', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '50', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '20', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '230', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '250', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '130', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '210', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '140', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '270', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '190', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('204', '220', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '160', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '180', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '40', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '60', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '110', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '100', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '70', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '20', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '240', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '260', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '230', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '250', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '270', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '190', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '90', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '140', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '150', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '210', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '80', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '10', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '120', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '220', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '130', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '170', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '200', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '30', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('205', '50', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '20', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '200', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '170', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '130', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '150', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '40', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '180', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '210', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '100', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '110', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '70', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '230', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '270', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '80', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '260', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '250', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '240', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '190', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '60', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '10', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '220', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '50', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '120', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '140', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '30', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '160', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('206', '90', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '210', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '10', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '220', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '200', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '140', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '180', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '70', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '30', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '150', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '230', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '240', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '250', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '80', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '270', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '120', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '160', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '100', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '20', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('168', '130', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '200', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '100', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '250', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '70', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '130', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '90', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '110', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '20', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '80', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '30', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '260', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '240', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '140', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '210', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '40', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '220', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '50', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '150', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '190', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '170', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '270', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '10', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '180', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '230', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '120', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '160', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('169', '60', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '110', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '220', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '270', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '140', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '100', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '200', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '250', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '10', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '260', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '30', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '90', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '60', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '120', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '40', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '160', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '70', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '180', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '150', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '240', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '80', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '230', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '190', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '50', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '210', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '20', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '130', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('170', '170', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '270', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '130', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '210', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '260', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '90', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '10', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '250', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '140', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '70', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '190', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '150', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '230', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '80', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '100', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '110', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '30', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '60', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '50', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '180', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '20', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('171', '160', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '210', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '170', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '270', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '20', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '150', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '100', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '50', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('189', '200', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '230', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '250', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '260', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '50', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '220', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '110', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '200', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '10', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '80', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '30', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '60', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '210', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '100', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '40', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '170', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '240', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '150', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '140', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '90', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '70', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '160', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '270', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '120', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '130', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '180', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '20', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('190', '190', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '40', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '200', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '30', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '10', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '180', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '230', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '210', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '150', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '240', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '250', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '270', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '70', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '260', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '160', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '220', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '110', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '120', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '130', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '90', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '190', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '50', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '60', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '20', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '100', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '140', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '170', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('191', '80', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '90', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '40', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '120', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '210', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '160', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '150', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '240', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '10', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '20', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '190', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '170', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '270', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '180', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '130', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '100', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '200', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '260', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '70', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '80', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '50', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '220', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '140', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '230', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '250', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '60', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '30', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('192', '110', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '170', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '60', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '140', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '10', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '260', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '50', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '120', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '30', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '270', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '160', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '190', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '110', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '210', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '250', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '80', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '100', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '130', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '90', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '20', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '180', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '40', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '70', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '220', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '230', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '240', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '150', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('193', '200', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '140', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '20', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '100', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '50', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '110', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '230', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '190', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '70', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '40', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '150', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '80', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '60', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '270', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '160', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '180', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '210', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '120', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '10', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '260', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '250', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '130', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '240', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '200', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '30', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '170', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '220', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('194', '90', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '200', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '180', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '190', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '220', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '80', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '230', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '100', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '130', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '10', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '170', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '60', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '150', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '250', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '270', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '50', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '160', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '260', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '240', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '20', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '210', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '40', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '140', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '90', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '30', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '110', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '70', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('195', '120', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '230', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '150', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '60', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '110', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '80', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '210', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '10', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '40', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '240', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '70', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '160', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '100', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '120', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '130', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '20', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '50', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '220', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '250', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '180', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '170', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '200', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '30', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '270', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '260', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '90', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '190', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('196', '140', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '150', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '230', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '260', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '190', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '120', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '50', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '10', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '70', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '80', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '30', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '180', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '40', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '200', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '110', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '270', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '220', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '140', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '20', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '90', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '210', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '160', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '130', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '100', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '170', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '250', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '240', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('197', '60', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '250', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '160', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '130', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '260', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '170', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '60', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '90', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '70', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '140', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '180', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '30', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '120', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '240', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '50', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '150', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '220', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '110', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '80', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '40', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '190', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '230', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '210', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '200', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '10', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '100', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '270', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('198', '20', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '80', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '170', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '100', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '60', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '20', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '220', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '50', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '120', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '110', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '200', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '230', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '150', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '180', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '70', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '160', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '130', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '260', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '250', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '210', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '30', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '90', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '240', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '140', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '270', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '10', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '40', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('199', '190', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '10', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '240', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '220', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '70', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '180', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '30', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '200', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '250', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '80', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '130', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '140', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '260', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '110', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '40', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '100', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '270', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '230', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '50', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '170', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '60', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '150', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '120', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '190', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '160', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '210', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '20', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('200', '90', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '270', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '150', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '60', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '110', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '130', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '70', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '180', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '100', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '120', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '240', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '20', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '40', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '90', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '250', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '170', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '200', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '30', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '80', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '10', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '260', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '220', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '50', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '140', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '230', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '210', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '190', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('201', '160', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '120', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '230', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '90', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '100', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '220', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '50', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '160', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '60', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '270', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '190', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '240', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '20', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '30', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '130', '14');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '70', '15');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '150', '16');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '180', '17');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '140', '18');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '200', '19');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '80', '20');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '110', '21');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '40', '22');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '210', '23');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '10', '24');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '250', '25');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '170', '26');
INSERT INTO "HR"."OPTIONS" VALUES ('202', '260', '27');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '200', '1');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '60', '2');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '160', '3');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '170', '4');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '180', '5');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '140', '6');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '250', '7');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '70', '8');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '20', '9');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '30', '10');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '220', '11');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '50', '12');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '130', '13');
INSERT INTO "HR"."OPTIONS" VALUES ('203', '240', '14');

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
-- Table structure for PREMIUMMANGAPRODUCTION
-- ----------------------------
DROP TABLE "HR"."PREMIUMMANGAPRODUCTION";
CREATE TABLE "HR"."PREMIUMMANGAPRODUCTION" (
  "PMANGAID" NUMBER VISIBLE NOT NULL,
  "AUTHORID" NUMBER VISIBLE NOT NULL
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
-- Records of PREMIUMMANGAPRODUCTION
-- ----------------------------

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
-- Table structure for REGIONS
-- ----------------------------
DROP TABLE "HR"."REGIONS";
CREATE TABLE "HR"."REGIONS" (
  "REGION_ID" NUMBER VISIBLE NOT NULL,
  "REGION_NAME" VARCHAR2(25 BYTE) VISIBLE
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
-- Records of REGIONS
-- ----------------------------
INSERT INTO "HR"."REGIONS" VALUES ('1', 'Europe');
INSERT INTO "HR"."REGIONS" VALUES ('2', 'Americas');
INSERT INTO "HR"."REGIONS" VALUES ('3', 'Asia');
INSERT INTO "HR"."REGIONS" VALUES ('4', 'Middle East and Africa');

-- ----------------------------
-- View structure for EMP_DETAILS_VIEW
-- ----------------------------
CREATE OR REPLACE VIEW "HR"."EMP_DETAILS_VIEW" AS SELECT
  e.employee_id,
  e.job_id,
  e.manager_id,
  e.department_id,
  d.location_id,
  l.country_id,
  e.first_name,
  e.last_name,
  e.salary,
  e.commission_pct,
  d.department_name,
  j.job_title,
  l.city,
  l.state_province,
  c.country_name,
  r.region_name
FROM
  employees e,
  departments d,
  jobs j,
  locations l,
  countries c,
  regions r
WHERE e.department_id = d.department_id
  AND d.location_id = l.location_id
  AND l.country_id = c.country_id
  AND c.region_id = r.region_id
  AND j.job_id = e.job_id WITH READ ONLY CONSTRAINTS "SYS_C007521";

-- ----------------------------
-- Function structure for ADD_JOB_HISTORY
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "HR"."ADD_JOB_HISTORY" AS
BEGIN
  INSERT INTO job_history (employee_id, start_date, end_date,
                           job_id, department_id)
    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);
END add_job_history;
/

-- ----------------------------
-- Function structure for ASSIGN_EMPLOYEES
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "HR"."ASSIGN_EMPLOYEES" AS
BEGIN
		FOR R IN (SELECT * FROM EMPLOYEES ORDER BY HIRE_DATE ASC)
		LOOP
			FOR P IN (SELECT * FROM OPTIONS WHERE EMPLOYEE_ID = R.EMPLOYEE_ID ORDER BY CHOICE ASC)
			LOOP
				BEGIN
					SELECT LIMIT INTO lim FROM LIMITS WHERE DEPARTMENT_ID = P.DEPARTMENT_ID;
				EXCEPTION
					WHEN NO_DATA_FOUND THEN
						lim := -1;
				END;
				SELECT COUNT(*) INTO tot FROM EMPLOYEE_DEPARTMENT WHERE DEPARTMENT_ID = P.DEPARTMENT_ID;
				IF (lim < 0) OR (tot < lim) THEN
					INSERT INTO EMPLOYEE_DEPARTMENT(EMPLOYEE_ID, DEPARTMENT_ID) VALUES(R.EMPLOYEE_ID, P.DEPARTMENT_ID);
					EXIT;
				END IF;
			END LOOP;
		END LOOP;
END;
/

-- ----------------------------
-- Function structure for BLOG_FUNC
-- ----------------------------
CREATE OR REPLACE
FUNCTION "HR"."BLOG_FUNC" AS
BEGIN
	BLOG_PROC(Id, Ttl, Txt, ans);
	RETURN ans;
END;
/

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
-- Function structure for SECURE_DML
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "HR"."SECURE_DML" AS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205,
		'You may only make changes during normal office hours');
  END IF;
END secure_dml;
/

-- ----------------------------
-- Function structure for TEST_PROC
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "HR"."TEST_PROC" AS
BEGIN
	DBMS_OUTPUT.PUT_LINE(msg);
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
-- Primary Key structure for table COUNTRIES
-- ----------------------------
ALTER TABLE "HR"."COUNTRIES" ADD CONSTRAINT "COUNTRY_C_ID_PK" PRIMARY KEY ("COUNTRY_ID");

-- ----------------------------
-- Checks structure for table COUNTRIES
-- ----------------------------
ALTER TABLE "HR"."COUNTRIES" ADD CONSTRAINT "COUNTRY_ID_NN" CHECK ("COUNTRY_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table DEPARTMENTS
-- ----------------------------
ALTER TABLE "HR"."DEPARTMENTS" ADD CONSTRAINT "DEPT_ID_PK" PRIMARY KEY ("DEPARTMENT_ID");

-- ----------------------------
-- Checks structure for table DEPARTMENTS
-- ----------------------------
ALTER TABLE "HR"."DEPARTMENTS" ADD CONSTRAINT "DEPT_NAME_NN" CHECK ("DEPARTMENT_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Indexes structure for table DEPARTMENTS
-- ----------------------------
CREATE INDEX "HR"."DEPT_LOCATION_IX"
  ON "HR"."DEPARTMENTS" ("LOCATION_ID" ASC)
  LOGGING
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
  FLASH_CACHE DEFAULT
)
   USABLE;

-- ----------------------------
-- Primary Key structure for table DEPARTMENT_SALARY
-- ----------------------------
ALTER TABLE "HR"."DEPARTMENT_SALARY" ADD CONSTRAINT "SYS_C008176" PRIMARY KEY ("DEPARTMENT_ID");

-- ----------------------------
-- Primary Key structure for table EMPLOYEES
-- ----------------------------
ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_EMP_ID_PK" PRIMARY KEY ("EMPLOYEE_ID");

-- ----------------------------
-- Uniques structure for table EMPLOYEES
-- ----------------------------
ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_EMAIL_UK" UNIQUE ("EMAIL") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table EMPLOYEES
-- ----------------------------
ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_EMAIL_NN" CHECK ("EMAIL" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_HIRE_DATE_NN" CHECK ("HIRE_DATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_JOB_NN" CHECK ("JOB_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_LAST_NAME_NN" CHECK ("LAST_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_SALARY_MIN" CHECK (salary > 0) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Indexes structure for table EMPLOYEES
-- ----------------------------
CREATE INDEX "HR"."EMP_DEPARTMENT_IX"
  ON "HR"."EMPLOYEES" ("DEPARTMENT_ID" ASC)
  LOGGING
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
  FLASH_CACHE DEFAULT
)
   USABLE;
CREATE INDEX "HR"."EMP_JOB_IX"
  ON "HR"."EMPLOYEES" ("JOB_ID" ASC)
  LOGGING
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
  FLASH_CACHE DEFAULT
)
   USABLE;
CREATE INDEX "HR"."EMP_MANAGER_IX"
  ON "HR"."EMPLOYEES" ("MANAGER_ID" ASC)
  LOGGING
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
  FLASH_CACHE DEFAULT
)
   USABLE;
CREATE INDEX "HR"."EMP_NAME_IX"
  ON "HR"."EMPLOYEES" ("LAST_NAME" ASC, "FIRST_NAME" ASC)
  LOGGING
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
  FLASH_CACHE DEFAULT
)
   USABLE;

-- ----------------------------
-- Triggers structure for table EMPLOYEES
-- ----------------------------
CREATE TRIGGER "HR"."SECURE_EMPLOYEES" BEFORE DELETE OR INSERT OR UPDATE ON "HR"."EMPLOYEES" REFERENCING OLD AS "OLD" NEW AS "NEW" DISABLE 
BEGIN
  secure_dml;
END secure_employees;
/
CREATE TRIGGER "HR"."UPDATE_JOB_HISTORY" AFTER UPDATE OF "DEPARTMENT_ID", "JOB_ID" ON "HR"."EMPLOYEES" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  add_job_history(:old.employee_id, :old.hire_date, sysdate,
                  :old.job_id, :old.department_id);
END;
/

-- ----------------------------
-- Primary Key structure for table EMPLOYEE_DEPARTMENT
-- ----------------------------
ALTER TABLE "HR"."EMPLOYEE_DEPARTMENT" ADD CONSTRAINT "SYS_C008173" PRIMARY KEY ("EMPLOYEE_ID", "DEPARTMENT_ID");

-- ----------------------------
-- Triggers structure for table EMPLOYEE_DEPARTMENT
-- ----------------------------
CREATE TRIGGER "HR"."TOT_SAL" BEFORE INSERT ON "HR"."EMPLOYEE_DEPARTMENT" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
DECLARE
	c NUMBER;
	s NUMBER;
BEGIN
	SELECT COUNT(*) INTO c FROM EMPLOYEE_DEPARTMENT WHERE DEPARTMENT_ID = :NEW.DEPARTMENT_ID;
	SELECT SALARY INTO s FROM EMPLOYEES WHERE EMPLOYEE_ID = :NEW.EMPLOYEE_ID;
	IF c = 0 THEN
		INSERT INTO DEPARTMENT_SALARY(DEPARTMENT_ID, TOTAL_SALARY) VALUES (:NEW.DEPARTMENT_ID, s);
	ELSE
		UPDATE DEPARTMENT_SALARY SET TOTAL_SALARY = TOTAL_SALARY + s WHERE DEPARTMENT_ID = :NEW.DEPARTMENT_ID;
	END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table GENRE
-- ----------------------------
ALTER TABLE "HR"."GENRE" ADD CONSTRAINT "SYS_C007927" PRIMARY KEY ("GENRENAME");

-- ----------------------------
-- Checks structure for table GENRE
-- ----------------------------
ALTER TABLE "HR"."GENRE" ADD CONSTRAINT "SYS_C007926" CHECK ("GENRENAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table GG
-- ----------------------------
ALTER TABLE "HR"."GG" ADD CONSTRAINT "SYS_C007925" PRIMARY KEY ("MEMBERID", "ANIMEID");

-- ----------------------------
-- Checks structure for table GG
-- ----------------------------
ALTER TABLE "HR"."GG" ADD CONSTRAINT "SYS_C007923" CHECK ("MEMBERID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."GG" ADD CONSTRAINT "SYS_C007924" CHECK ("ANIMEID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table JOBS
-- ----------------------------
ALTER TABLE "HR"."JOBS" ADD CONSTRAINT "JOB_ID_PK" PRIMARY KEY ("JOB_ID");

-- ----------------------------
-- Checks structure for table JOBS
-- ----------------------------
ALTER TABLE "HR"."JOBS" ADD CONSTRAINT "JOB_TITLE_NN" CHECK ("JOB_TITLE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table JOB_HISTORY
-- ----------------------------
ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_EMP_ID_ST_DATE_PK" PRIMARY KEY ("EMPLOYEE_ID", "START_DATE");

-- ----------------------------
-- Checks structure for table JOB_HISTORY
-- ----------------------------
ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_DATE_INTERVAL" CHECK (end_date > start_date) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_EMPLOYEE_NN" CHECK ("EMPLOYEE_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_END_DATE_NN" CHECK ("END_DATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_JOB_NN" CHECK ("JOB_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_START_DATE_NN" CHECK ("START_DATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Indexes structure for table JOB_HISTORY
-- ----------------------------
CREATE INDEX "HR"."JHIST_DEPARTMENT_IX"
  ON "HR"."JOB_HISTORY" ("DEPARTMENT_ID" ASC)
  LOGGING
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
  FLASH_CACHE DEFAULT
)
   USABLE;
CREATE INDEX "HR"."JHIST_EMPLOYEE_IX"
  ON "HR"."JOB_HISTORY" ("EMPLOYEE_ID" ASC)
  LOGGING
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
  FLASH_CACHE DEFAULT
)
   USABLE;
CREATE INDEX "HR"."JHIST_JOB_IX"
  ON "HR"."JOB_HISTORY" ("JOB_ID" ASC)
  LOGGING
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
  FLASH_CACHE DEFAULT
)
   USABLE;

-- ----------------------------
-- Primary Key structure for table LIMITS
-- ----------------------------
ALTER TABLE "HR"."LIMITS" ADD CONSTRAINT "SYS_C008171" PRIMARY KEY ("DEPARTMENT_ID");

-- ----------------------------
-- Primary Key structure for table LOCATIONS
-- ----------------------------
ALTER TABLE "HR"."LOCATIONS" ADD CONSTRAINT "LOC_ID_PK" PRIMARY KEY ("LOCATION_ID");

-- ----------------------------
-- Checks structure for table LOCATIONS
-- ----------------------------
ALTER TABLE "HR"."LOCATIONS" ADD CONSTRAINT "LOC_CITY_NN" CHECK ("CITY" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Indexes structure for table LOCATIONS
-- ----------------------------
CREATE INDEX "HR"."LOC_CITY_IX"
  ON "HR"."LOCATIONS" ("CITY" ASC)
  LOGGING
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
  FLASH_CACHE DEFAULT
)
   USABLE;
CREATE INDEX "HR"."LOC_COUNTRY_IX"
  ON "HR"."LOCATIONS" ("COUNTRY_ID" ASC)
  LOGGING
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
  FLASH_CACHE DEFAULT
)
   USABLE;
CREATE INDEX "HR"."LOC_STATE_PROVINCE_IX"
  ON "HR"."LOCATIONS" ("STATE_PROVINCE" ASC)
  LOGGING
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
  FLASH_CACHE DEFAULT
)
   USABLE;

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
-- Primary Key structure for table MANGAPRODUCTION
-- ----------------------------
ALTER TABLE "HR"."MANGAPRODUCTION" ADD CONSTRAINT "SYS_C007973" PRIMARY KEY ("MANGAID", "AUTHORID");

-- ----------------------------
-- Checks structure for table MANGAPRODUCTION
-- ----------------------------
ALTER TABLE "HR"."MANGAPRODUCTION" ADD CONSTRAINT "SYS_C007971" CHECK ("MANGAID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."MANGAPRODUCTION" ADD CONSTRAINT "SYS_C007972" CHECK ("AUTHORID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
-- Primary Key structure for table OPTIONS
-- ----------------------------
ALTER TABLE "HR"."OPTIONS" ADD CONSTRAINT "SYS_C008168" PRIMARY KEY ("EMPLOYEE_ID", "DEPARTMENT_ID");

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
-- Primary Key structure for table PREMIUMMANGAPRODUCTION
-- ----------------------------
ALTER TABLE "HR"."PREMIUMMANGAPRODUCTION" ADD CONSTRAINT "SYS_C007976" PRIMARY KEY ("PMANGAID", "AUTHORID");

-- ----------------------------
-- Checks structure for table PREMIUMMANGAPRODUCTION
-- ----------------------------
ALTER TABLE "HR"."PREMIUMMANGAPRODUCTION" ADD CONSTRAINT "SYS_C007974" CHECK ("PMANGAID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."PREMIUMMANGAPRODUCTION" ADD CONSTRAINT "SYS_C007975" CHECK ("AUTHORID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
-- Primary Key structure for table REGIONS
-- ----------------------------
ALTER TABLE "HR"."REGIONS" ADD CONSTRAINT "REG_ID_PK" PRIMARY KEY ("REGION_ID");

-- ----------------------------
-- Checks structure for table REGIONS
-- ----------------------------
ALTER TABLE "HR"."REGIONS" ADD CONSTRAINT "REGION_ID_NN" CHECK ("REGION_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ADMIN
-- ----------------------------
ALTER TABLE "HR"."ADMIN" ADD CONSTRAINT "SYS_C007920" FOREIGN KEY ("ADMINID") REFERENCES "HR"."PERSON" ("ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ANIME
-- ----------------------------
ALTER TABLE "HR"."ANIME" ADD CONSTRAINT "SYS_C007940" FOREIGN KEY ("PRODUCERID") REFERENCES "HR"."PRODUCER" ("PRODUCERID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table COUNTRIES
-- ----------------------------
ALTER TABLE "HR"."COUNTRIES" ADD CONSTRAINT "COUNTR_REG_FK" FOREIGN KEY ("REGION_ID") REFERENCES "HR"."REGIONS" ("REGION_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table DEPARTMENTS
-- ----------------------------

-- ----------------------------
-- Foreign Keys structure for table DEPARTMENT_SALARY
-- ----------------------------
ALTER TABLE "HR"."DEPARTMENT_SALARY" ADD CONSTRAINT "SYS_C008177" FOREIGN KEY ("DEPARTMENT_ID") REFERENCES "HR"."DEPARTMENTS" ("DEPARTMENT_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table EMPLOYEES
-- ----------------------------

-- ----------------------------
-- Foreign Keys structure for table EMPLOYEE_DEPARTMENT
-- ----------------------------
ALTER TABLE "HR"."EMPLOYEE_DEPARTMENT" ADD CONSTRAINT "SYS_C008174" FOREIGN KEY ("EMPLOYEE_ID") REFERENCES "HR"."EMPLOYEES" ("EMPLOYEE_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."EMPLOYEE_DEPARTMENT" ADD CONSTRAINT "SYS_C008175" FOREIGN KEY ("DEPARTMENT_ID") REFERENCES "HR"."DEPARTMENTS" ("DEPARTMENT_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table JOB_HISTORY
-- ----------------------------

-- ----------------------------
-- Foreign Keys structure for table LIMITS
-- ----------------------------
ALTER TABLE "HR"."LIMITS" ADD CONSTRAINT "SYS_C008172" FOREIGN KEY ("DEPARTMENT_ID") REFERENCES "HR"."DEPARTMENTS" ("DEPARTMENT_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table LOCATIONS
-- ----------------------------

-- ----------------------------
-- Foreign Keys structure for table MANGA
-- ----------------------------
ALTER TABLE "HR"."MANGA" ADD CONSTRAINT "SYS_C007948" FOREIGN KEY ("AUTHORID") REFERENCES "HR"."AUTHOR" ("AUTHORID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table MEMBER
-- ----------------------------
ALTER TABLE "HR"."MEMBER" ADD CONSTRAINT "SYS_C007922" FOREIGN KEY ("MEMBERID") REFERENCES "HR"."PERSON" ("ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table OPTIONS
-- ----------------------------
ALTER TABLE "HR"."OPTIONS" ADD CONSTRAINT "SYS_C008169" FOREIGN KEY ("EMPLOYEE_ID") REFERENCES "HR"."EMPLOYEES" ("EMPLOYEE_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HR"."OPTIONS" ADD CONSTRAINT "SYS_C008170" FOREIGN KEY ("DEPARTMENT_ID") REFERENCES "HR"."DEPARTMENTS" ("DEPARTMENT_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table PREMIUMANIME
-- ----------------------------
ALTER TABLE "HR"."PREMIUMANIME" ADD CONSTRAINT "SYS_C007944" FOREIGN KEY ("PRODUCERID") REFERENCES "HR"."PRODUCER" ("PRODUCERID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table PREMIUMMANGA
-- ----------------------------
ALTER TABLE "HR"."PREMIUMMANGA" ADD CONSTRAINT "SYS_C007952" FOREIGN KEY ("AUTHORID") REFERENCES "HR"."AUTHOR" ("AUTHORID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
