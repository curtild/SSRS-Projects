### <em>Report Sample — Employee Anniversaries</em>
#### 👋 Report Description

#### Nearly every HR department celebrates employee anniversaries. This project is a sample of a typical form letter designed in SSRS.
#### While building this project, I tried to keep the concept simple. The report contains a drop down selection box to allow a user to select any given month for employee anniversary letters. Typically, I've designed this report with conditional SQL to select records for the next month ahead, in order to mail letters in advance.
#### Data contained in the report comes from the AdventureWorks 2017 sample database. (No proprietary data to worry with!)
#### 👋 Report Design
- #### A SQL view is driven by a monthly parameter to pull employee data with employment start dates by month. <a href=""><em>v_EmployeeData.sql</em></a> script is provided to create the view.
 - #### Embedded datasets <a href=""><em>rsd_Employee_Anniversaries.rsd</em></a> and <a href=""><em>rsd_Months.rsd</em></a> are created to pull data from the view. (SQL files <a href=""><em>rsd_Employee_Anniversaries.sql</em></a> and <a href=""><em>rsd_Months.sql</em></a>  are also provided to show SQL for both data sets.)

#### View Sample Letter: <a href="/EmployeeAnniversaries/AnniversaryLetter.png" height=750 width=550/>Anniversary Letter.pdf</a>
