use nba_injury;

create or replace view nba_injuries_clean_sample as(
select relinquished as Name,team,convert(date,DATE) AS date , notes,
case
	when notes like '%knee%' then 'Knee Injury'
    when notes like '%surgery%' then 'Surgery'
    when notes like '%ankle%' then 'Ankle Injury'
    when notes like '%back%' then 'Back Injury'
    when notes like '%shoulder%' then 'Shoulder Injury'
    when notes like '%foot%' or notes like '%heel%' then 'Foot Injury'
    when notes like '%illness%' or notes like '%flu%' or notes like '%strep throat%' 
    or notes like '%headache%' or notes like '%infection%' or notes like '%virus%' then 'Illness'
    when notes like '%toe%' then 'Toe Injury'
    when notes like '%hip%' then 'Hip Injury'
    when notes like '%elbow%' then 'Elbow Injury'
    when notes like '%groin%' then 'Groin'
    when notes like '%concussion%' then 'Concussion'
    when notes like '%achilles%' then 'Achilles Injury'
    when notes like '%ACL%' then 'ACL Injury'
    when notes like '%calf%' then 'Calf Injury'
    when notes like '%leg%' or notes like '%hamstring%' or notes like '%shin%'  
    or notes like '%quadricep%' or notes like '%thigh%' or notes like '%plantar%' 
    or notes like '%fibula%' then 'Leg Injury'
    when notes like '%neck%' then 'Neck Injury'
    when notes like '%nose%' then 'Nose injury'
    when notes like '%rib%' or notes like '%oblique%' or notes like '%lung%' 
    or notes like '%abdominal%' then 'Rib Injury'
    when notes like '%wrist%' then 'Wrist injury'
    when notes like '%hand%' or notes like '%finger%' or notes like '%thumb%' then 'Hand injury'
	when notes = 'placed on IL' or notes = 'returned to lineup' or notes = 'activated from IL' 
    or notes like '%placed on IL%'
    then 'Returned/Activitated/Placed on/from IL/Lineup' 
    else 'Misc.'
    end as Injury
from injuries_2010_2020_2
where date > '2015-01-01' and acquired is null);

select *
from nba_injuries_clean_sample;


create or replace view nba_injuries_clean_sample_2 as(
select name,team,date,notes, 
case
	when notes like '%knee%' then 'Knee Injury'
    when notes like '%surgery%' then 'Surgery'
    when notes like '%ankle%' then 'Ankle Injury'
    when notes like '%back%' then 'Back Injury'
    when notes like '%shoulder%' then 'Shoulder Injury'
    when notes like '%foot%' or notes like '%heel%' then 'Foot Injury'
    when notes like '%illness%' or notes like '%flu%' or notes like '%strep throat%' 
    or notes like '%headache%' or notes like '%infection%' or notes like '%virus%' then 'Illness'
    when notes like '%toe%' then 'Toe Injury'
    when notes like '%hip%' then 'Hip Injury'
    when notes like '%elbow%' then 'Elbow Injury'
    when notes like '%groin%' then 'Groin'
    when notes like '%concussion%' then 'Concussion'
    when notes like '%achilles%' then 'Achilles Injury'
    when notes like '%ACL%' then 'ACL Injury'
    when notes like '%calf%' then 'Calf Injury'
    when notes like '%leg%' or notes like '%hamstring%' or notes like '%shin%'  
    or notes like '%quadricep%' or notes like '%thigh%' or notes like '%plantar%' 
    or notes like '%fibula%' then 'Leg Injury'
    when notes like '%neck%' then 'Neck Injury'
    when notes like '%nose%' then 'Nose injury'
    when notes like '%rib%' or notes like '%oblique%' or notes like '%lung%' 
    or notes like '%abdominal%' then 'Rib Injury'
    when notes like '%wrist%' then 'Wrist injury'
    when notes like '%hand%' or notes like '%finger%' or notes like '%thumb%' then 'Hand injury'
    when notes = 'placed on IL' or notes = 'returned to lineup' or notes = 'activated from IL' 
    or notes like '%placed on IL%'
    then 'Returned/Activitated/Placed on/from IL/Lineup' 
    else 'Misc.'
    end as Injury
from(
select Name,Team,Position, convert(DATE_FORMAT(STR_TO_DATE(date, '%d/%m/%Y'), '%Y-%m-%d'),DATE) as Date, Notes
from nba_injury_history_1
#where Date > '2015-01-01'
order by Date asc) as j
where Date > '2015-01-01'); 

select *
from nba_injuries_clean_sample_2;


create or replace view nba_injuries_cleaned as(
select distinct name,date,notes, injury, injury as injury_2
from
(select  distinct *
from nba_injuries_clean_sample
union
select distinct *
from nba_injuries_clean_sample_2) as s
order by date asc);

select sum(coun) from(;
select count(name) as coun,name
from nba_injuries_cleaned  
where injury != 'Returned/Activitated/Placed on/from IL/Lineup'
group by name
order by coun desc;
) as j; 

select *, 
count(injury) over (partition by injury) as total_per from nba_injuries_cleaned
where injury = 'Foot Injury';

select sum(counts)
from(;
select count(injury) as counts, injury
from nba_injuries_cleaned
where date between '2017-01-01' and '2017-12-31'
group by injury
order by count(*) desc;
) as j;

select *
from nba_injuries_cleaned;