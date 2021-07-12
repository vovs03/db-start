-- TEACHERS
CREATE TABLE teachers(
    id Integer PRIMARY KEY AUTOINCREMENT,
    name Text NOT NULL,
    surname  Text NOT NULL,
    email     Text NOT NULL UNIQUE
);