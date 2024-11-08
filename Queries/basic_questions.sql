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

--Which districts have the best graduation rates (high) and drop-out rates(low) over four(4) years?
SELECT
    districts.loc_id,
    districts.district_name,
    student_data.four_year_grad_rate,
    student_data.four_year_dropout_rate
FROM
    districts
    INNER JOIN student_data
    ON districts.loc_id = student_data.loc_id
ORDER BY
    four_year_grad_rate DESC,
    four_year_dropout_rate ASC

