DROP TABLE nba_salary;
DROP TABLE NBA_standings;

CREATE TABLE nba_salary(
	nba_team TEXT,
	total_spend FLOAT
);
CREATE TABLE nba_standings(
	Team TEXT,
	Win_Percent_18 FLOAT,
	Win_Percent_19 FLOAT
);

SELECT * FROM nba_salary;
SELECT * FROM nba_standings;

SELECT s.nba_team, s.total_spend, st.win_percent_18, st.win_percent_19
	FROM nba_salary AS s
	JOIN nba_standings AS st
	ON s.nba_team = st.team
	ORDER BY s.total_spend DESC;