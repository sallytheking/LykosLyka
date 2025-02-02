# first_score, latest_score
WITH improvement AS
(
    SELECT student_id, subject, score
         , FIRST_VALUE(score) OVER (PARTITION BY subject, student_id ORDER BY exam_date ASC) AS first_score
         , FIRST_VALUE(score) OVER (PARTITION BY subject, student_id ORDER BY exam_date DESC) AS latest_score 
      FROM Scores
)

SELECT DISTINCT student_id, subject, first_score, latest_score
  FROM improvement
 WHERE latest_score > first_score
 ORDER BY student_id, subject;
