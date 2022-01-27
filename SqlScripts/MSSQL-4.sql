CREATE DATABASE HomeworkDB

USE HomeworkDB

CREATE TABLE Students (
    Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(50) NOT NULL,
    CreatedDate DATETIME2 DEFAULT GETDATE()
)

CREATE TABLE Lessons (
    Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(200) NOT NULL,
    Description NVARCHAR(1000) NULL,
    StartDate DATETIME2 NOT NULL,
    CreatedDate DATETIME2 DEFAULT GETDATE()
)

CREATE TABLE VisitedLessons (
    Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    StudentsId INT NOT NULL,
    LessonId INT NOT NULL,
    CreatedDate DATETIME2 DEFAULT GETDATE(),
    CONSTRAINT [FK_VisitedLessons_Students] FOREIGN KEY (StudentsId) REFERENCES Students(Id),
    CONSTRAINT [FK_VisitedLessons_Lessons] FOREIGN KEY (LessonId) REFERENCES Lessons(Id)
)

CREATE TABLE Timecode(
    Id INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    Title NVARCHAR(100) NOT NULL,
    CreateDate DATETIME2 DEFAULT GETDATE()
)
-- ALTER TABLE Timecode
-- ADD TimecodeTime DATETIME2 NOT NULL

CREATE TABLE Question (
    Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Description NVARCHAR(200) NOT NULL,
    CreateDate DATETIME2 DEFAULT GETDATE()
)

CREATE TABLE StudentsQuestions
(
    Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    VisitedLessonId INT NOT NULL,
    QuestionId INT NOT NULL,
    CONSTRAINT [FK_StudentsQuestion_VisitedLessonId] FOREIGN KEY (VisitedLessonId) REFERENCES VisitedLessons(Id),
    CONSTRAINT [FK_StudentsQuestion_QuestionId] FOREIGN KEY (QuestionId) REFERENCES Question(Id)
)

CREATE TABLE LessonsTimecodes
(
    Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    LessonId INT NOT NULL,
    TimecodeId INT NOT NULL,
    CONSTRAINT [FK_LessondTimecodes_LessonId] FOREIGN KEY (LessonId) REFERENCES Lessons(Id),
    CONSTRAINT [FK_LessondTimecodes_TimecodeId] FOREIGN KEY (TimecodeId) REFERENCES Timecode(Id)
)
-- DROP TABLE LessonsTimecodes
--Tables Data 

INSERT INTO Students (Name)
VALUES (N'Bob'), (N'Nick'), (N'Igor'),( N'Elena'), (N'Brad')

INSERT INTO Lessons (Title, [Description], StartDate)
VALUES (N'Изучаем переменные в C#', N'Всем привет, на этом занятии мы начнем рассматривать переменные в C#', '2021-05-28T11:00:00'),
        (N'Изучаем массивы в C#', N'Всем привет, на этом занятии мы начнем рассматривать массивы в C#', '2021-06-02T11:00:00'),
         (N'Изучаем функции в C#', N'Всем привет, на этом занятии мы начнем рассматривать функции в C#', '2021-06-09T11:00:00'),
         (N'Изучаем классы в C#', N'Всем привет, на этом занятии мы начнем рассматривать классы в C#', '2021-06-15T11:00:00'),
         (N'Изучаем интерфейсы в C#', N'Всем привет, на этом занятии мы начнем рассматривать интерфейсы в C#', '2021-06-23T11:00:00')

INSERT INTO VisitedLessons(StudentsId, LessonId)
SELECT Id = 1, ID FROM Students 
INSERT INTO VisitedLessons(StudentsId, LessonId)
SELECT Id = 2, ID FROM Students
WHERE ID IN(1,3,4) 
INSERT INTO VisitedLessons(StudentsId, LessonId)
SELECT Id = 3, ID FROM Students
WHERE ID IN(3,4)
INSERT INTO VisitedLessons(StudentsId, LessonId)
SELECT Id = 4, ID FROM Students 

INSERT INTO Question([Description])
VALUES ('Что такое переменная?'),
        ('Как инициализировать переменную?'),
        ('Что такое массивы?'),
        ('Способы инициализации массивов?'),
        ('Что такое индекс массива?'),
        ('Что такое фанкция?'),
        ('Какие бывают фукции?'),
        ('Что такое аргумент функции?'),
        ('Что такое класс?'),
        ('Что такое конструктор?'),
        ('Что такое наследование?'),
        ('Что такое интерфейс?'),
        ('Почему интерфесы реализуют, а не наследуют?')

INSERT INTO StudentsQuestions(VisitedLessonId, QuestionId)
SELECT id = 1, ID FROM VisitedLessons
WHERE ID IN(1,2)
INSERT INTO StudentsQuestions(VisitedLessonId, QuestionId)
SELECT id = 2, ID FROM VisitedLessons
WHERE ID IN(3,4,5)
INSERT INTO StudentsQuestions(VisitedLessonId, QuestionId)
SELECT id = 3, ID FROM VisitedLessons
WHERE ID IN(6,7,8)
INSERT INTO StudentsQuestions(VisitedLessonId, QuestionId)
SELECT id = 4, ID FROM VisitedLessons
WHERE ID IN(9,10,11)
INSERT INTO StudentsQuestions(VisitedLessonId, QuestionId)
SELECT id = 5, ID FROM VisitedLessons
WHERE ID IN(12,13)

