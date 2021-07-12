-- Переименовать таблицу streams в training_groups.
ALTER TABLE 'streams' RENAME TO 'training_groups';

-- В таблице training_groups переименовать столбец даты начала обучения в started_at.
ALTER TABLE training_groups RENAME COLUMN start_date TO started_at;
