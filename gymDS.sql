
--Portfolio Project : SQL Data Exploration : Dataset used is megagymdataset downloaded from internet.

select * from megaGymDataset

--unnecessary Column Slno
ALTER TABLE megaGymDataset
DROP COLUMN Slno;

--unnecessary Column RatingDesc
select RatingDesc, avg(Rating) 
from megaGymDataset
group by RatingDesc
--we can ignore the RatingDesc because the whole row is based on only 2 values 
--for Rating=0 RatingDesc=0 and for rest RatingDesc=Average


-- Shows the number of Exercises basing on Level
select Level, count(Title) as Exercises
from megaGymDataset 
group by Level 
order by Level asc

-- Shows the number of Exercises based on the type of exercise
select Type, count(Title) as Exercises
from megaGymDataset 
group by Type 
order by Type asc

-- Shows the number of Exercises one can do based on the equipments available 
select Equipment, count(Title) as Exercises
from megaGymDataset 
group by Equipment 
order by Equipment asc

-- shows the number of exercises based on type of exercise
select Title
from megaGymDataset
where Type='Powerlifting'

--Highest Rated exercises
select Title, Rating
from megaGymDataset
order by Rating desc

--Highest Avg ratings given by level
select Level, avg(Rating)
from megaGymDataset
group by Level 

--Ratings given based on Equipments
select Equipment, round(avg(Rating),1) as avg_rating_equipment
from megaGymDataset
group by Equipment 
order by avg_rating_equipment desc

-- show the Equipments and bodypart used to work on Stretching exercises based on Level 
select Equipment, BodyPart, Level
from megaGymDataset
where Type='Stretching'
order by Level 

--TITLE EQUIPMENT
select Title, Equipment, description
from megaGymDataset

-- more work to do -- e
