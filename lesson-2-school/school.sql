-- SQLite schema for Truss engineering data exercise, lesson two

PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;

create table teachers (
  id integer primary key, -- sqlite autoincrements and adds index automatically for "primary key". internally named "rowid"
  last_name varchar(255),
  first_name varchar(255),
  subject varchar(255),
  room_number varchar(255),
  created_at datetime not null default current_timestamp,
  updated_at datetime not null default current_timestamp
);

create index teachers_last_name_idx on teachers(last_name);

create table students (
  id integer primary key, -- sqlite autoincrements and adds index automatically for "primary key". internally named "rowid"
  last_name varchar(255),
  first_name varchar(255),
  age integer,
  grade varchar(255),
  teacher_id integer,
  created_at datetime not null default current_timestamp,
  updated_at datetime not null default current_timestamp,
  FOREIGN KEY(teacher_id) REFERENCES teachers(id)
);

-- Note that UPPER/lower case does not matter for SQL keywords
create index students_last_name_idx on students(last_name);
CREATE INDEX students_teacher_id_idx on students(teacher_id);

COMMIT;
