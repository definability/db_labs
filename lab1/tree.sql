CREATE SCHEMA IF NOT EXISTS lab;
CREATE TABLE lab.tree_type (
    id serial PRIMARY KEY,
    name varchar(40) NOT NULL
);
CREATE TABLE lab.city (
    -- id serial PRIMARY KEY,
    name varchar(80) NOT NULL,
    country varchar(80),
    square real NOT NULL
);
CREATE TABLE lab.trees (
    pk_tid serial PRIMARY KEY,
    tree_type_id integer REFERENCES lab.tree_type (id),
    height real CHECK (height > 0),
    place geometry(point,4327) NOT NULL
);
