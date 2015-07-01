-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE DATABASE tournament;
\c tournament;

CREATE TABLE players(
	name VARCHAR,
	id SERIAL PRIMARY KEY
);

CREATE TABLE matches(
	p1 VARCHAR,
	p2 VARCHAR,
	winner INTEGER references players(id)
);

CREATE VIEW count_matches as 
SELECT p1,count(*) as num from matches
group by p1,p2;

CREATE VIEW count_wins as
SELECT p1, count(*) as wins from matches
group by winner;

CREATE VIEW standings as
SELECT p1, count(*) as wins from matches
group by winner
order by winner DESC;