INSERT INTO StudentsQuestions(VisitedLessonId, QuestionId)
SELECT id = 6, ID FROM VisitedLessons
WHERE ID IN(1)
INSERT INTO StudentsQuestions(VisitedLessonId, QuestionId)
SELECT id = 7, ID FROM VisitedLessons
WHERE ID IN(6,7,8)

INSERT INTO StudentsQuestions(VisitedLessonId, QuestionId)
SELECT id = 8, ID FROM VisitedLessons
WHERE ID IN(9)

INSERT INTO StudentsQuestions(VisitedLessonId, QuestionId)
SELECT id = 9, ID FROM VisitedLessons
WHERE ID IN(9,10,11)

INSERT Timecode (Title, TimecodeTime)
VALUES (N'О чем будет урок Изучаем переменные в C#', '2021-05-28T11:00:00'),
        (N'Начало урока', '2021-05-28T11:10:00'),
        (N'Домашнее задание', '2021-05-28T13:10:00'),
        (N'О чем будет урок Изучаем массивы в C#', '2021-06-02T11:00:00'),
        (N'Начало урока', '2021-06-02T11:10:00'),
        (N'Домашнее задание', '2021-06-02T13:00:00'), 
        (N'О чем будет урок Изучаем функции в C#', '2021-06-09T11:00:00'),
        (N'Начало урока', '2021-06-09T11:10:00'),
        (N'Домашнее задание', '2021-06-09T13:00:00'),   
        (N'О чем будет урок Изучаем классы в C#', '2021-06-15T11:00:00'),
        (N'Начало урока', '2021-06-15T11:10:00'),
        (N'Домашнее задание', '2021-06-15T13:00:00'),
        (N'О чем будет урок Изучаем интерфейсы в C#', '2021-06-23T11:00:00'),
        (N'Начало урока', '2021-06-23T11:10:00'),
        (N'Домашнее задание', '2021-06-23T13:00:00')

INSERT INTO LessonsTimecodes(LessonId, TimecodeId)
SELECT Id = 1, ID FROM Lessons
WHERE ID IN(1,2,3)
INSERT INTO LessonsTimecodes(LessonId, TimecodeId)
SELECT Id = 2, ID FROM Lessons
WHERE ID IN(4,5,6)

INSERT INTO LessonsTimecodes(LessonId, TimecodeId)
VALUES (2,6), (3,7), (3,8), (3,9), (4,10),  
        (4,11), (4,12), (5,13), (5,14), (5,15)

INSERT INTO LessonsTimecodes(LessonId, TimecodeId)
SELECT Id = 3, ID FROM Lessons
WHERE ID IN(7,8,9)
INSERT INTO LessonsTimecodes(LessonId, TimecodeId)
SELECT Id = 4, ID FROM Lessons
WHERE ID IN(10,11,12)
INSERT INTO LessonsTimecodes(LessonId, TimecodeId)
SELECT Id = 5, ID FROM Lessons
WHERE ID IN(13,14,15)

--Tables Query
SELECT *FROM Students
SELECT *FROM VisitedLessons
SELECT *FROM Question
SELECT *FROM StudentsQuestions
SELECT *FROM Timecode
SELECT *FROM Lessons
SELECT *FROM LessonsTimecodes
-- DELETE StudentsQuestions
-- DROP TABLE StudentsQuestions
-- DELETE LessonsTimecodes
-- DELETE LessonsTimecodes
-- WHERE Id = 7

SELECT 
    s.Id, 
    s.Name, COUNT(*) AS 'Cout visited lessons' 
FROM VisitedLessons vl
INNER JOIN Students s ON s.Id = vl.StudentsId
INNER JOIN Lessons l ON l.Id = vl.LessonId
GROUP BY s.Id, s.Name
ORDER BY s.Id

SELECT 
    l.Id,
    l.Title,
    l.StartDate,
    t.Title,
    t.TimecodeTime
FROM Lessons l
INNER JOIN LessonsTimecodes lt ON lt.LessonId = l.Id
INNER JOIN Timecode t ON lt.TimecodeId = t.Id
ORDER BY l.Id

SELECT 
    l.Id,
    l.Title, 
    COUNT(l.Title) AS 'Timecode count',
    l.StartDate
FROM Lessons l
INNER JOIN LessonsTimecodes lt ON lt.LessonId = l.Id
INNER JOIN Timecode t ON lt.TimecodeId = t.Id
GROUP BY l.Id, l.Title, l.StartDate
ORDER BY l.Id

SELECT 
    s.Id, 
    s.Name, 
    l.Title,
    COUNT(l.Id) AS 'Question count',
    COUNT(s.Id) AS 'Visite lessons count'
    FROM StudentsQuestions sq
LEFT JOIN VisitedLessons vl ON vl.Id = sq.VisitedLessonId
LEFT JOIN Question q ON sq.QuestionId = q.Id
LEFT JOIN Lessons l ON l.Id = vl.LessonId
RIGHT JOIN Students s ON s.Id = vl.StudentsId
GROUP BY s.Id, s.Name, l.Title, l.Id
ORDER BY s.Id



