## ETL Project Report
# Zane Keller, Ann Nguyen, Alex Dessoliers, Nandish Patel

Proposed Analysis: Does NBA spend (salaries) lead to better team performance? Does spending equal more success?

Data Sources : 
https://data.world/scuttlemonkey/brightbytes-workshop-example/workspace/file?agentid=edgx28&datasetid=nbadatasalary2017-18&filename=NBASalaryRaw.csv
https://www.basketball-reference.com/leagues/

The Data was extracted from sources as a csv file & imported to jupyter notebook via Pandas.

For Salary Data, 
All Columns with Null Values were removed & only the Team Name column and 2017-18 Salary column were kept.
2017-18 Salary Column had to be converted to float.
Grouped the Salary Data by Team Name & Summed the Salaries.
Renamed the Columns.

For Standings Data,
Brought in the Team Name, Wins, Losses & Win Percentage columns for both csv files (NBA_2017_2018.csv,NBA_2018_2019.csv)

Merged the Standings Data Frames and only kept the Win Percentage columns.

Created a NBA_db & 2 Tables in SQL (NBA_salary, NBA_standings). 
A SQL Database was chosen because of the relationship between Team & Salary/Win Percentage.
We connected the local database, checked for tables and used Pandas to load the Dataframe in the Database (NBA_db)


