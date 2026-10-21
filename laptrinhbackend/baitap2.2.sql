-- 1. Tạo bảng courses (Khóa học)
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100)
);

-- 2. Tạo bảng registrations (Đăng ký)
CREATE TABLE registrations (
    registration_id SERIAL PRIMARY KEY,
    course_id INT,
    member_id INT
);
SELECT c.course_id, COUNT(r.member_id) AS total_registrations
FROM courses c
LEFT JOIN registrations r ON c.course_id = r.course_id
GROUP BY c.course_id;