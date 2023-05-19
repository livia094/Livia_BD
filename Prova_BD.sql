use prova;
show tables;

#Questão 6

#a)

SELECT COUNT(country_name) AS total
FROM country;


#b)
SELECT * FROM ranking_system;

#c)
SELECT COUNT(DISTINCT university_name) AS total_universidades
FROM university;


#d)
SELECT AVG(student_staff_ratio) AS media_student_staff_ratio FROM university_year;


#e)
SELECT
    CONSTRAINT_NAME,
    COLUMN_NAME
FROM
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
    TABLE_SCHEMA = 'prova';

show tables from prova;