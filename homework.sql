SQL Commands

CREATE TABLE regions (
    id SERIAL PRIMARY KEY,
    name VARCHAR (100)
);


INSERT INTO regions (name)
VALUES	('Greater Banjul Area'),
('West Coast Region'),
('Lower River Region'),
('Central River Region'),
('North Bank Region'),
('Upper River Region');



CREATE TABLE towns (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    region_id INTEGER REFERENCES regions(id)
);



INSERT INTO towns (name, region_id)
VALUES	('Banjul', 1),
('Serrekunda', 1),
('Brikama', 2),
('Bakau', 1),
('Soma', 3),
('Basse', 6),
('Farafenni', 5),
('Janjanbureh', 4),
('Abuko', 2),
('Kerewan', 5);



SELECT * FROM towns;

SELECT * FROM towns WHERE region_id = 2;

SELECT region_id, COUNT(*)
FROM towns
GROUP BY region_id;

UPDATE towns
SET region_id = 1
WHERE name = 'Abuko';

DELETE FROM towns
WHERE name = 'Bakau';

INSERT INTO towns (name, region_id)
VALUES ('Gunjur', 2);
