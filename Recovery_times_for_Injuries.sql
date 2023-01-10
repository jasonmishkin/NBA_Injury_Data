#Health and Safety Protocols Recovery Time
create or replace view health_safety_protocols_recovery_time as(
select name, team, convert(injured_on,DATE) as Injured_on, convert(returned,DATE) as Returned, Days_Missed,
'Health and Safety Protocols' as injury, 'Sickness' as injury_type
from
(
select *,
case
	when old_name like '%Celtics%' then 'Boston Celtics'
    when old_name like '%Knicks%' then 'New York Knicks'
    when old_name like '%Raptors%' then 'Toronto Raptors'
    when old_name like '%Nets%' then 'Brooklyn Nets'
    when old_name like '%76ers%' then 'Philadelphia 76ers'
    when old_name like '%Bulls%' then 'Chicago Bulls'
    when old_name like '%Pistons%' then 'Detriot Pistons'
    when old_name like '%Pacers%' then 'Indiana Pacers'
    when old_name like '%Bucks%' then 'Milwaukee Bucks'
    when old_name like '%Cavaliers%' then 'Cleveland Cavaliers'
    when old_name like '%Hawks%' then 'Atlanta Hawks'
    when old_name like '%Hornets%' then 'Charlotte Hornets'
    when old_name like '%Heat%' then 'Miami Heat'
    when old_name like '%Wizards%' then 'Washingon Wizards'
    when old_name like '%Magic%' then 'Orlando Magic'
    when old_name like '%Nuggets%' then 'Denver Nuggets'
    when old_name like '%Timberwolves%' then 'Minnesota Timberwolves'
    when old_name like '%Thunder%' then 'Oklahoma City Thunder'
    when old_name like '%lazers%' then 'Portland Trail Blazers'
    when old_name like '%Jazz%' then 'Utah Jazz'
    when old_name like '%Warriors%' then 'Golden State Warrios'
    when old_name like '%Clippers%' then 'LA Clippers'
    when old_name like '%Lakers%' then 'LA Lakers'
    when old_name like '%Suns%' then 'Phoenix Suns'
    when old_name like '%Kings%' then 'Sacromento Kings'
    when old_name like '%Mavericks%' then 'Dallas Mavericks'
    when old_name like '%Rockets%' then 'Houston Rockets'
    when old_name like '%Grizzlies%' then 'Memphis Grizzlies'
    when old_name like '%Pelicans%' then 'New Orleans Pelicans'
    when old_name like '%Spurs%' then 'San Antonio Spurs'
    else 'n/a'
    end as team
from health_safety_protocols_r) as a);


#Illness Recovery Time
create or replace view illness_recovery_time as(
select name, team, convert(injured_on,DATE) as Injured_on, convert(returned,DATE) as Returned, Days_Missed,
'Illness' as injury, 'Sickness' as injury_type
from
(
select *,
case
	when old_name like '%Celtics%' then 'Boston Celtics'
    when old_name like '%Knicks%' then 'New York Knicks'
    when old_name like '%Raptors%' then 'Toronto Raptors'
    when old_name like '%Nets%' then 'Brooklyn Nets'
    when old_name like '%76ers%' then 'Philadelphia 76ers'
    when old_name like '%Bulls%' then 'Chicago Bulls'
    when old_name like '%Pistons%' then 'Detriot Pistons'
    when old_name like '%Pacers%' then 'Indiana Pacers'
    when old_name like '%Bucks%' then 'Milwaukee Bucks'
    when old_name like '%Cavaliers%' then 'Cleveland Cavaliers'
    when old_name like '%Hawks%' then 'Atlanta Hawks'
    when old_name like '%Hornets%' then 'Charlotte Hornets'
    when old_name like '%Heat%' then 'Miami Heat'
    when old_name like '%Wizards%' then 'Washingon Wizards'
    when old_name like '%Magic%' then 'Orlando Magic'
    when old_name like '%Nuggets%' then 'Denver Nuggets'
    when old_name like '%Timberwolves%' then 'Minnesota Timberwolves'
    when old_name like '%Thunder%' then 'Oklahoma City Thunder'
    when old_name like '%lazers%' then 'Portland Trail Blazers'
    when old_name like '%Jazz%' then 'Utah Jazz'
    when old_name like '%Warriors%' then 'Golden State Warrios'
    when old_name like '%Clippers%' then 'LA Clippers'
    when old_name like '%Lakers%' then 'LA Lakers'
    when old_name like '%Suns%' then 'Phoenix Suns'
    when old_name like '%Kings%' then 'Sacromento Kings'
    when old_name like '%Mavericks%' then 'Dallas Mavericks'
    when old_name like '%Rockets%' then 'Houston Rockets'
    when old_name like '%Grizzlies%' then 'Memphis Grizzlies'
    when old_name like '%Pelicans%' then 'New Orleans Pelicans'
    when old_name like '%Spurs%' then 'San Antonio Spurs'
    else 'n/a'
    end as team
from Illness_r) as b);

