DROP TABLE COURSE_DATE;
DROP TABLE COURSE_ORDER;
DROP TABLE COUPON;
DROP TABLE COURSE_FAVOR;
DROP TABLE COURSE_SET;
DROP TABLE COURSE;
-------------------------------------------------

CREATE TABLE COURSE(
	COURSE_ID VARCHAR2(10) PRIMARY KEY NOT NULL,
	COACH_ID VARCHAR2(10) NOT NULL,
	CNAME VARCHAR2(300) NOT NULL,
	INTRO VARCHAR2(4000),
	EXP_ID VARCHAR2(5) NOT NULL,
	LOC VARCHAR2(300) NOT NULL,
	PIC1 BLOB,
	PIC2 BLOB,
	PIC3 BLOB,
	INITSTAMP TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	CSTATE NUMBER(2,0) NOT NULL,
    FOREIGN KEY (COACH_ID) REFERENCES COACH (COACH_ID),
    FOREIGN KEY (EXP_ID) REFERENCES EXPTYPE (EXP_ID)
);

CREATE TABLE COURSE_SET(
	SET_ID VARCHAR2(10) PRIMARY KEY NOT NULL,
	COURSE_ID VARCHAR2(10) NOT NULL,
	LESSON NUMBER(2,0) NOT NULL,
	PRICE NUMBER(6,0) NOT NULL,
	FOREIGN KEY (COURSE_ID) REFERENCES COURSE (COURSE_ID)
);

CREATE TABLE COURSE_FAVOR(
	COURSE_ID VARCHAR2(10) NOT NULL,
	MEMBER_ID VARCHAR2(10) NOT NULL,
	CONSTRAINT PK_COURSE_FAVOR PRIMARY KEY (COURSE_ID, MEMBER_ID),
	FOREIGN KEY (COURSE_ID) REFERENCES COURSE (COURSE_ID),
    FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER (MEMBER_ID)
);

CREATE TABLE COUPON(
	COUPON_ID NUMBER(8,0) PRIMARY KEY NOT NULL,
	COUPON_DISC NUMBER(6,0) NOT NULL,
	STATE NUMBER(2,0) NOT NULL
);

CREATE TABLE COURSE_ORDER(
	ORDER_ID VARCHAR2(10) PRIMARY KEY NOT NULL,
	MEMBER_ID VARCHAR2(10) NOT NULL,
	SET_ID VARCHAR2(10) NOT NULL,
	LESSON NUMBER(2,0) NOT NULL,
	ORDERPRICE NUMBER(6,0) NOT NULL,
	COUPON_ID NUMBER(8,0),
	DISC NUMBER(6,0),
	TOTALPRICE NUMBER(6,0) NOT NULL,
	RD_LESSON NUMBER(2,0),
	INITSTAMP TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	COM_STAR NUMBER(2,0),
	COM_CONTENT VARCHAR2(300),
	COM_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	STATE NUMBER(2,0) NOT NULL,
	FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER (MEMBER_ID),
	FOREIGN KEY (SET_ID) REFERENCES COURSE_SET (SET_ID),
	FOREIGN KEY (COUPON_ID) REFERENCES COUPON (COUPON_ID)
);

CREATE TABLE COURSE_DATE(
	CDATE_ID VARCHAR2(10) PRIMARY KEY NOT NULL,
	ORDER_ID VARCHAR2(10) NOT NULL,
	CDATE DATE NOT NULL,
	CTIME VARCHAR2(24) NOT NULL,
	INITSTAMP TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	STATE NUMBER(2,0) NOT NULL,
	FOREIGN KEY (ORDER_ID) REFERENCES COURSE_ORDER (ORDER_ID)
);
