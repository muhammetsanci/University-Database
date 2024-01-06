ALTER TABLE ASSIST_PROF ADD CONSTRAINT assist_prof_ibfk_1 FOREIGN KEY (PersonID) REFERENCES INSTRUCTOR (InstID);
ALTER TABLE ASSOC_PROF ADD CONSTRAINT assoc_prof_ibfk_1 FOREIGN KEY (PersonID) REFERENCES INSTRUCTOR (InstID);
ALTER TABLE PROFFESOR ADD CONSTRAINT proffesor_ibfk_1 FOREIGN KEY (PersonID) REFERENCES INSTRUCTOR (InstID);
ALTER TABLE RES_ASSIST ADD CONSTRAINT res_assist_ibfk_1 FOREIGN KEY (PersonID) REFERENCES FAC_MEMBER (PersonID);
ALTER TABLE INSTRUCTOR ADD CONSTRAINT instructor_ibfk_1 FOREIGN KEY (InstID) REFERENCES FAC_MEMBER (PersonID);
ALTER TABLE ASSISTS ADD CONSTRAINT assists_ibfk_1 FOREIGN KEY (SectionID) REFERENCES SECTION (SectionID);
ALTER TABLE ASSISTS ADD CONSTRAINT assists_ibfk_2 FOREIGN KEY (AssistID) REFERENCES RES_ASSIST (PersonID);
ALTER TABLE TEACHES ADD CONSTRAINT teaches_ibfk_1 FOREIGN KEY (SectionID) REFERENCES SECTION (SectionID);
ALTER TABLE TEACHES ADD CONSTRAINT teaches_ibfk_2 FOREIGN KEY (InstID) REFERENCES INSTRUCTOR (InstID);
ALTER TABLE AREAS ADD CONSTRAINT areas_ibfk_1 FOREIGN KEY (PersonID, TheseNo) REFERENCES STUDIES (PersonID, TheseNo);
ALTER TABLE COLLEGE ADD CONSTRAINT college_ibfk_1 FOREIGN KEY (DeanID) REFERENCES PROFFESOR (PersonID);
ALTER TABLE COURSE ADD CONSTRAINT course_ibfk_1 FOREIGN KEY (CurrCode) REFERENCES CURRICULUM (CurrCode);
ALTER TABLE CURRICULUM ADD CONSTRAINT curriculum_ibfk_1 FOREIGN KEY (DCode) REFERENCES DEPARTMENT (DCode);
ALTER TABLE DEPARTMENT ADD CONSTRAINT department_ibfk_1 FOREIGN KEY (CName) REFERENCES COLLEGE (CName);
ALTER TABLE DEPARTMENT ADD CONSTRAINT department_ibfk_2 FOREIGN KEY (ChairID) REFERENCES PROFFESOR (PersonID);
ALTER TABLE DEPARTMENT ADD CONSTRAINT department_ibfk_3 FOREIGN KEY (DArea) REFERENCES DEPT_MAJOR (MajorCode);
ALTER TABLE FAC_MEMBER ADD CONSTRAINT fac_member_ibfk_1 FOREIGN KEY (PersonID) REFERENCES PERSON (PersonID);
ALTER TABLE FAC_MEMBER ADD CONSTRAINT fac_member_ibfk_2 FOREIGN KEY (DCode) REFERENCES DEPARTMENT (DCode);
ALTER TABLE LABORATORY ADD CONSTRAINT laboratory_ibfk_1 FOREIGN KEY (SectionID) REFERENCES SECTION (SectionID);
ALTER TABLE MANDATORY ADD CONSTRAINT mandatory_ibfk_1 FOREIGN KEY (CoCode) REFERENCES COURSE (CoCode);
ALTER TABLE OPTIONAL ADD CONSTRAINT optional_ibfk_1 FOREIGN KEY (CoCode) REFERENCES COURSE (CoCode);
ALTER TABLE TECHNICAL ADD CONSTRAINT technical_ibfk_1 FOREIGN KEY (CoCode) REFERENCES OPTIONAL (CoCode);
ALTER TABLE N_TECHNICAL ADD CONSTRAINT n_technical_ibfk_1 FOREIGN KEY (CoCode) REFERENCES OPTIONAL (CoCode);
ALTER TABLE THEORETICAL ADD CONSTRAINT theoretical_ibfk_1 FOREIGN KEY (SectionID) REFERENCES SECTION (SectionID);
ALTER TABLE TAKES ADD CONSTRAINT takes_ibfk_1 FOREIGN KEY (PersonID) REFERENCES STUDENT (PersonID);
ALTER TABLE TAKES ADD CONSTRAINT takes_ibfk_2 FOREIGN KEY (SectionID) REFERENCES SECTION (SectionID);
ALTER TABLE SUBJECTS ADD CONSTRAINT subjects_ibfk_1 FOREIGN KEY (CoCode) REFERENCES COURSE (CoCode);
ALTER TABLE STUDIES ADD CONSTRAINT studies_ibfk_1 FOREIGN KEY (PersonID) REFERENCES PERSON (PersonID);
ALTER TABLE STUDENT ADD CONSTRAINT student_ibfk_1 FOREIGN KEY (DCode) REFERENCES DEPARTMENT (DCode);
ALTER TABLE STUDENT ADD CONSTRAINT student_ibfk_2 FOREIGN KEY (PersonID) REFERENCES PERSON (PersonID);
ALTER TABLE SECTION ADD CONSTRAINT section_ibfk_1 FOREIGN KEY (CoCode) REFERENCES COURSE (CoCode);

