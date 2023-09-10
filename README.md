# University Database Example
This database model created for the Database Management course project of Ege University Department of Computer Engineering. Project instructions had various data requirements and integrity challenges and it aimed to gain followings:  

- Relational Data Model
- Enhanced ER Modeling
- Effective Modeling
- Advanced SQL
- Database Views
- Database Triggers
- Database Constraints
- Data Integrity

## Data Requirements
- Your database should keep track of the curriculums of each of the following departments in Turkey, respectively, Computer Engineering, Software Engineering, Artificial Intelligence Engineering.
- Each curriculum is composed of its own courses of type mandatory, optional (technical or non-technical).
- Your design should have entities like CHAIR, FACULTY MEMBER (PROFESSOR, ASSOCIATE PROFESSOR, ASSISTANT PROFESSOR, INSTRUCTOR, RESEARCH ASSISTANT).
- Your design should be able to store the instructors of the courses with their SECTION information.
- You should store information about the research areas of the FACULTY MEMBERs, their M.Sc. and Ph.D. theses.
- You should also store the keywords associated with each course and these keywords should be related to the research areas of the FACULTY MEMBERs to find whether a given COURSE is instructed by the most matched FACULTY MEMBER.
- For each of the course and curriculum, you should store a computed value of this matching criteria.

## Project Requirements
### Given Design
<img width="620" alt="GivenDesign" src="https://github.com/muhammetsanci/University-Database/assets/77257193/7e7f11b7-8da4-401e-b84b-8ef610ebcf5f">

### Requirements
- Write a brief explanation using your own words about the given design.
- Write an analysis report:
  - What is the aim of your design?
  - What are the main entities?
  - What are the characteristics of each entity?
  - What relationships exist among the entities?
  - What are the constraints related to entities and relationships among them?
- Create an EER diagram. Try to use enhanced/extended features of ER modeling.
- The most important point of your design is how to extend the original design and generate added value.
- You can define new entities where interaction and integration are required. At this point your creativity has an artistic significance.
- Write down the data requirements for the EER diagram.
- Convert EER diagram into relational model using the methodology that will be introduced in your course.
- Write down the appropriate DDL statements for creating the database and its relational model. You can select any of the DBMS you wish.
- Populate the database you just created again using SQL script file loaded with sample tuples.
- Write down 3 triggers for 3 different tables. Triggers should be meaningful.
- Write down 3 check constraints and 3 assertions. Check constraints and assertions should be meaningful.
- Write 10 SELECT statements for the database you have implemented.

## Conclusion
- You can find the enhanced Enhanced ER diagram in the repository.
- You can see the roadmap and developing process in the project report.
- Domain and relational model diagram are in the report.

> Feel free to implement this model into your SQL server, you can follow these steps:
> 1. Create the database with desired name.
> 2. Run `Schema.sql` file to create the tables.
> 3. Run `InsertStatements.sql` file to fill tables with data.
> 4. Run `RelationalConstraints.sql` file to add referential integrity constraints.
> 5. Run `Views.sql` file to create views.
> 6. Run `Triggers.sql` file to create triggers.

> Theses steps has been ordered meaninfully. Following them in unordered way may cause errors. For example data in the insert statements are depending on each other because of the referential integrity. Running this query series in one compile after relational constraints may cause errors because of the dependencies. It is important to fill these controlled data before adding this constraints.
