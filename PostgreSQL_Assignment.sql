-- Active: 1729469441845@@127.0.0.1@5432@university_db@public
-- Create "students" table 
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    age INTEGER NOT NULL,
    email VARCHAR(50) NOT NULL,
    frontend_mark INTEGER,
    backend_mark INTEGER,
    status VARCHAR(50)
);

-- Create "courses" table
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INTEGER NOT NULL
);


-- Create "enrollment" table
CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students (student_id) NOT NULL,
    course_id INTEGER REFERENCES courses (course_id) NOT NULL
);


-- Data insertion to students table
INSERT INTO students 
    (student_name, age, email, frontend_mark, backend_mark, status)
VALUES
    ('Sameer', 21, 'sameer@example.com', 48, 60, NULL),
    ('Zoya', 23, 'zoya@example.com', 52, 58, NULL),
    ('Nabil', 22, 'nabil@example.com', 37, 46, NULL),
    ('Rafi', 24, 'rafi@example.com', 41, 40, NULL),
    ('Sophia', 22, 'sophia@example.com', 50, 52, NULL),
    ('Hasan', 23, 'hasan@gmail.com', 43, 39, NULL);


-- Data insertion to courses table
INSERT INTO courses
    (course_name, credits)
VALUES
    ('Next.js', 3),
    ('React.js', 4),
    ('Databases', 3),
    ('Prisma', 3);


-- Data insertion to enrollment table
INSERT INTO enrollment
    (student_id, course_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 1),
    (3, 2);

