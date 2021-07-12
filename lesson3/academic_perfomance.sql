-- academic_perfomance
CREATE TABLE academic_perfomance (
    teacher_id INTEGER,
    stream_id INTEGER,
    performance REAL,
    FOREIGN KEY (teacher_id) REFERENCES teachers (id),
    FOREIGN KEY (stream_id) REFERENCES training_groups (id)
);