#Concussion Recovery Time
create or replace view Concussion_recovery_time as(
select name, team, convert(injured_on,DATE) as Injured_on, convert(returned,DATE) as Returned, Days_Missed,
'Concussion' as injury, 'Head' as injury_type
from
(
select *,
case
	when old_name like '%Celtics%' then 'Boston Celtics'
    when old_name like '%Knicks%' then 'New York Knicks'
    when old_name like '%Raptors%' then 'Toronto Raptors'
    when old_name like '%Nets%' then 'Brooklyn Nets'
    when old_name like '%76ers%' then 'Philadelphia 76ers'
    when old_name like '%Bulls%' then 'Chicago Bulls'
    when old_name like '%Pistons%' then 'Detriot Pistons'
    when old_name like '%Pacers%' then 'Indiana Pacers'
    when old_name like '%Bucks%' then 'Milwaukee Bucks'
    when old_name like '%Cavaliers%' then 'Cleveland Cavaliers'
    when old_name like '%Hawks%' then 'Atlanta Hawks'
    when old_name like '%Hornets%' then 'Charlotte Hornets'
    when old_name like '%Heat%' then 'Miami Heat'
    when old_name like '%Wizards%' then 'Washingon Wizards'
    when old_name like '%Magic%' then 'Orlando Magic'
    when old_name like '%Nuggets%' then 'Denver Nuggets'
    when old_name like '%Timberwolves%' then 'Minnesota Timberwolves'
    when old_name like '%Thunder%' then 'Oklahoma City Thunder'
    when old_name like '%lazers%' then 'Portland Trail Blazers'
    when old_name like '%Jazz%' then 'Utah Jazz'
    when old_name like '%Warriors%' then 'Golden State Warrios'
    when old_name like '%Clippers%' then 'LA Clippers'
    when old_name like '%Lakers%' then 'LA Lakers'
    when old_name like '%Suns%' then 'Phoenix Suns'
    when old_name like '%Kings%' then 'Sacromento Kings'
    when old_name like '%Mavericks%' then 'Dallas Mavericks'
    when old_name like '%Rockets%' then 'Houston Rockets'
    when old_name like '%Grizzlies%' then 'Memphis Grizzlies'
    when old_name like '%Pelicans%' then 'New Orleans Pelicans'
    when old_name like '%Spurs%' then 'San Antonio Spurs'
    else 'n/a'
    end as team
from concussion_r) as c);

