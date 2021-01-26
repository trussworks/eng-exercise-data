-- SQLite schema for Truss engineering data exercise, lesson two

-- Note that UPPER/lower case does not matter for SQL keywords
-- We've mixed them here just to keep you on your toes!

PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;

create table teachers (
  id integer primary key,
  last_name varchar(255),
  first_name varchar(255),
  subject varchar(255),
  room_number varchar(255),
  created_at datetime not null default current_timestamp,
  updated_at datetime not null default current_timestamp
);

create index teachers_last_name_idx on teachers(last_name);

create table students (
  id integer primary key,
  last_name varchar(255),
  first_name varchar(255),
  age integer,
  grade varchar(255),
  teacher_id integer,
  created_at datetime not null default current_timestamp,
  updated_at datetime not null default current_timestamp,
  -- a foreign key is a constraint that says
  -- "the value of teacher_id in this table must match at least one row's id value in the teachers table"
  -- students.teacher_id is thus a foreign key referencing teachers.id
  FOREIGN KEY(teacher_id) REFERENCES teachers(id)
);

create index students_last_name_idx on students(last_name);
-- a foreign key column should always have an index
CREATE INDEX students_teacher_id_idx on students(teacher_id);

COMMIT;
