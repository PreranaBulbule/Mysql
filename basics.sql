CREATE DATABASE IF NOT EXISTS airline;
USE airline;

CREATE TABLE airlines_info (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(3),
    year_started INT,
    aircraft_count INT
);

INSERT INTO airlines_info (id, name, country, year_started, aircraft_count) VALUES
(1, 'AeroSky', 'USA', 1985, 175),
(2, 'TransEuro', 'FRA', 1990, 140),
(3, 'JetAsia', 'JPN', 2003, 105),
(4, 'CloudFly', 'AUS', 1998, 125),
(5, 'Himalayan Air', 'IND', 2006, 115),
(6, 'Northern Air', 'CAN', 1981, 70),
(7, 'SouthJet', 'ARG', 2011, 85),
(8, 'Pharaoh Wings', 'EGY', 1997, 60),
(9, 'BalticJet', 'LAT', 2004, 55),
(10, 'Aurora Airlines', 'NOR', 2001, 110),
(11, 'SnowLine Air', 'SUI', 1994, 95),
(12, 'DesertWind', 'SAU', 2008, 145),
(13, 'Clover Air', 'IRL', 1991, 90),
(14, 'RedSky Airlines', 'ESP', 1995, 160),
(15, 'FireMount Air', 'ISL', 2013, 65),
(16, 'OceanJet', 'NZL', 1996, 120),
(17, 'SkyDragon', 'CHN', 1992, 150),
(18, 'VikingFly', 'SWE', 2005, 130),
(19, 'Royal Eagle', 'UK', 1989, 195),
(20, 'Tropical Wings', 'BRA', 2007, 135);

ALTER TABLE airlines_info
ADD COLUMN headquarters VARCHAR(100),
ADD COLUMN website VARCHAR(100),
ADD COLUMN CEO VARCHAR(100);

ALTER TABLE airlines_info
RENAME COLUMN name TO airline_name,
RENAME COLUMN year_started TO established_year,
RENAME COLUMN aircraft_count TO fleet_total;

ALTER TABLE airlines_info
MODIFY COLUMN fleet_total BIGINT,
MODIFY COLUMN established_year SMALLINT,
MODIFY COLUMN country CHAR(3);

SELECT * FROM airlines_info;
