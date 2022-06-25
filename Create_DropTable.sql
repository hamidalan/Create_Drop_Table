--Telling SSMS that you want to use a particular DB
Use HealthDataCourse_DB


--Create a table 
Create Table TestTable
	(PatientID varchar(255)
	,PatientName varchar(255)
	,PatientState varchar(255)
	,Gender varchar(255)
	,Visits int
	,Charges int)

--After refreshing the db, to confirm if table exist
Select * from TestTable

--Drop table created
Drop Table TestTable


--Inserting data into the table
Insert Into TestTable
	(PatientID
	,PatientName
	,PatientState
	,Gender
	,Visits
	,Charges)
	Values
	('12345'
	,'John'
	,'AL'
	,'M'
	,'3'
	,'200'
	)