#Ankle Recovery Time
create or replace view ankle_injury_recovery_time as(
select name, team, convert(injured_on,DATE) as Injured_on, convert(returned,DATE) as Returned, Days_Missed,
'Right Ankle Injury' as Injury, 'Ankle' as Injury_type
from
(
select *,
case
	when old_name like '%Celtics%' then 'Boston Celtics'
    when old_name like '%Knicks%' then 'New York Knicks'
    when old_name like '%Raptors%' then 'Toronto Raptors'
    when old_name like '%Nets%' then 'Brooklyn Nets'
    when old_name like '%76ers%' then 'Philadelphia 76ers'
    when old_name like '%Bulls%' then 'Chicago Bulls'
    when old_name like '%Pistons%' then 'Detriot Pistons'
    when old_name like '%Pacers%' then 'Indiana Pacers'
    when old_name like '%Bucks%' then 'Milwaukee Bucks'
    when old_name like '%Cavaliers%' then 'Cleveland Cavaliers'
    when old_name like '%Hawks%' then 'Atlanta Hawks'
    when old_name like '%Hornets%' then 'Charlotte Hornets'
    when old_name like '%Heat%' then 'Miami Heat'
    when old_name like '%Wizards%' then 'Washingon Wizards'
    when old_name like '%Magic%' then 'Orlando Magic'
    when old_name like '%Nuggets%' then 'Denver Nuggets'
    when old_name like '%Timberwolves%' then 'Minnesota Timberwolves'
    when old_name like '%Thunder%' then 'Oklahoma City Thunder'
    when old_name like '%lazers%' then 'Portland Trail Blazers'
    when old_name like '%Jazz%' then 'Utah Jazz'
    when old_name like '%Warriors%' then 'Golden State Warrios'
    when old_name like '%Clippers%' then 'LA Clippers'
    when old_name like '%Lakers%' then 'LA Lakers'
    when old_name like '%Suns%' then 'Phoenix Suns'
    when old_name like '%Kings%' then 'Sacromento Kings'
    when old_name like '%Mavericks%' then 'Dallas Mavericks'
    when old_name like '%Rockets%' then 'Houston Rockets'
    when old_name like '%Grizzlies%' then 'Memphis Grizzlies'
    when old_name like '%Pelicans%' then 'New Orleans Pelicans'
    when old_name like '%Spurs%' then 'San Antonio Spurs'
    else 'n/a'
    end as team
from sprained_r_ankle_r) as d
union
select name, team, convert(injured_on,DATE) as Injured_on, convert(returned,DATE) as Returned, Days_Missed,
'Left Ankle Injury' as Injury, 'Ankle' as Injury_type
from
(
select *,
case
	when old_name like '%Celtics%' then 'Boston Celtics'
    when old_name like '%Knicks%' then 'New York Knicks'
    when old_name like '%Raptors%' then 'Toronto Raptors'
    when old_name like '%Nets%' then 'Brooklyn Nets'
    when old_name like '%76ers%' then 'Philadelphia 76ers'
    when old_name like '%Bulls%' then 'Chicago Bulls'
    when old_name like '%Pistons%' then 'Detriot Pistons'
    when old_name like '%Pacers%' then 'Indiana Pacers'
    when old_name like '%Bucks%' then 'Milwaukee Bucks'
    when old_name like '%Cavaliers%' then 'Cleveland Cavaliers'
    when old_name like '%Hawks%' then 'Atlanta Hawks'
    when old_name like '%Hornets%' then 'Charlotte Hornets'
    when old_name like '%Heat%' then 'Miami Heat'
    when old_name like '%Wizards%' then 'Washingon Wizards'
    when old_name like '%Magic%' then 'Orlando Magic'
    when old_name like '%Nuggets%' then 'Denver Nuggets'
    when old_name like '%Timberwolves%' then 'Minnesota Timberwolves'
    when old_name like '%Thunder%' then 'Oklahoma City Thunder'
    when old_name like '%lazers%' then 'Portland Trail Blazers'
    when old_name like '%Jazz%' then 'Utah Jazz'
    when old_name like '%Warriors%' then 'Golden State Warrios'
    when old_name like '%Clippers%' then 'LA Clippers'
    when old_name like '%Lakers%' then 'LA Lakers'
    when old_name like '%Suns%' then 'Phoenix Suns'
    when old_name like '%Kings%' then 'Sacromento Kings'
    when old_name like '%Mavericks%' then 'Dallas Mavericks'
    when old_name like '%Rockets%' then 'Houston Rockets'
    when old_name like '%Grizzlies%' then 'Memphis Grizzlies'
    when old_name like '%Pelicans%' then 'New Orleans Pelicans'
    when old_name like '%Spurs%' then 'San Antonio Spurs'
    else 'n/a'
    end as team
from sprained_l_ankle_r) as e);

