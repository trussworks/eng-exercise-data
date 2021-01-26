-- SQLite schema for Truss engineering data exercise, lesson two

PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;

create table tshirts (
  id integer primary key, -- sqlite autoincrements and adds index automatically for "primary key". internally named "rowid"
  design_name varchar(255),
  price integer,
  created_at datetime not null default current_timestamp,
  updated_at datetime not null default current_timestamp
);

create index tshirts_design_name_idx on tshirts(design_name);

create table tshirt_colors (
  id integer primary key, -- sqlite autoincrements and adds index automatically for "primary key". internally named "rowid"
  tshirt_id integer,
  color varchar(255),
  quantity_small integer,
  quantity_medium integer,
  quantity_large integer,
  created_at datetime not null default current_timestamp,
  updated_at datetime not null default current_timestamp,
  FOREIGN KEY(tshirt_id) REFERENCES tshirt(id)
);

create index tshirt_color_tshirt_id_idx on tshirt_colors(tshirt_id);

COMMIT;
