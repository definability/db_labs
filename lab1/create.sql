CREATE SCHEMA IF NOT EXISTS lab;

CREATE TABLE lab.regions (
    region_id serial PRIMARY KEY,
    region_name varchar(256) NOT NULL
);
CREATE TABLE lab.countries (
    country_id serial PRIMARY KEY,
    country_name varchar(256) NOT NULL,
    region_id integer REFERENCES lab.regions (region_id)
);
CREATE TABLE lab.locations (
    location_id serial PRIMARY KEY,
    street_address varchar(256),
    postal_code varchar(5),
    city varchar(256),
    state_province varchar(256),
    country_id integer REFERENCES lab.countries (country_id)
);


CREATE TABLE lab.departments (
    department_id serial PRIMARY KEY,
    department_name varchar(256),
    --manager_id integer,
    location_id integer REFERENCES lab.locations (location_id)
);


CREATE TABLE lab.jobs (
    job_id serial PRIMARY KEY,
    job_title varchar(256),
    min_salary decimal,
    max_salary decimal
);


CREATE TABLE lab.employees (
    employee_id serial PRIMARY KEY,
    manager_id integer REFERENCES lab.employees (employee_id),
    department_id integer REFERENCES lab.departments (department_id),
    first_name varchar(256) NOT NULL,
    last_name varchar(256) NOT NULL,
    email varchar(256) NOT NULL,
    phone_number varchar(80) NOT NULL,
    hire_date date NOT NULL,
    job_id integer REFERENCES lab.jobs(job_id) NOT NULL,
    salary decimal NOT NULL,
    commission_pct real NOT NULL
);


CREATE TABLE lab.job_history (
    employee_id integer REFERENCES lab.employees (employee_id) NOT NULL,
    start_date date,
    end_date date,
    job_id integer REFERENCES lab.jobs (job_id) NOT NULL,
    department_id integer REFERENCES lab.departments (department_id)
);

CREATE TABLE lab.job_grades (
    grade_level integer,
    min_salary decimal,
    max_salary decimal
);

/*
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
*/
