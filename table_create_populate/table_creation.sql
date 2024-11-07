CREATE TABLE IF NOT EXISTS districts(
    loc_id INT PRIMARY KEY,
    district_name TEXT,
    district_type TEXT
)

CREATE TABLE IF NOT EXISTS student_data(
    loc_id INT PRIMARY KEY REFERENCES districts ON DELETE CASCADE,
    attendance_rate DECIMAL,
    not_chronically_absent DECIMAL,
    four_year_grad_rate DECIMAL,
    four_year_grads DECIMAL,
    four_year_dropout_rate DECIMAL,
    four_year_dropouts DECIMAL
)

CREATE TABLE IF NOT EXISTS testing_data(
    loc_id INT PRIMARY KEY REFERENCES districts ON DELETE CASCADE,
    mstep_ela DECIMAL,
    mstep_math DECIMAL,
    mstep_science DECIMAL,
    mstep_ss DECIMAL,
    sat_benchmark DECIMAL
)

CREATE TABLE IF NOT EXISTS staff_student_count(
    loc_id INT PRIMARY KEY REFERENCES districts ON DELETE CASCADE,
    total_fte DECIMAL,
    teacher_fte DECIMAL,
    student_count INT,
    students_per_teacher DECIMAL
)