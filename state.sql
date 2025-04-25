CREATE DATABASE IF NOT EXISTS state_info;
USE state_info;

CREATE TABLE state_info (
    id INT PRIMARY KEY,
    state_name VARCHAR(100),
    state_code VARCHAR(3),
    population INT,
    area INT
);

INSERT INTO state_info (id, state_name, state_code, population, area) VALUES
(1, 'California', 'CA', 39512223, 423967),
(2, 'Texas', 'TX', 28995881, 695662),
(3, 'Florida', 'FL', 21477737, 170312),
(4, 'New York', 'NY', 19453561, 141297),
(5, 'Pennsylvania', 'PA', 12801989, 46058),
(6, 'Illinois', 'IL', 12671821, 149995),
(7, 'Ohio', 'OH', 11689100, 116098),
(8, 'Georgia', 'GA', 10617423, 153910),
(9, 'North Carolina', 'NC', 10488084, 139391),
(10, 'Michigan', 'MI', 9986857, 250487),
(11, 'New Jersey', 'NJ', 8882190, 22591),
(12, 'Virginia', 'VA', 8535519, 110787),
(13, 'Washington', 'WA', 7693612, 184661),
(14, 'Arizona', 'AZ', 7278717, 295234),
(15, 'Massachusetts', 'MA', 6892503, 27336),
(16, 'Tennessee', 'TN', 6833174, 109153),
(17, 'Indiana', 'IN', 6732219, 94326),
(18, 'Missouri', 'MO', 6126452, 180540),
(19, 'Maryland', 'MD', 6045680, 32131),
(20, 'Wisconsin', 'WI', 5822434, 169634);

ALTER TABLE state_info
ADD COLUMN capital VARCHAR(100),
ADD COLUMN region VARCHAR(50),
ADD COLUMN state_governor VARCHAR(100);

ALTER TABLE state_info
RENAME COLUMN state_name TO name,
RENAME COLUMN state_code TO code,
RENAME COLUMN population TO pop_total,
RENAME COLUMN area TO land_area;

ALTER TABLE state_info
MODIFY COLUMN pop_total BIGINT,
MODIFY COLUMN land_area BIGINT,
MODIFY COLUMN code CHAR(3);

SELECT * FROM state_info;
