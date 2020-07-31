DROP TABLE EXP;
DROP TABLE COACH;
DROP TABLE EXPTYPE;
DROP TABLE MEMBER;

DROP SEQUENCE exptype_seq;
DROP SEQUENCE member_seq;
DROP SEQUENCE coach_seq;
------------------------------------------------------------
CREATE TABLE MEMBER (
    MEMBER_ID VARCHAR2(30) PRIMARY KEY NOT NULL,
    MEM_NAME VARCHAR2(20) NOT NULL,
    MEM_SEX VARCHAR2(10) NOT NULL,
    MEM_ACCOUNT VARCHAR2(16) NOT NULL,
    MEM_PSW VARCHAR2(16) NOT NULL,
    MEM_IMG BLOB, 
    MEM_EMAIL VARCHAR2(50) NOT NULL,
    MEM_PHONE VARCHAR2(10) NOT NULL,
    MEM_BIRTH DATE NOT NULL,
    MEM_ADDR VARCHAR2(100) NOT NULL,
    MEM_CLOSE NUMBER(1,0),
    MEM_CARD VARCHAR2(200)
);

CREATE SEQUENCE member_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

ALTER SESSION SET NLS_DATE_FORMAT = 'yyyy-mm-dd';
ALTER SESSION SET NLS_TIMESTAMP_FORMAT = 'yyyy-mm-dd hh24:mi:ss';

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '玲顏', '女', 'kallie', 'UQo9vz', 'natalie37@hotmail.com', '0908846080', '2002-05-14', 
'金門縣金寧鄉', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '心巢', '男', 'fwelch', 'zJgr~Q', 'ankunding.elena@cremin.biz', '0921576283', '1986-08-01', 
'臺北市信義區', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '宜軒', '男', 'kathleen', 'bx*mS2', 'joanne27@collins.biz', '0931396068', '1973-05-20', 
'臺東縣卑南鄉', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '儀宜', '女', 'julia47', 'Z2ZH', 'hudson@collier.biz', '0945663609', '2006-11-25', 
'臺南市麻豆區', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '伶宜', '女', 'zledner', 'IED#Qex', 'alaina@bergnaum.com', '0989126066', '1983-08-01', 
'彰化縣溪湖鎮', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '賢文', '男', 'marian43', 'L4V!P', 'jeffery37@berg.com', '0969634862', '1991-08-31',
'臺北市中正區', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '依佩', '女', 'berger', 'JX&~D', 'hunter63@lindgren.com', '0912696396', '1989-12-11',
'臺北市大安區', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '傑庭', '男', 'jayden', 'JVe55', 'kimberly@yahoo.com', '0921885246', '1982-06-14',
'嘉義市西區', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '心宏', '男', ' jett', 'Be6u4jT', 'wiza@gibson.com', '0957971362', '1989-10-25',
'花蓮縣玉里鎮', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '華銘', '男', 'collin46', '456wuSS', 'julien12@gmail.com', '0907466169', '1997-05-17',
'高雄市茂林區', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '婷芬', '女', 'leannon', '1zjaA', 'rupton@hotmail.com', '0928716649', '1994-02-02',
'新竹市北區', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '建庭', '男', 'ydibbert', 'Y0CcXE', 'clare83@stanton.com', '0993525967', '2000-06-06',
'桃園市大溪區', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '家孟', '男', 'maxwell', 'KLKWNB', 'kbraun@torp.com', '0912122323', '1986-11-02',
'新竹市北區', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '景樺', '男', 'okonopelski', 'LP8{,Ap$', 'shields@weimann.com', '0915665934', '1996-05-02',
'新竹市香山區', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '心貝', '女', 'maggio', 'j69squ', 'mills.zachery@zieme.com', '0915857437', '1999-03-01',
'金門縣金沙鎮', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '怡如', '女', 'olson', 'qwe882', 'kkoelpin@yahoo.com', '0959555266', '1997-12-21',
'新北市新店區', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '王軒', '男', 'johnston', 'U1r5bu', 'jared55@lehner.com', '0950307088', '1983-01-10',
'新北市三重區', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '心欣', '女', 'shirley16', 'cvb78156', 'garrick86@hotmail.com', '0948932452', '1995-07-19',
'台北市中山區', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '銘信', '男', 'mara', ' 7AhPjG', 'kale40@herman.com', '0968570564', '1992-07-09',
'新北市淡水區', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '淑貞', '女', 'ebartell', ' kT2ZXCj', 'anastacio85@hotmail.com', '0963377264', '2002-02-23',
'花蓮縣瑞穗鄉', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '大偉', '男', 'eliseo92', ' P45QkIM', 'bfay@grimes.com', '0976448057', '1994-01-31',
'花蓮縣吉安鄉', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '華宏', '男', 'imoen', ' ttcDUM', 'parisian@yahoo.com', '0955272089', '1982-04-30',
'臺南市下營區', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '詩梁', '男', 'emiliano45', ' ggu0p4', 'oturner@yahoo.com', '0906611094', '1985-02-07',
'新竹縣北埔鄉', '0');

