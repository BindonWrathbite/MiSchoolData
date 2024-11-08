--1) Which Michigan districts have the best(lowest) student to teacher ration?
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

--2) Which districts have the best graduation rates (high) and drop-out rates(low) over four(4) years?
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

--3) Which districts have the best MSTEP averages
SELECT
    districts.loc_id,
    districts.district_name,
    SUM(
        testing_data.mstep_ela +
        testing_data.mstep_math +
        testing_data.mstep_science +
        testing_data.mstep_ss)/4 AS average_mstep_scores
FROM
    districts
    INNER JOIN testing_data
    ON districts.loc_id = testing_data.loc_id
GROUP BY 
    districts.loc_id
ORDER BY
    average_mstep_scores DESC

--4) Which districts have the best SAT scores?
SELECT
    districts.loc_id,
    districts.district_name,
    testing_data.sat_benchmark
FROM
    districts
    INNER JOIN testing_data
    ON districts.loc_id = testing_data.loc_id
ORDER BY
    testing_data.sat_benchmark DESC

--5) Best for all tests?
SELECT
    districts.loc_id,
    districts.district_name,
    SUM(
        testing_data.mstep_ela +
        testing_data.mstep_math +
        testing_data.mstep_science +
        testing_data.mstep_ss)/4 AS average_mstep_scores,
    testing_data.sat_benchmark
FROM
    districts
    INNER JOIN testing_data
    ON districts.loc_id = testing_data.loc_id
GROUP BY 
    districts.loc_id,
    testing_data.sat_benchmark
ORDER BY
    average_mstep_scores DESC,
    testing_data.sat_benchmark DESC