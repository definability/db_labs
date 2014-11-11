INSERT INTO lab.city (name,square,country) VALUES ('Kyiv',10,'Ukraine');
INSERT INTO lab.city (name,country) VALUES ('Lvov','Ukraine');
INSERT INTO lab.city VALUES ('Lutsk','Ukraine',500,15);

SELECT * FROM lab.city ORDER BY id ASC;

ALTER TABLE lab.city ALTER COLUMN square SET NOT NULL;

UPDATE lab.city SET name = 'Kiev' WHERE name = 'Kyiv';

SELECT * FROM lab.city ORDER BY id ASC;
