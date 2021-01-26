-- SQLite schema for Truss engineering data exercise, lesson one

-- PRAGMA is a way of specifying a SQL extension specific to the DB engine (SQLite in this case)
-- Here, we turn "on" the foreign_keys feature so that foreign keys are enforced.
-- Note that many PRAGMAs must be set on each connection to the database, so consult the docs.
PRAGMA foreign_keys = ON;

-- In SQL a transaction is a way of enforcing ACID (https://en.wikipedia.org/wiki/ACID)
-- We want every step in this schema definition to succeed, or all of them to fail,
-- but not a mix. If something here were to fail before we get to the COMMIT, then
-- we want the database to be left as it was before we started.
BEGIN TRANSACTION;

-- Our first table definition.
CREATE TABLE tshirts (
  -- sqlite autoincrements and adds index automatically for "primary key". internally named "rowid".
  -- other DB engines have a slightly different syntax for defining a primary key, so read the docs.
  id integer primary key,
  -- varchar(255) is a general way of saying "a medium-sized text column of variable length values"
  design_name varchar(255),
  quantity_small integer,
  quantity_medium integer,
  quantity_large integer,
  -- we want the timestamp columns to always have a value, and let them default to the current time
  created_at datetime not null default current_timestamp,
  updated_at datetime not null default current_timestamp
);

-- creating an index helps performance, because the query engine can consult the index rather than
-- looping through every row (known as a "linear scan") which for millions of rows can be very slow.
CREATE INDEX tshirts_design_name_idx ON tshirts(design_name);

-- we're done! save our transaction.
COMMIT;
