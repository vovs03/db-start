-- 4.1 Заполнение таблицы данными 
-- Таблица 1. Преподаватели (teachers) id name surname email
INSERT INTO teachers (name, surname, email)  VALUES
  ('Николай', 'Савельев', 'saveliev.n@mai.ru'),
  ('Наталья','Петрова','petrova.n@yandex.ru'),
  ('Елена','Малышева','malisheva.e@google.com');

-- Просмотр данной таблицы
select * FROM teachers;

select * FROM teachers WHERE id=2;