#Knee Injury Recovery Time
create or replace view knee_injury_recover_time as(
select name, team, convert(injured_on,DATE) as Injured_on, convert(returned,DATE) as Returned, Days_Missed,
'Right Knee Injury' as Injury, 'Knee' as Injury_type
from
(
select *,
case
	when old_name like '%Celtics%' then 'Boston Celtics'
    when old_name like '%Knicks%' then 'New York Knicks'
    when old_name like '%Raptors%' then 'Toronto Raptors'
    when old_name like '%Nets%' then 'Brooklyn Nets'
    when old_name like '%76ers%' then 'Philadelphia 76ers'
    when old_name like '%Bulls%' then 'Chicago Bulls'
    when old_name like '%Pistons%' then 'Detriot Pistons'
    when old_name like '%Pacers%' then 'Indiana Pacers'
    when old_name like '%Bucks%' then 'Milwaukee Bucks'
    when old_name like '%Cavaliers%' then 'Cleveland Cavaliers'
    when old_name like '%Hawks%' then 'Atlanta Hawks'
    when old_name like '%Hornets%' then 'Charlotte Hornets'
    when old_name like '%Heat%' then 'Miami Heat'
    when old_name like '%Wizards%' then 'Washingon Wizards'
    when old_name like '%Magic%' then 'Orlando Magic'
    when old_name like '%Nuggets%' then 'Denver Nuggets'
    when old_name like '%Timberwolves%' then 'Minnesota Timberwolves'
    when old_name like '%Thunder%' then 'Oklahoma City Thunder'
    when old_name like '%lazers%' then 'Portland Trail Blazers'
    when old_name like '%Jazz%' then 'Utah Jazz'
    when old_name like '%Warriors%' then 'Golden State Warrios'
    when old_name like '%Clippers%' then 'LA Clippers'
    when old_name like '%Lakers%' then 'LA Lakers'
    when old_name like '%Suns%' then 'Phoenix Suns'
    when old_name like '%Kings%' then 'Sacromento Kings'
    when old_name like '%Mavericks%' then 'Dallas Mavericks'
    when old_name like '%Rockets%' then 'Houston Rockets'
    when old_name like '%Grizzlies%' then 'Memphis Grizzlies'
    when old_name like '%Pelicans%' then 'New Orleans Pelicans'
    when old_name like '%Spurs%' then 'San Antonio Spurs'
    else 'n/a'
    end as team
from r_knee_injury_r) as f
union
select name, team, convert(injured_on,DATE) as Injured_on, convert(returned,DATE) as Returned, Days_Missed,
'Left Knee Injury' as Injury, 'Knee' as Injury_type
from
(
select *,
case
	when old_name like '%Celtics%' then 'Boston Celtics'
    when old_name like '%Knicks%' then 'New York Knicks'
    when old_name like '%Raptors%' then 'Toronto Raptors'
    when old_name like '%Nets%' then 'Brooklyn Nets'
    when old_name like '%76ers%' then 'Philadelphia 76ers'
    when old_name like '%Bulls%' then 'Chicago Bulls'
    when old_name like '%Pistons%' then 'Detriot Pistons'
    when old_name like '%Pacers%' then 'Indiana Pacers'
    when old_name like '%Bucks%' then 'Milwaukee Bucks'
    when old_name like '%Cavaliers%' then 'Cleveland Cavaliers'
    when old_name like '%Hawks%' then 'Atlanta Hawks'
    when old_name like '%Hornets%' then 'Charlotte Hornets'
    when old_name like '%Heat%' then 'Miami Heat'
    when old_name like '%Wizards%' then 'Washingon Wizards'
    when old_name like '%Magic%' then 'Orlando Magic'
    when old_name like '%Nuggets%' then 'Denver Nuggets'
    when old_name like '%Timberwolves%' then 'Minnesota Timberwolves'
    when old_name like '%Thunder%' then 'Oklahoma City Thunder'
    when old_name like '%lazers%' then 'Portland Trail Blazers'
    when old_name like '%Jazz%' then 'Utah Jazz'
    when old_name like '%Warriors%' then 'Golden State Warrios'
    when old_name like '%Clippers%' then 'LA Clippers'
    when old_name like '%Lakers%' then 'LA Lakers'
    when old_name like '%Suns%' then 'Phoenix Suns'
    when old_name like '%Kings%' then 'Sacromento Kings'
    when old_name like '%Mavericks%' then 'Dallas Mavericks'
    when old_name like '%Rockets%' then 'Houston Rockets'
    when old_name like '%Grizzlies%' then 'Memphis Grizzlies'
    when old_name like '%Pelicans%' then 'New Orleans Pelicans'
    when old_name like '%Spurs%' then 'San Antonio Spurs'
    else 'n/a'
    end as team
from l_knee_injury_r) as g
union
select name, team, convert(injured_on,DATE) as Injured_on, convert(returned,DATE) as Returned, Days_Missed,
'Sprained Right Knee Injury' as Injury, 'Knee' as Injury_type
from
(
select *,
case
	when old_name like '%Celtics%' then 'Boston Celtics'
    when old_name like '%Knicks%' then 'New York Knicks'
    when old_name like '%Raptors%' then 'Toronto Raptors'
    when old_name like '%Nets%' then 'Brooklyn Nets'
    when old_name like '%76ers%' then 'Philadelphia 76ers'
    when old_name like '%Bulls%' then 'Chicago Bulls'
    when old_name like '%Pistons%' then 'Detriot Pistons'
    when old_name like '%Pacers%' then 'Indiana Pacers'
    when old_name like '%Bucks%' then 'Milwaukee Bucks'
    when old_name like '%Cavaliers%' then 'Cleveland Cavaliers'
    when old_name like '%Hawks%' then 'Atlanta Hawks'
    when old_name like '%Hornets%' then 'Charlotte Hornets'
    when old_name like '%Heat%' then 'Miami Heat'
    when old_name like '%Wizards%' then 'Washingon Wizards'
    when old_name like '%Magic%' then 'Orlando Magic'
    when old_name like '%Nuggets%' then 'Denver Nuggets'
    when old_name like '%Timberwolves%' then 'Minnesota Timberwolves'
    when old_name like '%Thunder%' then 'Oklahoma City Thunder'
    when old_name like '%lazers%' then 'Portland Trail Blazers'
    when old_name like '%Jazz%' then 'Utah Jazz'
    when old_name like '%Warriors%' then 'Golden State Warrios'
    when old_name like '%Clippers%' then 'LA Clippers'
    when old_name like '%Lakers%' then 'LA Lakers'
    when old_name like '%Suns%' then 'Phoenix Suns'
    when old_name like '%Kings%' then 'Sacromento Kings'
    when old_name like '%Mavericks%' then 'Dallas Mavericks'
    when old_name like '%Rockets%' then 'Houston Rockets'
    when old_name like '%Grizzlies%' then 'Memphis Grizzlies'
    when old_name like '%Pelicans%' then 'New Orleans Pelicans'
    when old_name like '%Spurs%' then 'San Antonio Spurs'
    else 'n/a'
    end as team
from sprained_r_knee_r) as h
union
select name, team, convert(injured_on,DATE) as Injured_on, convert(returned,DATE) as Returned, Days_Missed,
'Sprained Left Knee Injury' as Injury, 'Knee' as Injury_type
from
(
select *,
case
	when old_name like '%Celtics%' then 'Boston Celtics'
    when old_name like '%Knicks%' then 'New York Knicks'
    when old_name like '%Raptors%' then 'Toronto Raptors'
    when old_name like '%Nets%' then 'Brooklyn Nets'
    when old_name like '%76ers%' then 'Philadelphia 76ers'
    when old_name like '%Bulls%' then 'Chicago Bulls'
    when old_name like '%Pistons%' then 'Detriot Pistons'
    when old_name like '%Pacers%' then 'Indiana Pacers'
    when old_name like '%Bucks%' then 'Milwaukee Bucks'
    when old_name like '%Cavaliers%' then 'Cleveland Cavaliers'
    when old_name like '%Hawks%' then 'Atlanta Hawks'
    when old_name like '%Hornets%' then 'Charlotte Hornets'
    when old_name like '%Heat%' then 'Miami Heat'
    when old_name like '%Wizards%' then 'Washingon Wizards'
    when old_name like '%Magic%' then 'Orlando Magic'
    when old_name like '%Nuggets%' then 'Denver Nuggets'
    when old_name like '%Timberwolves%' then 'Minnesota Timberwolves'
    when old_name like '%Thunder%' then 'Oklahoma City Thunder'
    when old_name like '%lazers%' then 'Portland Trail Blazers'
    when old_name like '%Jazz%' then 'Utah Jazz'
    when old_name like '%Warriors%' then 'Golden State Warrios'
    when old_name like '%Clippers%' then 'LA Clippers'
    when old_name like '%Lakers%' then 'LA Lakers'
    when old_name like '%Suns%' then 'Phoenix Suns'
    when old_name like '%Kings%' then 'Sacromento Kings'
    when old_name like '%Mavericks%' then 'Dallas Mavericks'
    when old_name like '%Rockets%' then 'Houston Rockets'
    when old_name like '%Grizzlies%' then 'Memphis Grizzlies'
    when old_name like '%Pelicans%' then 'New Orleans Pelicans'
    when old_name like '%Spurs%' then 'San Antonio Spurs'
    else 'n/a'
    end as team
from sprained_l_knee_r) as i);

