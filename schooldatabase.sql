

-- Create a database for a school. It should include at least three tables - students, classes, enrolments
CREATE DATABASE school;

SHOW DATABASES;

USE school;

CREATE TABLE students
(
    studentid INT NOT NULL
    AUTO_INCREMENT,
    first_name VARCHAR
    (100),
    last_name VARCHAR
    (100) NOT NULL,
    age INT,
    PRIMARY KEY
    (studentid)
);

    CREATE TABLE classes
    (
        classid INT NOT NULL
        AUTO_INCREMENT,
    subject VARCHAR
        (100) NOT NULL,
    description VARCHAR
        (300) NOT NULL,
    level INT,
    PRIMARY KEY
        (classid)
);

        CREATE TABLE enrollment
        (
            enrollmentid INT NOT NULL
            AUTO_INCREMENT,
    student_id INT,
    class_id INT, 
    PRIMARY KEY
            (enrollmentid),
    FOREIGN KEY
            (student_id) REFERENCES students
            (studentid),
    FOREIGN KEY
            (class_id) REFERENCES classes
            (classid)
);

SHOW TABLES;

DESCRIBE students;

            --  You should insert at least 3 students and classes into your tables.
            INSERT INTO students
                (first_name, last_name, age)
            VALUES('Sarah', 'Lawrence', 30);

            INSERT INTO students
                (first_name, last_name, age)
            VALUES('Mike', 'Jones', 28);

            INSERT INTO students
                (first_name, last_name, age)
            VALUES('Charlie', 'Smith', 32);

            INSERT INTO students
                (first_name, last_name, age)
            VALUES('Henry', 'Lee', 25);

            INSERT INTO students
                (first_name, last_name, age)
            VALUES('Joyce', 'Byers', 41);


            SELECT *
            FROM students;

            INSERT INTO classes
                (subject, description, level)
            VALUES('Math', 'Basic addtion, subtraction, and Multiplication', 5);

            INSERT INTO classes
                (subject, description, level)
            VALUES('Computer Science', 'Basic Python', 10);

            INSERT INTO classes
                (subject, description, level)
            VALUES('English', 'Learn to read and write in English', 7);

            INSERT INTO classes
                (subject, description, level)
            VALUES('History', 'Learn about the Founding Fathers', 3);

            INSERT INTO classes
                (subject, description, level)
            VALUES('Science', 'You will get to dissect a frog', 2);

            SELECT *
            FROM classes;

            -- Each student should be enrolled in at least 2 classes.
            INSERT INTO enrollment
                (student_id, class_id)
            VALUES(1, 5);
            INSERT INTO enrollment
                (student_id, class_id)
            VALUES(1, 2);
            INSERT INTO enrollment
                (student_id, class_id)
            VALUES(2, 2);
            INSERT INTO enrollment
                (student_id, class_id)
            VALUES(2, 1);
            INSERT INTO enrollment
                (student_id, class_id)
            VALUES(3, 3);
            INSERT INTO enrollment
                (student_id, class_id)
            VALUES(3, 4);
            INSERT INTO enrollment
                (student_id, class_id)
            VALUES(3, 5);
            INSERT INTO enrollment
                (student_id, class_id)
            VALUES(4, 4);
            INSERT INTO enrollment
                (student_id, class_id)
            VALUES(4, 1);
            INSERT INTO enrollment
                (student_id, class_id)
            VALUES(5, 2);
            INSERT INTO enrollment
                (student_id, class_id)
            VALUES(5, 4);
            INSERT INTO enrollment
                (student_id, class_id)
            VALUES(5, 3);

            SELECT *
            FROM enrollment;

            SELECT
                students.first_name,
                students.last_name,
                classes.subject
            FROM students
                JOIN enrollment
                ON students.studentid = enrollment.student_id
                JOIN classes
                ON classes.classid = enrollment.class_id;