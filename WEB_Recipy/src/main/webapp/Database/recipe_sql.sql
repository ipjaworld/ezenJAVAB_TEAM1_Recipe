
/* Drop Triggers */

DROP TRIGGER TRI_favorite_fnum;
DROP TRIGGER TRI_interest_interestnum;
DROP TRIGGER TRI_qna_qseq;
DROP TRIGGER TRI_reply_replyseq;



/* Drop Tables */

DROP TABLE admins CASCADE CONSTRAINTS;
DROP TABLE favorite CASCADE CONSTRAINTS;
DROP TABLE image CASCADE CONSTRAINTS;
DROP TABLE ingredient CASCADE CONSTRAINTS;
DROP TABLE interest CASCADE CONSTRAINTS;
DROP TABLE kind CASCADE CONSTRAINTS;
DROP TABLE qna CASCADE CONSTRAINTS;
DROP TABLE reply CASCADE CONSTRAINTS;
DROP TABLE recipe CASCADE CONSTRAINTS;
DROP TABLE members CASCADE CONSTRAINTS;

select * from tabs;


/* Drop Sequences */

DROP SEQUENCE SEQ_favorite_fnum;
DROP SEQUENCE SEQ_interest_interestnum;
DROP SEQUENCE SEQ_qna_qseq;
DROP SEQUENCE SEQ_reply_replyseq;




/* Create Sequences */

CREATE SEQUENCE SEQ_favorite_fnum INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_interest_interestnum INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_qna_qseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_reply_replyseq INCREMENT BY 1 START WITH 1;

create sequence recipe_seq increment by 1 start with 1;

/* Create Tables */

CREATE TABLE admins
(
	aid varchar2(20) NOT NULL,
	pwd varchar2(20) NOT NULL,
	phone varchar2(20) NOT NULL,
	PRIMARY KEY (aid)
);


CREATE TABLE favorite
(
	fnum number(5) NOT NULL,
	id varchar2(20) NOT NULL,
	rnum number(20) NOT NULL,
	PRIMARY KEY (fnum)
);


CREATE TABLE processImg
(
	iseq number(5) NOT NULL,
	links varchar2(1000) NOT NULL,
	description varchar2(1000) NOT NULL,
	rnum number(20) NOT NULL,
	PRIMARY KEY (iseq)
);


CREATE TABLE ingredient
(
	rnum number(20) NOT NULL,
	iname varchar2(20),
	quantity varchar2(10) NOT NULL,
	price number(10)
);


CREATE TABLE interest
(
	interestnum number(5) NOT NULL,
	id varchar2(20) NOT NULL,
	rnum number(20) NOT NULL,
	PRIMARY KEY (interestnum)
);


CREATE TABLE kind
(
	type number(5) DEFAULT 0,
	rec number(5) DEFAULT 0,
	ing number(5) DEFAULT 0,
	theme number(5) DEFAULT 0
);


CREATE TABLE members
(
	id varchar2(20) NOT NULL,
	pwd varchar2(20) NOT NULL,
	name varchar2(20) NOT NULL,
	phone varchar2(20) NOT NULL,
	email varchar2(50) NOT NULL,
	nick varchar2(20) NOT NULL,
	address1 varchar2(100) NOT NULL,
	address2 varchar2(100),
	zip_num varchar2(10) NOT NULL,
	indate date DEFAULT sysdate,
	img varchar2(1000),
	PRIMARY KEY (id)
);


CREATE TABLE qna
(
	qseq number(5) NOT NULL,
	id varchar2(20) NOT NULL,
	qsubject varchar2(30) NOT NULL,
	qnadate date DEFAULT sysdate,
	qcontent varchar2(1000) NOT NULL,
	secret char(1) DEFAULT '0' NOT NULL,
	replyQna varchar2(1000),
	rep number(1) DEFAULT 1,
	PRIMARY KEY (qseq)
);


CREATE TABLE recipe
(
	rnum number(20) NOT NULL,
	id varchar2(20) NOT NULL,
	subject varchar2(50) NOT NULL,
	content varchar2(1000) NOT NULL,
	indate date DEFAULT sysdate,
	views number(10) DEFAULT 0 NOT NULL,
	time number(5) NOT NULL,
	likes number(10) DEFAULT 0,
	type number(5) DEFAULT 0,
	ing number(5) DEFAULT 0,
	theme number(5) DEFAULT 0,
	rec number(5) DEFAULT 0,
	report number(5) DEFAULT 0,
	PRIMARY KEY (rnum)
);


CREATE TABLE reply
(
	replyseq number(5) NOT NULL,
	id varchar2(20) NOT NULL,
	rnum number(20) NOT NULL,
	content varchar2(1000) NOT NULL,
	replydate date DEFAULT sysdate,
	PRIMARY KEY (replyseq)
);



/* Create Foreign Keys */

ALTER TABLE favorite
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;


ALTER TABLE interest
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;


ALTER TABLE qna
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;


ALTER TABLE recipe
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;


ALTER TABLE reply
	ADD FOREIGN KEY (id)
	REFERENCES members (id)
;


ALTER TABLE favorite
	ADD FOREIGN KEY (rnum)
	REFERENCES recipe (rnum)
;


ALTER TABLE processImg
	ADD FOREIGN KEY (rnum)
	REFERENCES recipe (rnum)
;


ALTER TABLE ingredient
	ADD FOREIGN KEY (rnum)
	REFERENCES recipe (rnum)
;


ALTER TABLE interest
	ADD FOREIGN KEY (rnum)
	REFERENCES recipe (rnum)
;


ALTER TABLE reply
	ADD FOREIGN KEY (rnum)
	REFERENCES recipe (rnum)
;



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_favorite_fnum BEFORE INSERT ON favorite
FOR EACH ROW
BEGIN
	SELECT SEQ_favorite_fnum.nextval
	INTO :new.fnum
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_interest_interestnum BEFORE INSERT ON interest
FOR EACH ROW
BEGIN
	SELECT SEQ_interest_interestnum.nextval
	INTO :new.interestnum
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_qna_qseq BEFORE INSERT ON qna
FOR EACH ROW
BEGIN
	SELECT SEQ_qna_qseq.nextval
	INTO :new.qseq
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_reply_replyseq BEFORE INSERT ON reply
FOR EACH ROW
BEGIN
	SELECT SEQ_reply_replyseq.nextval
	INTO :new.replyseq
	FROM dual;
END;

/




