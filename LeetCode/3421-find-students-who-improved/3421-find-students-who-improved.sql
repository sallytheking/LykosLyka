WITH first_exam AS (
    -- 학생별, 과목별 가장 첫 번째 시험 점수를 찾음
    SELECT student_id, subject, score AS first_score
    FROM Scores
    WHERE (student_id, subject, exam_date) IN (
        SELECT student_id, subject, MIN(exam_date)
        FROM Scores
        GROUP BY student_id, subject
    )
),
latest_exam AS (
    -- 학생별, 과목별 가장 최근 시험 점수를 찾음
    SELECT student_id, subject, score AS latest_score
    FROM Scores
    WHERE (student_id, subject, exam_date) IN (
        SELECT student_id, subject, MAX(exam_date)
        FROM Scores
        GROUP BY student_id, subject
    )
)

SELECT f.student_id, f.subject, f.first_score, l.latest_score
FROM first_exam f
JOIN latest_exam l 
ON f.student_id = l.student_id 
AND f.subject = l.subject
WHERE l.latest_score > f.first_score
ORDER BY f.student_id, f.subject;
