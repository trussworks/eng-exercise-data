-- SQLite schema for Truss engineering data exercise, lesson two

-- Note that UPPER/lower case does not matter for SQL keywords
-- We've mixed them here just to keep you on your toes!

PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;

create table tshirts (
  id integer primary key,
  design_name varchar(255),
  price integer,
  created_at datetime not null default current_timestamp,
  updated_at datetime not null default current_timestamp
);

create index tshirts_design_name_idx on tshirts(design_name);

create table tshirt_colors (
  id integer primary key,
  tshirt_id integer,
  color varchar(255),
  quantity_small integer,
  quantity_medium integer,
  quantity_large integer,
  created_at datetime not null default current_timestamp,
  updated_at datetime not null default current_timestamp,
  -- a foreign key is a constraint that says
  -- "the value of tshirt_id in this table must match at least one row's id value in the tshirts table"
  -- tshirt_colors.tshirt_id is thus a foreign key referencing tshirts.id
  FOREIGN KEY(tshirt_id) REFERENCES tshirt(id)
);

-- a foreign key column should always have an index
create index tshirt_color_tshirt_id_idx on tshirt_colors(tshirt_id);

COMMIT;
