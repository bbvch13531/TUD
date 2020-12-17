/* Golf DB 1 and DB 2*/
drop table results1;
drop table results2;
drop table players1;
drop table players2;
drop table team1;
drop table team2;
drop table tournament1;
drop table tournament2;


Create Table Team1(
Team_id integer primary key,
Team_name varchar(100)
);

Create Table Team2(
Team_id integer primary key,
Team_name varchar(100)
);

Create Table Players1(
p_id integer primary key,
p_name varchar(50),
p_sname varchar(50),
team_id integer,
constraint fk_team_1 foreign key (team_id) references team1
);

Create Table Players2(
p_id integer primary key,
p_name varchar(50),
p_sname varchar(50),
team_id integer,
constraint fk_team_2 foreign key (team_id) references team2
);

Create Table Tournament1(
T_id integer primary key,
t_descriprion varchar(100),
t_date date,
Total_price float
);

Create Table Tournament2(
T_id integer primary key,
t_descriprion varchar(100),
t_date date,
Total_price float
);

Create Table Results1(
t_id integer,
p_id integer,
ranking integer,
price float,
CONSTRAINT  FK_player1 FOREIGN KEY (p_id) REFERENCES players1,
CONSTRAINT  FK_tournament1 FOREIGN KEY (t_id) REFERENCES tournament1,
CONSTRAINT PK_Results1 PRIMARY KEY (t_id,p_id)
);

Create Table Results2(
t_id integer,
p_id integer,
ranking integer,
price float,
CONSTRAINT  FK_player2 FOREIGN KEY (p_id) REFERENCES players2,
CONSTRAINT  FK_tournament2 FOREIGN KEY (t_id) REFERENCES tournament2,
CONSTRAINT PK_Results2 PRIMARY KEY (t_id,p_id)
);

/* END ER DIAGRAM */


/* data */
INSERT INTO TEAM1 (TEAM_ID, TEAM_NAME) VALUES (1, 'USA');
INSERT INTO TEAM1 (TEAM_ID, TEAM_NAME) VALUES (2, 'AUSTRALIA');
INSERT INTO TEAM1 (TEAM_ID, TEAM_NAME) VALUES (3, 'UK');
INSERT INTO TEAM1 (TEAM_ID, TEAM_NAME) VALUES (4, 'IRELAND');

INSERT INTO TEAM2 (TEAM_ID, TEAM_NAME) VALUES (1, 'UK');
INSERT INTO TEAM2 (TEAM_ID, TEAM_NAME) VALUES (2, 'IRELAND');
INSERT INTO TEAM2 (TEAM_ID, TEAM_NAME) VALUES (3, 'USA');
INSERT INTO TEAM2 (TEAM_ID, TEAM_NAME) VALUES (4, 'ITALY');



INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (1, 'Tiger', 'Woods', 1);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (2, 'Mary', 'Smith', 2);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (3, 'Mark', 'Deegan', 2);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (4, 'James', 'Bryan', 3);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (5, 'John', 'McDonald', 1);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (6, 'Mario', 'Baggio', 1);

INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (2, 'Tiger', 'Woods', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (1, 'John', 'McDonald', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (3, 'Jim', 'Burke', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (4, 'Paul', 'Bin', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (5, 'Peter', 'Flynn', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (6, 'Martha', 'Ross', 4);

INSERT INTO TOURNAMENT1 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (1, 'US Open', 1700000,'01-jan-2014');
INSERT INTO TOURNAMENT1 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (2, 'British Open', 7000000,'01-apr-2014');
INSERT INTO TOURNAMENT1 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (3, 'Italian Open', 2000000,'11-mar-2014');
INSERT INTO TOURNAMENT1 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (4, 'Irish Open', 300000,'21-jul-2014');

INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (1, 'Dutch Open', 1700000,'22-nov-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (2, 'French Open', 7000000,'17-dec-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (3, 'Spanish Open', 2000000,'03-mar-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (4, 'Chiinese Open', 300000,'15-jul-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (5, 'Dubai Open', 600000,'10-aug-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (6, 'US Master', 1000000,'10-jul-2014');


INSERT INTO RESULTS1 (T_ID, P_ID, ranking, PRICE) VALUES (1, 1, 1, 10000);
INSERT INTO RESULTS1 (T_ID, P_ID, ranking, PRICE) VALUES (1, 2, 2, 20000);
INSERT INTO RESULTS1 (T_ID, P_ID, ranking, PRICE) VALUES (2, 2, 4, 1000);
INSERT INTO RESULTS1 (T_ID, P_ID, ranking, PRICE) VALUES (3, 2, 3, 10000);
INSERT INTO RESULTS1 (T_ID, P_ID, ranking, PRICE) VALUES (3, 1, 2, 1100);
INSERT INTO RESULTS1 (T_ID, P_ID, ranking, PRICE) VALUES (4, 6, 3, 6000);
INSERT INTO RESULTS1 (T_ID, P_ID, ranking, PRICE) VALUES (4, 2, 2, 9000);
INSERT INTO RESULTS1 (T_ID, P_ID, ranking, PRICE) VALUES (4, 1, 1, 10000);
INSERT INTO RESULTS1 (T_ID, P_ID, ranking, PRICE) VALUES (3, 5, 2, 9500);
INSERT INTO RESULTS1 (T_ID, P_ID, ranking, PRICE) VALUES (4, 5, 4, 10000);
INSERT INTO RESULTS1 (T_ID, P_ID, ranking, PRICE) VALUES (2, 5, 7, 100);

INSERT INTO RESULTS2 (T_ID, P_ID, ranking, PRICE) VALUES (1, 1, 1, 1000);
INSERT INTO RESULTS2 (T_ID, P_ID, ranking, PRICE) VALUES (1, 2, 3, 2000);
INSERT INTO RESULTS2 (T_ID, P_ID, ranking, PRICE) VALUES (2, 2, 1, 6000);
INSERT INTO RESULTS2 (T_ID, P_ID, ranking, PRICE) VALUES (3, 2, 3, 17000);
INSERT INTO RESULTS2 (T_ID, P_ID, ranking, PRICE) VALUES (3, 1, 12, 1100);
INSERT INTO RESULTS2 (T_ID, P_ID, ranking, PRICE) VALUES (4, 6, 10, 8000);
INSERT INTO RESULTS2 (T_ID, P_ID, ranking, PRICE) VALUES (4, 2, 2, 12000);
INSERT INTO RESULTS2 (T_ID, P_ID, ranking, PRICE) VALUES (4, 1, 3, 10000);
INSERT INTO RESULTS2 (T_ID, P_ID, ranking, PRICE) VALUES (3, 5, 1, 9000);
INSERT INTO RESULTS2 (T_ID, P_ID, ranking, PRICE) VALUES (4, 5, 5, 1000);
INSERT INTO RESULTS2 (T_ID, P_ID, ranking, PRICE) VALUES (2, 5, 3, 1000);
INSERT INTO RESULTS2 (T_ID, P_ID, ranking, PRICE) VALUES (5, 5, 3, 8000);
INSERT INTO RESULTS2 (T_ID, P_ID, ranking, PRICE) VALUES (5, 2, 2, 16000);
INSERT INTO RESULTS2 (T_ID, P_ID, ranking, PRICE) VALUES (5, 1, 1, 20000);
INSERT INTO RESULTS2 (T_ID, P_ID, ranking, PRICE) VALUES (6, 1, 3, 2000);
INSERT INTO RESULTS2 (T_ID, P_ID, ranking, PRICE) VALUES (6, 5, 2, 9400);
INSERT INTO RESULTS2 (T_ID, P_ID, ranking, PRICE) VALUES (6, 4, 1, 12000);

/* DIMENSIONAL MODEL */

CREATE TABLE DimPlayer(
player_sk integer primary key,
player_name varchar(100)
);

CREATE TABLE DimTeam(
team_sk integer primary key,
team_name varchar(100)
);


CREATE TABLE DimTournament(
tournament_sk integer primary key,
t_descriprion  varchar(100),
total_price float
);

--DATE DIM
CREATE TABLE DimDate(
date_sk integer primary key,
full_date date,
dd integer,
mm integer,
yy integer,
week integer,
quarter integer,
dayOfWeek integer
);



--Fact

CREATE TABLE fact_results(
player_sk integer,
team_sk integer,
tournament_sk integer,
date_sk integer,
ranking integer,
price float,

CONSTRAINT FK_dimplayer FOREIGN KEY (player_sk)
REFERENCES DimPlayer,
CONSTRAINT FK_dimteam FOREIGN KEY (team_sk)
REFERENCES DimTeam,
CONSTRAINT FK_dimtournament FOREIGN KEY (tournament_sk)
REFERENCES DimTournament,
CONSTRAINT FK_dimdate FOREIGN KEY (date_sk)
REFERENCES DimDate,
CONSTRAINT PK_faceresults PRIMARY KEY (player_sk, team_sk, tournament_sk, date_sk)
);

/* ETL */
/* Staging Area */

CREATE TABLE player_stage(
p_sk integer primary key,
p_id integer,
player_name varchar(50),
team_id integer,
source_db integer
);

CREATE SEQUENCE p_stage_seq
start with 1
increment by 1
nomaxvalue;

DROP TRIGGER p_stage_trigger;

CREATE TRIGGER p_stage_trigger
before insert on player_stage
for each row
begin
select p_stage_seq.nextval into :new.p_sk from dual;
end;

insert into player_stage (p_id, player_name, team_id, source_db)
select p_id, concat(p_name,p_sname), team_id, 1 from
Players1;

insert into player_stage (p_id, player_name, team_id, source_db)
select p_id, concat(p_name,p_sname), team_id, 2 from
Players2;

select * from player_stage;

insert into DimPlayer select p_sk, player_name from player_stage;

delete DimPlayer p1
where  player_sk not in (
  select min(player_sk)
  from   DimPlayer p2
  where  p1.player_name = p2.player_name
);

CREATE TABLE team_stage(
team_sk integer primary key,
team_id integer,
team_name varchar(100),
source_db integer
);


CREATE SEQUENCE team_stage_seq
start with 1
increment by 1
nomaxvalue;

DROP TRIGGER team_stage_trigger;

CREATE TRIGGER team_stage_trigger
before insert on team_stage
for each row
begin
select team_stage_seq.nextval into :new.team_sk from dual;
end;

insert into team_stage (team_name, team_id, source_db)
select team_name, team_id, 1 from
Team1;

insert into team_stage (team_name, team_id, source_db)
select team_name, team_id, 2 from
Team2;


select * from team_stage;

insert into DimTeam select team_sk, team_name from team_stage;

delete DimTeam t1
where team_sk not in (
    select min(team_sk)
    from DimTeam t2
    where t1.team_name = t2.team_name
    );

CREATE TABLE tournament_stage(
tournament_sk integer primary key,
t_id integer,
t_descriprion varchar(100),
total_price float,
source_db integer
);

CREATE SEQUENCE tournament_stage_seq
start with 1
increment by 1
nomaxvalue;

DROP TRIGGER tournament_stage_trigger;

CREATE TRIGGER tournament_stage_trigger
before insert on tournament_stage
for each row
begin
select tournament_stage_seq.nextval into :new.tournament_sk from dual;
end;

insert into tournament_stage (t_id, t_descriprion, total_price, source_db)
select T_ID, T_DESCRIPRION, TOTAL_PRICE, 1 from
TOURNAMENT1;

insert into tournament_stage (t_id, t_descriprion, total_price, source_db)
select T_ID, T_DESCRIPRION, TOTAL_PRICE, 2 from
TOURNAMENT2;

select * from tournament_stage;

insert into DimTournament select (tournament_sk, t_descriprion, total_price) from tournament_stage;

declare 
  start_date date;
  loop_date date;
  num_days integer;
  dd integer;
  mm integer;
  yy integer;
  week integer;
  dayOfWeek integer;
  quarter integer;
BEGIN
  start_date := to_date('01-01-2014','DD-MM-YYYY');
  num_days := 500;
  loop_date := start_date;
  FOR n IN 0..num_days LOOP 
     loop_date := start_date + n;
     dd := EXTRACT(DAY FROM  loop_date);
     mm := EXTRACT(MONTH FROM  loop_date);
     yy := EXTRACT(YEAR FROM  loop_date);
     week := to_number(to_char(loop_date,'WW'))
     dayOfWeek := TO_CHAR(loop_date, 'D');
     if (mm>=1 and mm<=3) then quarter := 1;
     elsif (mm>=4 and mm<=6) then quarter := 2;
     elsif (mm>=7 and mm<=9) then quarter := 3;
     elsif (mm>=10 and mm<=12) then quarter := 4;  
     end if;
   insert into DimDate values(n,loop_date,dd,mm,yy,week,quarter,dayOfWeek);
  END LOOP;
end;

select * from DimDate;


/* Loading Fact */

CREATE TABLE fact_stage(
t_id integer,
p_id integer,
team_id integer,
s_date date,
ranking integer,
price float,
p_sk integer,
t_sk integer,
team_sk integer,
date_sk integer,
source_db integer
);

insert into fact_stage(t_id, p_id, ranking, price, source_db) 
select t_id, p_id, ranking, total_price, 1
from TOURNAMENT1;



insert into fact_stage(t_id, p_id, s_date, ranking, price, source_db) 
select t_id, p_id, ranking, price, 2
from Results2 r
inner join TOURNAMENT2 t ON t.t_id = r.t_id;



insert into fact_stage(t_id, p_id, s_date, ranking, price, source_db) 
select t.t_id, p_id, t_date, ranking, price, 1
from Results1 r
join TOURNAMENT1 t ON t.t_id = r.t_id;

insert into fact_stage(t_id, p_id, s_date, ranking, price, source_db) 
select t.t_id, p_id, t_date, ranking, price, 2
from Results2 r
join TOURNAMENT2 t ON t.t_id = r.t_id;

select * from fact_stage;

/* Assign Surrogate Keys */
/* Player SK */
update fact_stage
set p_sk = (select player_stage.p_sk from 
player_stage where 
(player_stage.source_DB = fact_stage.source_DB and
player_stage.p_id = fact_stage.p_id));

select * from fact_stage;

/* Team SK */
update fact_stage
set team_sk = (select team_stage.team_sk from 
team_stage where 
(team_stage.source_DB = fact_stage.source_DB and
player_stage.team_id = team_stage.team_id));

/* Tournament SK */
update fact_stage
set t_sk = (select tournament_stage.t_sk from 
tournament_stage where 
(tournament_stage.source_DB = fact_stage.source_DB and
tournament_stage.t_id = team_stage.t_id));

/* Date */

update fact_stage
set date_sk = 
	(select DimDate.date_sk from
	DimDate where (DimDate.full_date = fact_stage.s_date));
select * from fact_stage;

insert into fact_results select p_sk, team_sk, t_sk, date_sk, ranking, price from fact_stage;

select * from fact_results;