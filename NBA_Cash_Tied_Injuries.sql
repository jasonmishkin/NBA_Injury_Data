use nba_injury;

select * from y2020_team;
select * from y2021_team;
select * from y2022_team;

select * from y2020_injury;  
select * from y2021_injury;
select * from y2022_injury;

select * from y2020_position;     
select * from y2021_position;
select * from y2022_position;

select * from y2020_player; 
select * from y2021_player; 
select * from y2022_player; 

select * from y2020_player; 
select * from y2021_player; 
select * from y2022_player; 

create or replace view y2020_player_cleaned as(
select *, 
case
	when Injury like '%knee%' then 'Knee Injury'
    when Injury like '%surgery%' then 'Surgery'
    when Injury like '%ankle%' then 'Ankle Injury'
    when Injury like '%back%' then 'Back Injury'
    when Injury like '%shoulder%' then 'Shoulder Injury'
    when Injury like '%foot%' or Injury like '%heel%' then 'Foot Injury'
    when Injury like '%illness%' or Injury like '%flu%' or Injury like '%strep throat%' 
    or Injury like '%headache%' or Injury like '%infection%' or Injury like '%virus%' then 'Illness'
    when Injury like '%toe%' then 'Toe Injury'
    when Injury like '%hip%' then 'Hip Injury'
    when Injury like '%elbow%' then 'Elbow Injury'
    when Injury like '%groin%' then 'Groin'
    when Injury like '%concussion%' then 'Concussion'
    when Injury like '%achilles%' then 'Achilles Injury'
    when Injury like '%ACL%' then 'ACL Injury'
    when Injury like '%calf%' then 'Calf Injury'
    when Injury like '%leg%' or Injury like '%hamstring%' or Injury like '%shin%'  
    or Injury like '%quadricep%' or Injury like '%thigh%' or Injury like '%plantar%' 
    or Injury like '%fibula%' then 'Leg Injury'
    when Injury like '%neck%' then 'Neck Injury'
    when Injury like '%nose%' then 'Nose injury'
    when Injury like '%rib%' or Injury like '%oblique%' or Injury like '%lung%' 
    or Injury like '%abdominal%' then 'Rib Injury'
    when Injury like '%wrist%' then 'Wrist injury'
    when Injury like '%hand%' or Injury like '%finger%' or Injury like '%thumb%' then 'Hand injury'
	when Injury = 'placed on IL' or Injury = 'returned to lineup' or Injury = 'activated from IL' 
    or Injury  like '%placed on IL%'
    then 'Returned/Activitated/Placed on/from IL/Lineup' 
    else 'Misc.'
    end as Injury_type,  2020 as Year
from y2020_player); 

create or replace view y2021_player_cleaned as(
select *, 
case
	when Injury like '%knee%' then 'Knee Injury'
    when Injury like '%surgery%' then 'Surgery'
    when Injury like '%ankle%' then 'Ankle Injury'
    when Injury like '%back%' then 'Back Injury'
    when Injury like '%shoulder%' then 'Shoulder Injury'
    when Injury like '%foot%' or Injury like '%heel%' then 'Foot Injury'
    when Injury like '%illness%' or Injury like '%flu%' or Injury like '%strep throat%' 
    or Injury like '%headache%' or Injury like '%infection%' or Injury like '%virus%' then 'Illness'
    when Injury like '%toe%' then 'Toe Injury'
    when Injury like '%hip%' then 'Hip Injury'
    when Injury like '%elbow%' then 'Elbow Injury'
    when Injury like '%groin%' then 'Groin'
    when Injury like '%concussion%' then 'Concussion'
    when Injury like '%achilles%' then 'Achilles Injury'
    when Injury like '%ACL%' then 'ACL Injury'
    when Injury like '%calf%' then 'Calf Injury'
    when Injury like '%leg%' or Injury like '%hamstring%' or Injury like '%shin%'  
    or Injury like '%quadricep%' or Injury like '%thigh%' or Injury like '%plantar%' 
    or Injury like '%fibula%' then 'Leg Injury'
    when Injury like '%neck%' then 'Neck Injury'
    when Injury like '%nose%' then 'Nose injury'
    when Injury like '%rib%' or Injury like '%oblique%' or Injury like '%lung%' 
    or Injury like '%abdominal%' then 'Rib Injury'
    when Injury like '%wrist%' then 'Wrist injury'
    when Injury like '%hand%' or Injury like '%finger%' or Injury like '%thumb%' then 'Hand injury'
	when Injury = 'placed on IL' or Injury = 'returned to lineup' or Injury = 'activated from IL' 
    or Injury  like '%placed on IL%'
    then 'Returned/Activitated/Placed on/from IL/Lineup' 
    else 'Misc.'
    end as Injury_type, 2021 as Year
from y2021_player); 

