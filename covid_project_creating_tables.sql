/*Creating Tables 

Create table countries(
	country_name varchar(50) CONSTRAINT country_key Primary Key,
	life_expectancy decimal(4,2),
	population int,
	quality_of_life_rank smallint CONSTRAINT quality_of_life_rank_unique UNIQUE
);

Create table regions(
	region_name varchar(50) CONSTRAINT region_key Primary Key,
	country_name varchar(50) REFERENCES countries (country_name),
	vaccine_distributed int,
	vaccine_administrated int,
	Constraint check_vaccine_distributed CHECK(vaccine_distributed >= vaccine_administrated)
);


create table sub_regions(
	sub_region_name varchar(50) CONSTRAINT sub_region_key PRIMARY KEY,	
	region varchar(50) REFERENCES regions(region_name),
	cases int,
	deaths int,
	recoveries int
);


CREATE Table age_demographic(
	demographic_id serial CONSTRAINT demographic_key Primary Key,
	Age_0_14 decimal(4,2),
	Age_15_30 decimal(4,2),
	Age_30_50 decimal(4,2),
	Age_50_up decimal(4,2),
	country_name varchar(50) REFERENCES countries (country_name)
);