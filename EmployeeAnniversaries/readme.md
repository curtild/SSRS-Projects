### <em>Sample Report — Employee Anniversaries</em>
#### 👋 Report Description

#### Nearly every HR department celebrates employee anniversaries. This project is a sample form letter typically designed in SSRS.
#### While building this project, I tried to keep the concept simple. The report contains a drop down selection box to allow a user to select any given month to generate anniversary letters. Typically, I've designed this report with conditional SQL to select records for the next month ahead, in order to mail letters in advance.
#### Data contained in the report comes from <a href="">Microsoft's AdventureWorks 2017 sample database</a>. (No proprietary data to worry with!)
#### 👋 Report Design
- #### A SQL view is driven by a monthly parameter to pull employee data with employment start dates. (<a href=""><em>v_EmployeeData.sql</em></a> script is provided to create the view.)
 - #### Embedded data sets <a href=""><em>rsd_Employee_Anniversaries.rsd</em></a> and <a href=""><em>rsd_Months.rsd</em></a> are created to pull data from the view. (SQL files <a href=""><em>rsd_Employee_Anniversaries.sql</em></a> and <a href=""><em>rsd_Months.sql</em></a>  are also provided to show SQL for both data sets.)
 - #### To make the report run out of the box you'll need to do 2 things: 1. Create a shared data source name srds_AdventureWorks2017 (or create your own data source name, then adjust your report definition) 2. Adjust the report to include your own entry for your SSRS server. 

#### View Sample Report: <a href="/EmployeeAnniversaries/AnniversaryLetter.png" height=750 width=550/>Anniversary Letter.pdf</a>
