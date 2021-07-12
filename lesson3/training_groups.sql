-- training_groups
CREATE TABLE training_groups (
    stream_id INTEGER PRIMARY KEY AUTOINCREMENT,
    course_id INTEGER NOT NULL,
    stream_num INTEGER NOT NULL,
    started_at TEXT NOT NULL,
    num_students INTEGER NOT NULL, finished_at TEXT,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);