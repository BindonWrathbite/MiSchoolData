/*
USED IN pgAdmin4 PSQL Tool to force the copy. Commands below were permission blocked (Will work to resolve this for future)
\copy districts FROM 'C:\Users\zache\OneDrive\Documents\Data Analytics\MiSchoolData\csv_files\districts.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

\copy staff_student_count FROM 'C:\Users\zache\OneDrive\Documents\Data Analytics\MiSchoolData\csv_files\staff_student_count.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

\copy student_data FROM 'C:\Users\zache\OneDrive\Documents\Data Analytics\MiSchoolData\csv_files\student_data.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

\copy testing_data FROM 'C:\Users\zache\OneDrive\Documents\Data Analytics\MiSchoolData\csv_files\testing_data.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

*/

COPY districts
FROM 'C:\Users\zache\OneDrive\Documents\Data Analytics\MiSchoolData\csv_files\districts.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY staff_student_count
FROM 'C:\Users\zache\OneDrive\Documents\Data Analytics\MiSchoolData\csv_files\staff_student_count.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY student_data
FROM 'C:\Users\zache\OneDrive\Documents\Data Analytics\MiSchoolData\csv_files\student_data.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY testing_data
FROM 'C:\Users\zache\OneDrive\Documents\Data Analytics\MiSchoolData\csv_files\testing_data.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');