create or replace view y2022_player_cleaned as(
select *, 
case
	when Injury like '%knee%' then 'Knee Injury'
    when Injury like '%surgery%' then 'Surgery'
    when Injury like '%ankle%' then 'Ankle Injury'
    when Injury like '%back%' then 'Back Injury'
    when Injury like '%shoulder%' then 'Shoulder Injury'
    when Injury like '%foot%' or Injury like '%heel%' then 'Foot Injury'
    when Injury like '%illness%' or Injury like '%flu%' or Injury like '%strep throat%' 
    or Injury like '%headache%' or Injury like '%infection%' or Injury like '%virus%' then 'Illness'
    when Injury like '%toe%' then 'Toe Injury'
    when Injury like '%hip%' then 'Hip Injury'
    when Injury like '%elbow%' then 'Elbow Injury'
    when Injury like '%groin%' then 'Groin'
    when Injury like '%concussion%' then 'Concussion'
    when Injury like '%achilles%' then 'Achilles Injury'
    when Injury like '%ACL%' then 'ACL Injury'
    when Injury like '%calf%' then 'Calf Injury'
    when Injury like '%leg%' or Injury like '%hamstring%' or Injury like '%shin%'  
    or Injury like '%quadricep%' or Injury like '%thigh%' or Injury like '%plantar%' 
    or Injury like '%fibula%' then 'Leg Injury'
    when Injury like '%neck%' then 'Neck Injury'
    when Injury like '%nose%' then 'Nose injury'
    when Injury like '%rib%' or Injury like '%oblique%' or Injury like '%lung%' 
    or Injury like '%abdominal%' then 'Rib Injury'
    when Injury like '%wrist%' then 'Wrist injury'
    when Injury like '%hand%' or Injury like '%finger%' or Injury like '%thumb%' then 'Hand injury'
	when Injury = 'placed on IL' or Injury = 'returned to lineup' or Injury = 'activated from IL' 
    or Injury  like '%placed on IL%'
    then 'Returned/Activitated/Placed on/from IL/Lineup' 
    else 'Misc.'
    end as Injury_type, 2022 as Year
from y2022_player); 

create or replace view y2020_2021_2022_player_cash_cleaned_data as (
select *,'Player' as type from y2020_player_cleaned
union
select *, 'Player' as type from y2021_player_cleaned
union
select *, 'Player' as type from y2022_player_cleaned);

create or replace view y2020_2021_2022_position_cash_cleaned_data as (
select *,'Position' as type, 2020 as year from y2020_position
union    
select *,'Position' as type, 2021 as year from y2021_position
union
select *, 'Position' as type, 2022 as year from y2022_position);


create or replace view y2020_2021_2022_injury_cash_cleaned_data as (
select *,'Injury' as type,2020 as year from y2020_injury 
union
select *,'Injury' as type, 2021 as year from y2021_injury
union
select *,'Injury' as type, 2022 as year from y2022_injury);

create or replace view y2020_2021_2022_team_cash_cleaned_data as (
select *,'Team' as type,2020 as year from y2020_team
union
select *,'Team' as type, 2021 as year from y2021_team
union
select *,'Team' as type, 2022 as year from y2022_team);

create or replace view main_table_cash_injuries as (
select 'Player' as player, 'Injury' as injury, 'Team' as team,
'Position' as position
);

select * from main_table_cash_injuries;
select * from y2020_2021_2022_player_cash_cleaned_data;
select * from y2020_2021_2022_team_cash_cleaned_data;
select * from y2020_2021_2022_injury_cash_cleaned_data;
select * from y2020_2021_2022_position_cash_cleaned_data;

create or replace view y2020_2021_2022_player_cash_cleaned_data_int as(
select name, position, team, injury, cast(games as unsigned integer) as games, 
CAST(REPLACE(REPLACE(cash_earned_while_injured, '$', ''), ',', '') AS UNSIGNED INTEGER) as Cash_earned_while_injured_int ,
cash_earned_while_injured,
injury_type,year,type
from y2020_2021_2022_player_cash_cleaned_data);

create or replace view y2020_2021_2022_team_cash_cleaned_data_int as(
select teams, cast(players as unsigned integer) as Players,cast(games as unsigned integer) as games, 
CAST(REPLACE(REPLACE(cash_earned_while_injured, '$', ''), ',', '') AS UNSIGNED INTEGER) as Cash_earned_while_injured_int ,
cash_earned_while_injured, year,type
from y2020_2021_2022_team_cash_cleaned_data);

create or replace view y2020_2021_2022_injury_cash_cleaned_data_int as(
select reason, cast(players as unsigned integer) as Players,cast(games as unsigned integer) as games, 
CAST(REPLACE(REPLACE(cash_earned_while_injured, '$', ''), ',', '') AS UNSIGNED INTEGER) as Cash_earned_while_injured_int ,
cash_earned_while_injured, year,type
from y2020_2021_2022_injury_cash_cleaned_data);

create or replace view y2020_2021_2022_position_cash_cleaned_data_int as(
select position, cast(players as unsigned integer) as Players,cast(games as unsigned integer) as games, 
CAST(REPLACE(REPLACE(cash_earned_while_injured, '$', ''), ',', '') AS UNSIGNED INTEGER) as Cash_earned_while_injured_int ,
cash_earned_while_injured, year,type
from y2020_2021_2022_position_cash_cleaned_data);

select * from y2020_2021_2022_player_cash_cleaned_data_int;
select * from y2020_2021_2022_team_cash_cleaned_data_int;
select * from y2020_2021_2022_injury_cash_cleaned_data_int;
select * from y2020_2021_2022_position_cash_cleaned_data_int;




