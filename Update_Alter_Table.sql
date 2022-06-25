-----Use ALTER Statement---------
Use HealthDataCourse_DB

---Adding a new Column to the Table---
Alter Table TestTable
Add PatientAge int 

----Updating a row for The PatientAge---
Update TestTable 
Set PatientAge = '25'
where PatientID = '12345'

---Dropping a column in a Table------
Alter Table TestTable
Drop Column PatientAge

----Changing the datatype of a column in a Table----
Alter Table TestTable
Alter Column Charges money
---The statement above throws an error due the Constraint on the Charges column
---that defaults to 0 when NULL. Therefore we need to drop the constraint
---and then alter the datatype for the column to money-datatype
Alter Table TestTable
Drop Constraint DF__TestTable__Charg__160F4887