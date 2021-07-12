# Lesson2 Базовые понятия структуры базы данных

> была проблема с соданием таблицы потоков`[streams]`,
>
> т.к. `FOREIGN KEY` :warning: был на 11 строке, а не в конце, как сейчас на 15-й.

```sql
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
```

## Workflow with db

- Писать код запросов в отдельном файле `tables.sql`
- Открыть БД
  - `sqlite3 teachers.db`
  - Просмотр списка таблиц
    - `.tables`
- Копировать и вставлять в терминал БД

