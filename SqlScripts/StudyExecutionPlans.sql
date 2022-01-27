SELECT *
FROM dbo.LessonsTimecodes
WHERE LessonId IN
(
	SELECT Id FROM dbo.Lessons
	WHERE Title LIKE 'Изучаем переменные в C#'
)

SELECT lt.*
FROM dbo.LessonsTimecodes lt
INNER JOIN Lessons l ON lt.LessonId = l.Id
WHERE Title LIKE 'Изучаем переменные в C#'
