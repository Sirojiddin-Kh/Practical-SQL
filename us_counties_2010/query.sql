select geo_name, state_us_abbreviation, area_land
from us_counties_2010
order by area_land desc
limit 3;


select geo_name, state_us_abbreviation, internal_point_lon
from us_counties_2010
order by internal_point_lon DESC
limit 5;

--- Importing from existing source--- 

COPY us_counties_2010
FROM '/home/asus/Desktop/us_counties_2010.csv'
WITH (FORMAT CSV, HEADER);

CREATE TEMPORARY TABLE supervisor_salaries_temp (LIKE supervisor_salaries);
COPY supervisor_salaries_temp (town, supervisor, salary)
FROM '/home/asus/Desktop/supervisor_salaries.csv'
WITH (FORMAT CSV, HEADER);
INSERT INTO supervisor_salaries (town, county, supervisor, salary)
SELECT town, 'Some County', supervisor, salary
FROM supervisor_salaries_temp;
DROP TABLE supervisor_salaries_temp;


--- Exporting datas to files ---

COPY us_counties_2010
To '/home/asus/Desktop/us_counties_2010.txt'
With (Format CSV, HEADER, DELIMITER '|');