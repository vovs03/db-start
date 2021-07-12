-- Переименовать таблицу streams в training_groups.
ALTER TABLE 'streams' RENAME TO 'training_groups';

-- В таблице training_groups переименовать столбец даты начала обучения в started_at.
ALTER TABLE training_groups RENAME COLUMN start_date TO started_at;

-- В таблице training_groups добавить столбец даты завершения обучения в finished_at.
ALTER TABLE training_groups ADD COLUMN finished_at TEXT;
