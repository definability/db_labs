BEGIN;
ALTER TABLE lab.job_history ADD COLUMN job_history_id serial NOT NULL;
ALTER TABLE lab.job_history ADD PRIMARY KEY (job_history_id);
ALTER TABLE lab.job_history ALTER COLUMN start_date SET NOT NULL;
ALTER TABLE lab.regions ALTER COLUMN region_name DROP NOT NULL;

ALTER TABLE lab.locations ADD CONSTRAINT postal_code
                          CHECK (postal_code ~ '[A-Z0-9-]+');
ALTER TABLE lab.departments ADD COLUMN manager_id integer NOT NULL;
ALTER TABLE lab.departments ADD CONSTRAINT employee_id FOREIGN KEY (manager_id)
                                        REFERENCES lab.employees;
COMMIT;
