--Average mstep_scores for ALL staff to student ratio
SELECT
    ROUND(staff_student_count.student_count/staff_student_count.total_fte, 2)
    AS students_per_staff,
    ROUND(SUM(
        testing_data.mstep_ela +
        testing_data.mstep_math +
        testing_data.mstep_science +
        testing_data.mstep_ss)/4, 2) AS average_mstep_scores
FROM
    staff_student_count
    INNER JOIN testing_data
    ON staff_student_count.loc_id = testing_data.loc_id
GROUP BY
    students_per_staff
ORDER BY
    average_mstep_scores DESC

--Average mstep_scores for teacher_fte to student ratio
CREATE TABLE mstep_score_teacher_compare AS (
    SELECT
    staff_student_count.students_per_teacher,
    ROUND(SUM(
        testing_data.mstep_ela +
        testing_data.mstep_math +
        testing_data.mstep_science +
        testing_data.mstep_ss)/4, 2) AS average_mstep_scores
FROM
    staff_student_count
    INNER JOIN testing_data
    ON staff_student_count.loc_id = testing_data.loc_id
GROUP BY
    staff_student_count.students_per_teacher
ORDER BY
    average_mstep_scores DESC
)

CREATE TABLE sat_benchmark_teacher_compare AS (
    SELECT
        staff_student_count.students_per_teacher,
        testing_data.sat_benchmark
    FROM
        staff_student_count
        INNER JOIN testing_data
        ON staff_student_count.loc_id = testing_data.loc_id
    GROUP BY
        staff_student_count.students_per_teacher,
        testing_data.sat_benchmark
    ORDER BY
        testing_data.sat_benchmark DESC
)