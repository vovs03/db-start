-- Переименовать таблицу streams в training_groups.
ALTER TABLE 'streams' RENAME TO 'training_groups';

-- В таблице training_groups переименовать столбец даты начала обучения в started_at.
ALTER TABLE training_groups RENAME COLUMN start_date TO started_at;

-- В таблице training_groups добавить столбец даты завершения обучения в finished_at.
ALTER TABLE training_groups ADD COLUMN finished_at TEXT;


-- task 4

-- t4-1
-- TEACHERS
CREATE TABLE teachers(
    id Integer PRIMARY KEY AUTOINCREMENT,
    name Text NOT NULL,
    surname  Text NOT NULL,
    email     Text NOT NULL UNIQUE
);

-- t4-2
-- COURSES
INSERT INTO courses (name)  VALUES
  ('Базы данных'),
  ('Основы Python'),
  ('Linux. Рабочая станция')
;

-- t4-3 Таблица 3. Потоки (training_groups)
-- id course_id number start_date finished_at students_amount
INSERT INTO training_groups (id, course_id, number, started_at, finished_at, students_amount)  VALUES
  (1, 3, 165, '18.08.2020', '19.09.2020', 34),
  (2, 2, 178, '02.10.2020', '03.11.2020', 37),
  (3, 1, 203, '12.11.2020', '13.12.2020', 35),
  (4, 1, 210, '03.12.2020', '04.01.2021', 41)
;


-- t4-4
INSERT INTO academic_perfomance (teacher_id, stream_id, performance) VALUES
  (3, 1, 4.7),
  (2, 2, 4.9),
  (1, 3, 4.8),
  (1, 4, 4.9)
;