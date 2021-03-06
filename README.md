A Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament. This project has two parts: defining the database schema (SQL table definitions), and writing code that will use it to track a Swiss tournament.

#Example of a 16 Player Swiss Tournament:

First round pairing is by random draw. For example, with 16 players they would be matched into 8 random pairs for the first round. For now, assume all games have a winner, and there are no draws.

After the first round, there will be a group of 8 players with a score of 1 (win), and a group of 8 players with a score of 0 (loss). For the 2nd round, players in each scoring group will be paired against each other – 1’s versus 1’s and 0’s versus 0’s.

After round 2, there will be three scoring groups:
4 players who have won both games and have 2 points
8 players who have won a game and lost a game and have 1 point
4 players who have lost both games and have no points.

Again, for round 3, players are paired with players in their scoring group. After the third round, the typical scoring groups will be:
2 players who have won 3 games (3 points)
6 players with 2 wins (2 points)
6 players with 1 win (1 point)
2 players with no wins (0 points)

For the fourth (and in this case final) round, the process repeats, and players are matched with others in their scoring group. Note that there are only 2 players who have won all of their games so far – they will be matched against each other for the "championship" game. After the final round, we’ll have something that looks like this:
1 player with 4 points – the winner!
4 players with 3 points – tied for second place
6 players with 2 points
4 players with 1 point
1 player with 0 points

The Swiss system produces a clear winner in just a few rounds, no-one is eliminated and almost everyone wins at least one game, but there are many ties to deal with.

#System requirements:
PostgreSQL
Python 2.7


Running the Program:
#Clone the git Repository
git clone https://github.com/anshulmotwani/tournament-results.git

#run sql to create database schema
psql -f tournament.sql

#to test the project run
python tournament_test.py
