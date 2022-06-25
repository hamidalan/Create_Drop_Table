/*
Section 4 Self Evaluation

Step 1: Use the database “SQL_Course” (created in previous self evaluation)
Step 2: Create a table called “SQL_CourseTable”
Step 3: This table will have 4 columns – “ID, Name, Address, Visits”
		DataTypes
			ID – varchar(50)
			Name – varchar(255)
			Address – varchar(255)
			Visits - int
Step 4: Make ID a primary key
Step 5: ID cannot have null values
Step 6: If “Visits” has a null value then set default value to “0”
Step 7: Insert 5 rows of data (make up your own data)
*/

Use HealthDataCourse_DB

If Object_ID ('SQL_CourseTable') IS NOT NULL Drop Table SQL_CourseTable
GO

Create Table SQL_CourseTable
	(ID varchar(50) NOT NULL Primary Key
	,Name varchar(255)
	,Address varchar(255)
	,Visits int NULL Default 0
	)

Insert into SQL_CourseTable
	(ID
	,Name
	,Address
	,Visits
	)
Values 
	('1255','Jessica Latham','MO','4'),
	('1256','KriOsten Owens','KS','9'),
	('1257','Abigail Newman','IL','6'),
	('1258','Joe Doe','MN','3'),
	('1259','Samuel Larry','NC','5')

Select * from SQL_CourseTable