INSERT INTO MEMBER (MEMBER_ID, MEM_NAME, MEM_SEX, MEM_ACCOUNT, MEM_PSW, MEM_EMAIL, MEM_PHONE, MEM_BIRTH, MEM_ADDR, MEM_CLOSE) 
VALUES ('M' || LPAD (member_seq.NEXTVAL, 3, '0'), '美鞠', '女', 'aryanna', ' nsp666', 'zrowe@yahoo.com', '0988643963', '1999-01-17',
'金門縣烏坵鄉', '0');

COMMIT;
-----------------------------------------------------------------------------
CREATE TABLE COACH (
    COACH_ID VARCHAR2(10) PRIMARY KEY NOT NULL,
    MEMBER_ID VARCHAR2(10) NOT NULL,
    EXPERIENCE VARCHAR2(600) NOT NULL,
    ISCOACH NUMBER(1,0),
    COACH_IMG BLOB,
    FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER (MEMBER_ID)
);

CREATE SEQUENCE coach_seq
INCREMENT BY 1
START WITH 01
NOMAXVALUE
NOCYCLE
NOCACHE;

INSERT INTO COACH (COACH_ID, MEMBER_ID, EXPERIENCE, ISCOACH) 
VALUES ('C' || LPAD (coach_seq.NEXTVAL, 2, '0'), 'M003',
'FISAF體適能指導員、個人運動訓練師
NSPA美國專業體能訓練專家體能訓練師
RTS國際抗阻力專家教練證
TRX懸浮式訓練指導員
ViPR 體能訓練系統教練
MCT人體肌筋膜按壓指導教練
Les Mills BODYPUMP 曲線槓鈴指導員
中華民國成人游泳協會B級教練
水上救生協會救生員、CPR+AED合格證書', '0');

INSERT INTO COACH (COACH_ID, MEMBER_ID, EXPERIENCE, ISCOACH) 
VALUES ('C' || LPAD (coach_seq.NEXTVAL, 2, '0'), 'M005',
'AASFP亞洲運動及體適能專業學院認證
TRX懸吊系統訓練指導員
Rumble Roller深層放鬆認證
中華健身運動協會體適能C級指導員認證
ViPR PRO功能訓練系統認證
紅十字會急救員CPR、AED認證', '0');

INSERT INTO COACH (COACH_ID, MEMBER_ID, EXPERIENCE, ISCOACH) 
VALUES ('C' || LPAD (coach_seq.NEXTVAL, 2, '0'), 'M008',
'RTS國際阻力訓練認證
ICEI整合矯正性訓練認證
AAFSP拳擊認證
中華民國體適能C级
VIPR 功能訓練系統認證
SandBell 沙鈴認證
Function Zone多功能核心地墊認證', '0');

INSERT INTO COACH (COACH_ID, MEMBER_ID, EXPERIENCE, ISCOACH) 
VALUES ('C' || LPAD (coach_seq.NEXTVAL, 2, '0'), 'M018',
'AASFP亞洲運動及體適能專業學院認證
TRX懸吊系統訓練指導員
Rumble Roller深層放鬆認證
代謝型龐德運動飲食研習認證
PBT拳擊訓練師認證
ViPR PRO功能訓練系統認證
紅十字會急救員CPR、AED認證
World Gym Taiwan體適能教練認證', '0');

COMMIT;
-----------------------------------------------------------------------------------
CREATE TABLE EXPTYPE (
    EXP_ID VARCHAR2(5) PRIMARY KEY NOT NULL,
    EXP_NAME VARCHAR2(50)
);

CREATE SEQUENCE exptype_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

INSERT INTO EXPTYPE (EXP_ID, EXP_NAME) 
VALUES ('S' || LPAD (exptype_seq.NEXTVAL, 2, '0'), '增肌訓練');

INSERT INTO EXPTYPE (EXP_ID, EXP_NAME) 
VALUES ('S' || LPAD (exptype_seq.NEXTVAL, 2, '0'), '重量訓練');

INSERT INTO EXPTYPE (EXP_ID, EXP_NAME) 
VALUES ('S' || LPAD (exptype_seq.NEXTVAL, 2, '0'), '體態雕塑');

INSERT INTO EXPTYPE (EXP_ID, EXP_NAME) 
VALUES ('S' || LPAD (exptype_seq.NEXTVAL, 2, '0'), '基礎拳擊');

INSERT INTO EXPTYPE (EXP_ID, EXP_NAME) 
VALUES ('S' || LPAD (exptype_seq.NEXTVAL, 2, '0'), 'TRX懸吊訓練');

INSERT INTO EXPTYPE (EXP_ID, EXP_NAME) 
VALUES ('S' || LPAD (exptype_seq.NEXTVAL, 2, '0'), '核心訓練');

INSERT INTO EXPTYPE (EXP_ID, EXP_NAME) 
VALUES ('S' || LPAD (exptype_seq.NEXTVAL, 2, '0'), '減脂瘦身課程');

INSERT INTO EXPTYPE (EXP_ID, EXP_NAME) 
VALUES ('S' || LPAD (exptype_seq.NEXTVAL, 2, '0'), '游泳教學');

INSERT INTO EXPTYPE (EXP_ID, EXP_NAME) 
VALUES ('S' || LPAD (exptype_seq.NEXTVAL, 2, '0'), '基礎瑜珈');

INSERT INTO EXPTYPE (EXP_ID, EXP_NAME) 
VALUES ('S' || LPAD (exptype_seq.NEXTVAL, 2, '0'), '燃脂飛輪');

COMMIT;
-------------------------------------------------------------------------
CREATE TABLE EXP (
    COACH_ID VARCHAR2(10),
    EXP_ID VARCHAR2(5),
    LICENSE BLOB,
    ISEXP NUMBER(1,0),
    CONSTRAINT SKILL PRIMARY KEY(COACH_ID,EXP_ID),
    FOREIGN KEY (COACH_ID) REFERENCES COACH (COACH_ID),
    FOREIGN KEY (EXP_ID) REFERENCES EXPTYPE (EXP_ID)
);

--教練C01
INSERT INTO EXP (COACH_ID, EXP_ID, ISEXP) 
VALUES ('C01', 'S01', '1');

INSERT INTO EXP (COACH_ID, EXP_ID, ISEXP) 
VALUES ('C01', 'S02', '1');

INSERT INTO EXP (COACH_ID, EXP_ID, ISEXP) 
VALUES ('C01', 'S03', '1');

INSERT INTO EXP (COACH_ID, EXP_ID, ISEXP) 
VALUES ('C01', 'S05', '1');

INSERT INTO EXP (COACH_ID, EXP_ID, ISEXP) 
VALUES ('C01', 'S06', '1');

--教練C02
INSERT INTO EXP (COACH_ID, EXP_ID, ISEXP) 
VALUES ('C02', 'S03', '1');

INSERT INTO EXP (COACH_ID, EXP_ID, ISEXP) 
VALUES ('C02', 'S06', '1');

INSERT INTO EXP (COACH_ID, EXP_ID, ISEXP) 
VALUES ('C02', 'S07', '1');

INSERT INTO EXP (COACH_ID, EXP_ID, ISEXP) 
VALUES ('C02', 'S09', '1');

--教練C03
INSERT INTO EXP (COACH_ID, EXP_ID, ISEXP) 
VALUES ('C03', 'S02', '1');

INSERT INTO EXP (COACH_ID, EXP_ID, ISEXP) 
VALUES ('C03', 'S04', '1');

INSERT INTO EXP (COACH_ID, EXP_ID, ISEXP) 
VALUES ('C03', 'S06', '1');

INSERT INTO EXP (COACH_ID, EXP_ID, ISEXP) 
VALUES ('C03', 'S08', '1');

INSERT INTO EXP (COACH_ID, EXP_ID, ISEXP) 
VALUES ('C03', 'S10', '1');

--教練C04
INSERT INTO EXP (COACH_ID, EXP_ID, ISEXP) 
VALUES ('C04', 'S03', '1');

INSERT INTO EXP (COACH_ID, EXP_ID, ISEXP) 
VALUES ('C04', 'S06', '1');

INSERT INTO EXP (COACH_ID, EXP_ID, ISEXP) 
VALUES ('C04', 'S07', '1');

INSERT INTO EXP (COACH_ID, EXP_ID, ISEXP) 
VALUES ('C04', 'S08', '1');

COMMIT;