# ETL Project Report

## Zane Keller, Ann Nguyen, Alex Dessoliers, Nandish Patel

Proposed Analysis: Does NBA spend (salaries) lead to better team performance? Does spending equal more success?

Data Sources :

https://data.world/scuttlemonkey/brightbytes-workshop-example/workspace/file?agentid=edgx28&datasetid=nbadatasalary2017-18&filename=NBASalaryRaw.csv

https://www.basketball-reference.com/leagues/

The Data was extracted from sources as a csv file & imported to jupyter notebook via Pandas.

# Jupyter Notebook

Salary Data Transformation:
  - All Columns with Null Values were removed & only the Team Name column and 2017-18 Salary column were kept.
  
  - 2017-18 Salary Column had to be converted to float.
  
  - Grouped the Salary Data by Team Name & Summed the Salaries.
  
  - Renamed the Columns.

Standing Data Transformation:
  - Brought in the Team Name, Wins, Losses & Win Percentage columns for both csv files (NBA_2017_2018.csv,NBA_2018_2019.csv)

  - Merged the Standings Data Frames and only kept the Win Percentage columns.

# SQL Database

Created a SQL database (nba_db): 

Created 2 Tables in SQL (nba_salary, nba_standings).

## nba_salary:
	- nba_team (TEXT)
	- total_spend (FLOAT)

## nba_standings:
	- Team (TEXT)
	- Win_Percent_18 (FLOAT)
	- Win_Percent_19 (FLOAT)

A SQL databse was used due to the relationship between (nba_team/Team) and the values in each table (total_spend/Win_Percent_18,Win_Percent_19).

# Final Product

A connection was made to the local database, checked for tables and used Pandas to load the Dataframe in the Database (nba_db).

The tables were joined on Team and required a sql database because of the reationalship between team and values in both the nba_salary and nba_standings tables.