#Shoulder Injuriy Recovery Time
create or replace view Shoulder_injury_recover_time as(
select name, team, convert(injured_on,DATE) as Injured_on, convert(returned,DATE) as Returned, Days_Missed,
'Right Shoulder Injury' as Injury, 'Shoulder' as Injury_type
from
(
select *,
case
	when old_name like '%Celtics%' then 'Boston Celtics'
    when old_name like '%Knicks%' then 'New York Knicks'
    when old_name like '%Raptors%' then 'Toronto Raptors'
    when old_name like '%Nets%' then 'Brooklyn Nets'
    when old_name like '%76ers%' then 'Philadelphia 76ers'
    when old_name like '%Bulls%' then 'Chicago Bulls'
    when old_name like '%Pistons%' then 'Detriot Pistons'
    when old_name like '%Pacers%' then 'Indiana Pacers'
    when old_name like '%Bucks%' then 'Milwaukee Bucks'
    when old_name like '%Cavaliers%' then 'Cleveland Cavaliers'
    when old_name like '%Hawks%' then 'Atlanta Hawks'
    when old_name like '%Hornets%' then 'Charlotte Hornets'
    when old_name like '%Heat%' then 'Miami Heat'
    when old_name like '%Wizards%' then 'Washingon Wizards'
    when old_name like '%Magic%' then 'Orlando Magic'
    when old_name like '%Nuggets%' then 'Denver Nuggets'
    when old_name like '%Timberwolves%' then 'Minnesota Timberwolves'
    when old_name like '%Thunder%' then 'Oklahoma City Thunder'
    when old_name like '%lazers%' then 'Portland Trail Blazers'
    when old_name like '%Jazz%' then 'Utah Jazz'
    when old_name like '%Warriors%' then 'Golden State Warrios'
    when old_name like '%Clippers%' then 'LA Clippers'
    when old_name like '%Lakers%' then 'LA Lakers'
    when old_name like '%Suns%' then 'Phoenix Suns'
    when old_name like '%Kings%' then 'Sacromento Kings'
    when old_name like '%Mavericks%' then 'Dallas Mavericks'
    when old_name like '%Rockets%' then 'Houston Rockets'
    when old_name like '%Grizzlies%' then 'Memphis Grizzlies'
    when old_name like '%Pelicans%' then 'New Orleans Pelicans'
    when old_name like '%Spurs%' then 'San Antonio Spurs'
    else 'n/a'
    end as team
from right_shoulder_injury_r) as j
union
select name, team, convert(injured_on,DATE) as Injured_on, convert(returned,DATE) as Returned, Days_Missed,
'Left Shoulder Injury' as Injury, 'Shoulder' as Injury_type
from
(
select *,
case
	when old_name like '%Celtics%' then 'Boston Celtics'
    when old_name like '%Knicks%' then 'New York Knicks'
    when old_name like '%Raptors%' then 'Toronto Raptors'
    when old_name like '%Nets%' then 'Brooklyn Nets'
    when old_name like '%76ers%' then 'Philadelphia 76ers'
    when old_name like '%Bulls%' then 'Chicago Bulls'
    when old_name like '%Pistons%' then 'Detriot Pistons'
    when old_name like '%Pacers%' then 'Indiana Pacers'
    when old_name like '%Bucks%' then 'Milwaukee Bucks'
    when old_name like '%Cavaliers%' then 'Cleveland Cavaliers'
    when old_name like '%Hawks%' then 'Atlanta Hawks'
    when old_name like '%Hornets%' then 'Charlotte Hornets'
    when old_name like '%Heat%' then 'Miami Heat'
    when old_name like '%Wizards%' then 'Washingon Wizards'
    when old_name like '%Magic%' then 'Orlando Magic'
    when old_name like '%Nuggets%' then 'Denver Nuggets'
    when old_name like '%Timberwolves%' then 'Minnesota Timberwolves'
    when old_name like '%Thunder%' then 'Oklahoma City Thunder'
    when old_name like '%lazers%' then 'Portland Trail Blazers'
    when old_name like '%Jazz%' then 'Utah Jazz'
    when old_name like '%Warriors%' then 'Golden State Warrios'
    when old_name like '%Clippers%' then 'LA Clippers'
    when old_name like '%Lakers%' then 'LA Lakers'
    when old_name like '%Suns%' then 'Phoenix Suns'
    when old_name like '%Kings%' then 'Sacromento Kings'
    when old_name like '%Mavericks%' then 'Dallas Mavericks'
    when old_name like '%Rockets%' then 'Houston Rockets'
    when old_name like '%Grizzlies%' then 'Memphis Grizzlies'
    when old_name like '%Pelicans%' then 'New Orleans Pelicans'
    when old_name like '%Spurs%' then 'San Antonio Spurs'
    else 'n/a'
    end as team
from left_shoulder_injury_r) as k
union
select name, team, convert(injured_on,DATE) as Injured_on, convert(returned,DATE) as Returned, Days_Missed,
'Strained Right Shoulder' as Injury, 'Shoulder' as Injury_type
from
(
select *,
case
	when old_name like '%Celtics%' then 'Boston Celtics'
    when old_name like '%Knicks%' then 'New York Knicks'
    when old_name like '%Raptors%' then 'Toronto Raptors'
    when old_name like '%Nets%' then 'Brooklyn Nets'
    when old_name like '%76ers%' then 'Philadelphia 76ers'
    when old_name like '%Bulls%' then 'Chicago Bulls'
    when old_name like '%Pistons%' then 'Detriot Pistons'
    when old_name like '%Pacers%' then 'Indiana Pacers'
    when old_name like '%Bucks%' then 'Milwaukee Bucks'
    when old_name like '%Cavaliers%' then 'Cleveland Cavaliers'
    when old_name like '%Hawks%' then 'Atlanta Hawks'
    when old_name like '%Hornets%' then 'Charlotte Hornets'
    when old_name like '%Heat%' then 'Miami Heat'
    when old_name like '%Wizards%' then 'Washingon Wizards'
    when old_name like '%Magic%' then 'Orlando Magic'
    when old_name like '%Nuggets%' then 'Denver Nuggets'
    when old_name like '%Timberwolves%' then 'Minnesota Timberwolves'
    when old_name like '%Thunder%' then 'Oklahoma City Thunder'
    when old_name like '%lazers%' then 'Portland Trail Blazers'
    when old_name like '%Jazz%' then 'Utah Jazz'
    when old_name like '%Warriors%' then 'Golden State Warrios'
    when old_name like '%Clippers%' then 'LA Clippers'
    when old_name like '%Lakers%' then 'LA Lakers'
    when old_name like '%Suns%' then 'Phoenix Suns'
    when old_name like '%Kings%' then 'Sacromento Kings'
    when old_name like '%Mavericks%' then 'Dallas Mavericks'
    when old_name like '%Rockets%' then 'Houston Rockets'
    when old_name like '%Grizzlies%' then 'Memphis Grizzlies'
    when old_name like '%Pelicans%' then 'New Orleans Pelicans'
    when old_name like '%Spurs%' then 'San Antonio Spurs'
    else 'n/a'
    end as team
from strained_right_shoulder_r) as l
union
select name, team, convert(injured_on,DATE) as Injured_on, convert(returned,DATE) as Returned, Days_Missed,
'Strained Left Shoulder' as Injury, 'Shoulder' as Injury_type
from
(
select *,
case
	when old_name like '%Celtics%' then 'Boston Celtics'
    when old_name like '%Knicks%' then 'New York Knicks'
    when old_name like '%Raptors%' then 'Toronto Raptors'
    when old_name like '%Nets%' then 'Brooklyn Nets'
    when old_name like '%76ers%' then 'Philadelphia 76ers'
    when old_name like '%Bulls%' then 'Chicago Bulls'
    when old_name like '%Pistons%' then 'Detriot Pistons'
    when old_name like '%Pacers%' then 'Indiana Pacers'
    when old_name like '%Bucks%' then 'Milwaukee Bucks'
    when old_name like '%Cavaliers%' then 'Cleveland Cavaliers'
    when old_name like '%Hawks%' then 'Atlanta Hawks'
    when old_name like '%Hornets%' then 'Charlotte Hornets'
    when old_name like '%Heat%' then 'Miami Heat'
    when old_name like '%Wizards%' then 'Washingon Wizards'
    when old_name like '%Magic%' then 'Orlando Magic'
    when old_name like '%Nuggets%' then 'Denver Nuggets'
    when old_name like '%Timberwolves%' then 'Minnesota Timberwolves'
    when old_name like '%Thunder%' then 'Oklahoma City Thunder'
    when old_name like '%lazers%' then 'Portland Trail Blazers'
    when old_name like '%Jazz%' then 'Utah Jazz'
    when old_name like '%Warriors%' then 'Golden State Warrios'
    when old_name like '%Clippers%' then 'LA Clippers'
    when old_name like '%Lakers%' then 'LA Lakers'
    when old_name like '%Suns%' then 'Phoenix Suns'
    when old_name like '%Kings%' then 'Sacromento Kings'
    when old_name like '%Mavericks%' then 'Dallas Mavericks'
    when old_name like '%Rockets%' then 'Houston Rockets'
    when old_name like '%Grizzlies%' then 'Memphis Grizzlies'
    when old_name like '%Pelicans%' then 'New Orleans Pelicans'
    when old_name like '%Spurs%' then 'San Antonio Spurs'
    else 'n/a'
    end as team
from strained_left_shoulder_r) as l
union
select name, team, convert(injured_on,DATE) as Injured_on, convert(returned,DATE) as Returned, Days_Missed,
'Sprained Right Shoulder' as Injury, 'Shoulder' as Injury_type
from
(
select *,
case
	when old_name like '%Celtics%' then 'Boston Celtics'
    when old_name like '%Knicks%' then 'New York Knicks'
    when old_name like '%Raptors%' then 'Toronto Raptors'
    when old_name like '%Nets%' then 'Brooklyn Nets'
    when old_name like '%76ers%' then 'Philadelphia 76ers'
    when old_name like '%Bulls%' then 'Chicago Bulls'
    when old_name like '%Pistons%' then 'Detriot Pistons'
    when old_name like '%Pacers%' then 'Indiana Pacers'
    when old_name like '%Bucks%' then 'Milwaukee Bucks'
    when old_name like '%Cavaliers%' then 'Cleveland Cavaliers'
    when old_name like '%Hawks%' then 'Atlanta Hawks'
    when old_name like '%Hornets%' then 'Charlotte Hornets'
    when old_name like '%Heat%' then 'Miami Heat'
    when old_name like '%Wizards%' then 'Washingon Wizards'
    when old_name like '%Magic%' then 'Orlando Magic'
    when old_name like '%Nuggets%' then 'Denver Nuggets'
    when old_name like '%Timberwolves%' then 'Minnesota Timberwolves'
    when old_name like '%Thunder%' then 'Oklahoma City Thunder'
    when old_name like '%lazers%' then 'Portland Trail Blazers'
    when old_name like '%Jazz%' then 'Utah Jazz'
    when old_name like '%Warriors%' then 'Golden State Warrios'
    when old_name like '%Clippers%' then 'LA Clippers'
    when old_name like '%Lakers%' then 'LA Lakers'
    when old_name like '%Suns%' then 'Phoenix Suns'
    when old_name like '%Kings%' then 'Sacromento Kings'
    when old_name like '%Mavericks%' then 'Dallas Mavericks'
    when old_name like '%Rockets%' then 'Houston Rockets'
    when old_name like '%Grizzlies%' then 'Memphis Grizzlies'
    when old_name like '%Pelicans%' then 'New Orleans Pelicans'
    when old_name like '%Spurs%' then 'San Antonio Spurs'
    else 'n/a'
    end as team
from sprained_right_shoulder_r) as m
union
select name, team, convert(injured_on,DATE) as Injured_on, convert(returned,DATE) as Returned, Days_Missed,
'Sprained Left Shoulder' as Injury, 'Shoulder' as Injury_type
from
(
select *,
case
	when old_name like '%Celtics%' then 'Boston Celtics'
    when old_name like '%Knicks%' then 'New York Knicks'
    when old_name like '%Raptors%' then 'Toronto Raptors'
    when old_name like '%Nets%' then 'Brooklyn Nets'
    when old_name like '%76ers%' then 'Philadelphia 76ers'
    when old_name like '%Bulls%' then 'Chicago Bulls'
    when old_name like '%Pistons%' then 'Detriot Pistons'
    when old_name like '%Pacers%' then 'Indiana Pacers'
    when old_name like '%Bucks%' then 'Milwaukee Bucks'
    when old_name like '%Cavaliers%' then 'Cleveland Cavaliers'
    when old_name like '%Hawks%' then 'Atlanta Hawks'
    when old_name like '%Hornets%' then 'Charlotte Hornets'
    when old_name like '%Heat%' then 'Miami Heat'
    when old_name like '%Wizards%' then 'Washingon Wizards'
    when old_name like '%Magic%' then 'Orlando Magic'
    when old_name like '%Nuggets%' then 'Denver Nuggets'
    when old_name like '%Timberwolves%' then 'Minnesota Timberwolves'
    when old_name like '%Thunder%' then 'Oklahoma City Thunder'
    when old_name like '%lazers%' then 'Portland Trail Blazers'
    when old_name like '%Jazz%' then 'Utah Jazz'
    when old_name like '%Warriors%' then 'Golden State Warrios'
    when old_name like '%Clippers%' then 'LA Clippers'
    when old_name like '%Lakers%' then 'LA Lakers'
    when old_name like '%Suns%' then 'Phoenix Suns'
    when old_name like '%Kings%' then 'Sacromento Kings'
    when old_name like '%Mavericks%' then 'Dallas Mavericks'
    when old_name like '%Rockets%' then 'Houston Rockets'
    when old_name like '%Grizzlies%' then 'Memphis Grizzlies'
    when old_name like '%Pelicans%' then 'New Orleans Pelicans'
    when old_name like '%Spurs%' then 'San Antonio Spurs'
    else 'n/a'
    end as team
from sprained_left_shoulder_r) as n);

create or replace view NBA_Injuries_Recovery_Data as(
select name, team, injured_on, returned, cast(days_missed AS UNSIGNED INTEGER) as Days_missed, injury,injury_type
from(
select * from health_safety_protocols_recovery_time
union
select * from illness_recovery_time
union
select * from concussion_recovery_time
union
select * from ankle_injury_recovery_time
union
select * from knee_injury_recover_time
union
select * from shoulder_injury_recover_time) as j);

create or replace view NBA_ACL_Recoveries as(
select Name, Date_new as date, age, cast(Games_missed as unsigned integer) as Games_missed,Returned_to_nba_after,Injury, Injury_type
from(
select *, convert(date,DATE) as Date_new, 'ACL Injury' as Injury, 'Knee' as Injury_type
from acl_recovery_time_blog
) as o);

select * from nba_injuries_recovery_data;
select * from NBA_ACL_Recoveries








