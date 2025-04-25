CREATE DATABASE IF NOT EXISTS country_info;
USE country_info;

CREATE TABLE country_info (
    id INT PRIMARY KEY,
    country_name VARCHAR(100),
    country_code VARCHAR(3),
    population INT,
    area INT
);

INSERT INTO country_info (id, country_name, country_code, population, area) VALUES
(1, 'United States', 'USA', 331002651, 9833517),
(2, 'Germany', 'GER', 83783942, 357022),
(3, 'Japan', 'JPN', 126476461, 377975),
(4, 'Australia', 'AUS', 25499884, 7692024),
(5, 'India', 'IND', 1380004385, 3287263),
(6, 'Canada', 'CAN', 37742154, 9984670),
(7, 'Argentina', 'ARG', 45195777, 2780400),
(8, 'Egypt', 'EGY', 91250000, 1002450),
(9, 'Latvia', 'LAT', 1886198, 64559),
(10, 'Norway', 'NOR', 5421241, 148729),
(11, 'Switzerland', 'SUI', 8836922, 41285),
(12, 'Saudi Arabia', 'SAU', 34813867, 2149690),
(13, 'Ireland', 'IRL', 4937786, 70273),
(14, 'Spain', 'ESP', 46719142, 505992),
(15, 'Iceland', 'ISL', 343599, 103000),
(16, 'New Zealand', 'NZL', 4822233, 268021),
(17, 'China', 'CHN', 1393409038, 9596961),
(18, 'Sweden', 'SWE', 10099265, 450295),
(19, 'United Kingdom', 'UK', 67886011, 243610),
(20, 'Brazil', 'BRA', 212559417, 8515767);

ALTER TABLE country_info
ADD COLUMN capital VARCHAR(100),
ADD COLUMN continent VARCHAR(50),
ADD COLUMN currency VARCHAR(50);

ALTER TABLE country_info
RENAME COLUMN country_name TO name,
RENAME COLUMN country_code TO code,
RENAME COLUMN population TO pop_total,
RENAME COLUMN area TO land_area;

ALTER TABLE country_info
MODIFY COLUMN pop_total BIGINT,
MODIFY COLUMN land_area BIGINT,
MODIFY COLUMN code CHAR(3);

SELECT * FROM country_info;
