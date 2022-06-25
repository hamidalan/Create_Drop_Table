/*
Section 6 Self Evaluation

Step 1: Connect to SQLCourse_DB (or create this database if you haven’t already)
Step 2: Upate all of the values in the Gender Column to 'Male' and 'Female'
Step 3: Upate the Patients name to 'Bobby' where PatientID = '12348'
Step 4: Delete patients from 'FL'
Step 5: Alter the PatientState datatype to varchar(50)
Step 6: Put all the PatientNames and PatientIDs into 
		another table called 'PatientTable'
Step 7: Add a few columns to 'PatientTable' - Weight, Height, Age
	*You decide the datatype
*/
--Step 1
USE HealthDataCourse_DB
 
--Step 2
--I like to use a Select Statement with a WHERE condition to confirm 
--data I would be Updating
Select * 
From TestTable
where Gender = 'M'

---Then use the WHERE Clause in my Update Statement
Update TestTable 
Set Gender = 'Male'
where Gender = 'M'



Select * 
From TestTable
where Gender = 'F'

Update TestTable 
Set Gender = 'Female'
where Gender = 'F'

--Step 3
Select * 
From TestTable
where PatientID = '12348'

Update TestTable 
Set PatientName = 'Bobby'
where PatientID = '12348'

--Step 4
--I like to use a Select Statement with a WHERE condition to confirm 
--data I would be Updating/Deleting
Select * 
From TestTable
where PatientState = 'FL'

Delete From TestTable
where PatientState = 'FL'

--Step 5
Alter Table TestTable
Alter Column PatientState varchar(50)

--Step 6
Select
	PatientID
	,PatientName
Into PatientTable
From TestTable

--OR
Select
	PatientID
	,PatientName
Into #PatientTable
From TestTable

--Step 7
Alter Table PatientTable
	Add PatientHeight float
	,PatientWeight float
	,PatientAge int

