-- training_groups
CREATE TABLE training_groups (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    course_id INTEGER NOT NULL,
    number INTEGER NOT NULL,
    started_at TEXT NOT NULL,
    finished_at TEXT,
    students_amount INTEGER NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);