-- sqlite3
-- Lesson 2
-- code: Vladimir Pavlychev


-- TEACHERS
CREATE TABLE teachers(
    teacher_id Integer PRIMARY KEY AUTOINCREMENT,
    first_name Text NOT NULL,
    last_name  Text NOT NULL,
    email     Text NOT NULL UNIQUE,
);


-- COURSES
CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY AUTOINCREMENT,
    course TEXT UNIQUE NOT NULL,
    teacher_id INTEGER NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);


-- STREAMS
create table streams (
    stream_id INTERGER PRIMARY KEY AUTOINCREMENT,
    course_id INTEGER NOT NULL,
    stream_num integer NOT NULL,
    start_date TEXT NOT NULL,
    num_students INTEGER NOT NULL,
    -- Важно внешний ключ писать в последней строке.
    -- Иначе будет синтаксическая ошибка и таблица не будет создана
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);


-- GRADES
CREATE TABLE grades (
    grade_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stream_num INTEGER,
    grade_students REAL,
    FOREIGN KEY (stream_num) REFERENCES streams (stream_num)
);