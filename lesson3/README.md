# Lesson3

## Практическое задание

> Работаем с базой данных teachers.db.
>
> __В качестве отчёта необходимо сдать команды, которые выполнялись (в текстовом файле), а также файл базы данных.__

1. [x] Переименовать таблицу streams в training_groups.
2. [x] В таблице training_groups переименовать столбец даты начала обучения в started_at.
3. [x] В таблице training_groups добавить столбец даты завершения обучения в finished_at.
4. [ ] Привести данные в полное соответствие с данными в таблицах ниже:
5. [ ] (дополнительное задание, выполняется по желанию) В таблице успеваемости изменить тип столбца Ключ потока на REAL. Задание необходимо выполнить на таблице с данными.

## Выполнение

- скопировал из `/db/teachers/teachers.db` > `./teachers.db`

1. ![Снимок экрана 2021-07-12 в 10 21 32](https://user-images.githubusercontent.com/21124057/125246994-21ff9a00-e2fb-11eb-93fc-442ae1c94986.jpg)

    ```sql
    -- Переименовать таблицу streams в training_groups.
    ALTER TABLE 'streams' RENAME TO 'training_groups';
    ```

---

2. ![t3-2](https://user-images.githubusercontent.com/21124057/125249384-db5f6f00-e2fd-11eb-81a6-f05c48c40ce5.jpg)

```sql
-- В таблице training_groups переименовать столбец даты начала обучения в started_at.
ALTER TABLE training_groups RENAME COLUMN start_date TO started_at;
```

---
3. ![t3-3](https://user-images.githubusercontent.com/21124057/125251938-8113dd80-e300-11eb-933f-dcb4b8fe802e.jpg)

```sql
-- В таблице training_groups добавить столбец даты завершения обучения в finished_at.
ALTER TABLE training_groups ADD COLUMN finished_at TEXT;
```
> привыполнении запроса и проверке не сразу увидел добавление колонки, 
>
> т.к. :warning: __колонка добавилась в конец предпоследней строки__ к `num_ctudents`, а не с новой строки, как я ожидал.

---
