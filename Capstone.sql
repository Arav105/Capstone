CREATE TABLE AdminInfo (
	Id int Primary Key identity(1,1),
    EmailId VARCHAR(255),
    Password VARCHAR(255)
);

CREATE TABLE EmpInfo (
	Id int Primary Key identity(1,1),
    EmailId VARCHAR(255) unique,
    Name VARCHAR(255),
    DateOfJoining DATETIME,
    PassCode INT
);

CREATE TABLE BlogInfo (
    BlogId INT PRIMARY KEY identity(1,1),
    Title VARCHAR(255),
    Subject VARCHAR(255),
    DateOfCreation DATETIME,
    BlogUrl VARCHAR(255),
    EmpEmailId VARCHAR(255),
);

Insert into AdminInfo(EmailId,Password) Values ('Aravinth','Chachu2001')

INSERT INTO EmpInfo (EmailId, Name, DateOfJoining, PassCode)
VALUES ('janani@gmail.com', 'Janani Anbu', '2023-09-23 10:00:00', 12345);

INSERT INTO EmpInfo (EmailId, Name, DateOfJoining, PassCode)
VALUES ('varun@gmail.com', 'Varun Ravi', '2023-09-25 09:45:00', 54321);

INSERT INTO BlogInfo ( Title, Subject, DateOfCreation, BlogUrl, EmpEmailId)
VALUES ('Introduction to SQL', 'Database Management', '2023-09-24 14:30:00', 'https://example.com/sql-intro', 'janani@gmail.com');

INSERT INTO BlogInfo ( Title, Subject, DateOfCreation, BlogUrl, EmpEmailId)
VALUES ( 'Advanced SQL Techniques', 'Database Optimization', '2023-09-26 16:15:00', 'https://example.com/advanced-sql', 'Varun@gmail.com');

Select * from AdminInfo
Select * from EmpInfo
Select * from BlogInfo