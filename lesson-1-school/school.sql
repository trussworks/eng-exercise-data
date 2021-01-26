-- SQLite schema for Truss engineering data exercise, lesson one

PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;

create table students (
  id integer primary key, -- sqlite autoincrements and adds index automatically for "primary key". internally named "rowid"
  last_name varchar(255),
  first_name varchar(255),
  age integer,
  grade varchar(255),
  teacher varchar(255),
  created_at datetime not null default current_timestamp,
  updated_at datetime not null default current_timestamp
);

create index students_last_name_idx on students(last_name);

COMMIT;
