ALTER TABLE lab.city ADD COLUMN id serial NOT NULL;
ALTER TABLE lab.city ADD PRIMARY KEY (id);
--ALTER TABLE lab.city ALTER COLUMN square SET DEFAULT 0;
ALTER TABLE lab.city ALTER COLUMN country SET NOT NULL;
ALTER TABLE lab.city ALTER COLUMN square DROP NOT NULL;

ALTER TABLE lab.trees ADD CONSTRAINT height CHECK (height < 100);
ALTER TABLE lab.trees ADD COLUMN city_id integer NOT NULL;
ALTER TABLE lab.trees ADD CONSTRAINT id FOREIGN KEY (city_id)
                                        REFERENCES lab.city;
