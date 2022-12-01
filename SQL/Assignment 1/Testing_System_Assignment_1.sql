CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

-- Tạo Bảng Department
CREATE TABLE Department (
    Department_ID			INT PRIMARY KEY AUTO_INCREMENT,
    Department_Name		VARCHAR(50)
);

-- Tạo Bảng Position
CREATE TABLE `Position` (
    Position_ID			INT PRIMARY KEY AUTO_INCREMENT,
    Position_Name 		ENUM ('Dev', 'Test', 'Scrum Master', 'PM') 
);

-- Tạo Bảng Account
CREATE TABLE `Account` (
    Account_ID				INT PRIMARY KEY AUTO_INCREMENT,
    Email					VARCHAR(100),
    Username				VARCHAR(100),
    Full_Name				VARCHAR(100),
    Department_ID			INT,
    Position_ID			INT,
    Create_Date			DATE
);

-- Tạo Bảng Group
CREATE TABLE `Group` (
    Group_ID			INT PRIMARY KEY AUTO_INCREMENT,
    Group_Name			VARCHAR(50) UNIQUE NOT NULL,
    Creator_ID			INT,
    Create_Date		DATE
);

-- Tạo Bảng GroupAccount
CREATE TABLE GroupAccount (
    Group_ID			INT PRIMARY KEY AUTO_INCREMENT,
    Account_ID			INT,
    Join_Date			DATE
);

-- Tạo Bảng TypeQuestion
CREATE TABLE TypeQuestion (
    Type_ID				INT PRIMARY KEY AUTO_INCREMENT,
    Type_Name 			ENUM('Essay', 'Multiple-Choice') 
);

-- Tạo Bảng CategoryQuestion
CREATE TABLE Category_Question (
    Category_ID		INT PRIMARY KEY AUTO_INCREMENT,
    Category_Name 	VARCHAR(50) 
);

-- Tạo Bảng Question
CREATE TABLE Question (
    Question_ID		INT PRIMARY KEY AUTO_INCREMENT,
    Content				VARCHAR(250) UNIQUE NOT NULL,
    Category_ID		INT,
    Type_ID				INT,
    Creator_ID			INT,
    Create_Date		DATE
);

-- Tạo Bảng Answer
CREATE TABLE Answer (
    Answer_ID			INT PRIMARY KEY AUTO_INCREMENT,
    Content				VARCHAR(250),
    Question_ID		INT,
    isCorrect			DOUBLE
);

-- Tạo Bảng Exam
CREATE TABLE Exam (
    Exam_ID				INT PRIMARY KEY AUTO_INCREMENT,
    `Code`				CHAR(10) ,
    Title				VARCHAR(50) ,
    Category_ID		INT,
    Duration			INT,
    Creator_ID			INT,
    Create_Date		DATE
);

-- Tạo Bảng ExamQuestion
CREATE TABLE Exam_Question (
    Exam_ID				INT PRIMARY KEY AUTO_INCREMENT,
    Question_ID		TINYINT UNSIGNED NOT NULL
);
