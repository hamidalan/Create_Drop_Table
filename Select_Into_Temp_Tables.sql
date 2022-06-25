----Using Select Into by creating a new table---
--Order of Operation
/**
Select
column names
Into
From
Where
Group by
Having
Order by
**/
Select 
	PatientID
	,PatientName
	,PatientState
	,Gender
	,Charges
Into TestTable2
From TestTable
where Charges > 10000

----Creating a backup db of the HealthDataCourse_DB
---Create new table in new bkp db. However, this is NOT the best practice
Create Database Bkp_HealthDataCourse_DB

USE HealthDataCourse_DB

Select *
Into Bkp_HealthDataCourse_DB.dbo.TestTable2
From TestTable

----Creating a new table with Select Into with Conditions
Select 
	Case When Gender = 'M' Then 'Male'
		 When Gender = 'F' Then 'Female'
		 Else 'Unknown'
		 End as Gender
	,Sum(Visits) As 'Visits'
	,Sum(Charges) As 'Charges'
	,Count(PatientID) As 'Number_of_Patients'
Into TestTable2
from TestTable
where PatientState in ('FL','CA','UT','WY','GA')
Group By Gender
Having Sum(Charges) > 10000

---Creating a Temp Table. We use # before the tablename
/**Temp table are stored in System Databases--tempdb--Temporary Tables**/
Select 
	Case When Gender = 'M' Then 'Male'
		 When Gender = 'F' Then 'Female'
		 Else 'Unknown'
		 End as Gender
	,Sum(Visits) As 'Visits'
	,Sum(Charges) As 'Charges'
	,Count(PatientID) As 'Number_of_Patients'
Into #TestTable2
from TestTable
where PatientState in ('FL','CA','UT','WY','GA')
Group By Gender
Having Sum(Charges) > 10000