CREATE TABLE AREAS (
  PersonID mediumint NOT NULL,
  TheseNo mediumint NOT NULL,
  Area varchar(25) NOT NULL,
  PRIMARY KEY (PersonID,TheseNo,Area)
);

CREATE TABLE ASSIST_PROF (
  PersonID mediumint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (PersonID)
);

CREATE TABLE ASSISTS (
  SectionID mediumint NOT NULL AUTO_INCREMENT,
  AssistID mediumint NOT NULL,
  PRIMARY KEY (SectionID,AssistID)
);

CREATE TABLE ASSOC_PROF (
  PersonID mediumint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (PersonID)
);

CREATE TABLE COLLEGE (
  CName varchar(60) NOT NULL,
  CPhone varchar(10),
  COffice tinytext,
  DeanID mediumint,
  PRIMARY KEY (CName)
);

CREATE TABLE COURSE (
  CoCode mediumint NOT NULL AUTO_INCREMENT,
  CoName tinytext,
  CoDesc tinytext,
  Credits tinyint,
  Level tinyint,
  CurrCode mediumint,
  CoType tinyint,
  PRIMARY KEY (CoCode)
);

CREATE TABLE TAKES (
  PersonID mediumint NOT NULL AUTO_INCREMENT,
  SectionID mediumint NOT NULL,
  SecPoint tinyint,
  PRIMARY KEY (PersonID,SectionID)
);

CREATE TABLE CURRICULUM (
  CurrCode mediumint NOT NULL AUTO_INCREMENT,
  Validity year,
  EdType tinyint(1),
  EdLang varchar(5),
  DCode mediumint,
  PRIMARY KEY (CurrCode)
);

CREATE TABLE DEPARTMENT (
  DCode mediumint NOT NULL AUTO_INCREMENT,
  DName tinytext,
  DOffice tinytext,
  DPhone varchar(10),
  DArea tinyint,
  CName varchar(60),
  ChairID mediumint,
  CStartDate date,
  PRIMARY KEY (DCode)
);

CREATE TABLE DEPT_MAJOR (
  MajorCode tinyint NOT NULL AUTO_INCREMENT,
  MajorName varchar(40),
  PRIMARY KEY (MajorCode)
);

CREATE TABLE FAC_MEMBER (
  PersonID mediumint NOT NULL AUTO_INCREMENT,
  DCode mediumint,
  LecType tinyint,
  PRIMARY KEY (PersonID)
);

CREATE TABLE INSTRUCTOR (
  InstID mediumint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (InstID)
);

CREATE TABLE SUBJECTS (
  CoCode mediumint NOT NULL AUTO_INCREMENT,
  Subject varchar(25) NOT NULL,
  PRIMARY KEY (CoCode,Subject)
);

CREATE TABLE LABORATORY (
  SectionID mediumint NOT NULL AUTO_INCREMENT,
  LWeekDays binary(5),
  LBuilding tinytext,
  LRoomNo tinyint,
  PRIMARY KEY (SectionID)
);

CREATE TABLE MANDATORY (
  CoCode mediumint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (CoCode)
);

CREATE TABLE N_TECHNICAL (
  CoCode mediumint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (CoCode)
);

CREATE TABLE OPTIONAL (
  CoCode mediumint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (CoCode)
);

CREATE TABLE PERSON (
  PersonID mediumint NOT NULL AUTO_INCREMENT,
  Fname varchar(20),
  Mname varchar(20),
  Lname varchar(20),
  Phone varchar(10),
  Address tinytext,
  PRIMARY KEY (PersonID)
);

CREATE TABLE PROFFESOR (
  PersonID mediumint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (PersonID)
);

CREATE TABLE RES_ASSIST (
  PersonID mediumint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (PersonID)
);

CREATE TABLE SECTION (
  SectionID mediumint NOT NULL AUTO_INCREMENT,
  Semester tinyint(1),
  SecYear year,
  CoCode mediumint,
  PRIMARY KEY (SectionID)
);

CREATE TABLE STUDENT (
  PersonID mediumint NOT NULL AUTO_INCREMENT,
  DOB date,
  DCode mediumint,
  PRIMARY KEY (PersonID)
);

CREATE TABLE STUDIES (
  PersonID mediumint NOT NULL AUTO_INCREMENT,
  TheseNo mediumint NOT NULL,
  TheseName tinytext,
  TheseType tinytext,
  PubYear year,
  PRIMARY KEY (PersonID,TheseNo)
);

CREATE TABLE TEACHES (
  SectionID mediumint NOT NULL AUTO_INCREMENT,
  InstID mediumint NOT NULL,
  PRIMARY KEY (SectionID,InstID)
);

CREATE TABLE TECHNICAL (
  CoCode mediumint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (CoCode)
);

CREATE TABLE THEORETICAL (
  SectionID mediumint NOT NULL AUTO_INCREMENT,
  TWeekDays binary(5),
  TBuilding tinytext,
  TRoomNo tinyint,
  PRIMARY KEY (SectionID)
);

