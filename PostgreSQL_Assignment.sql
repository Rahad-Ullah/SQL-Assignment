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
)

-- Create "courses" table
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INTEGER NOT NULL
)


-- Create "enrollment" table
CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students (student_id) NOT NULL,
    course_id INTEGER REFERENCES courses (course_id) NOT NULL
)


