--Which Michigan districts have the best(lowest) student to teacher ration?
SELECT
    ssc.loc_id,
    districts.district_name,
    ssc.teacher_fte,
    ssc.student_count,
    students_per_teacher
FROM 
    staff_student_count AS ssc
    INNER JOIN districts
    ON ssc.loc_id = districts.loc_id
ORDER BY
    students_per_teacher ASC