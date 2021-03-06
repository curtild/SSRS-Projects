#### <em>Sample Report — Employee Anniversaries</em>
#### 👋 Report Description

Nearly every HR department celebrates employee anniversaries. This sample report is a form letter typically designed in SSRS. While building this report, I tried to keep the concept simple. The report contains a drop down selection box to allow a user to select any month to generate anniversary letters. Typically, I've designed this report with conditional SQL to select records for the next month ahead relative to the current date, in order to mail letters a little in advance.

The report's data source is <a href="https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks">Microsoft's AdventureWorks 2017 sample database</a>. (No proprietary data to worry with!)
#### 👋 Report Design
- #### A SQL view (v_EmployeeData) is driven by a month parameter to pull employee data with employment start dates. (<a href="/EmployeeAnniversaries/v_EmployeeData.sql"><em>v_EmployeeData.sql</em></a> script is provided to create the view.)
 - #### Embedded data sets <a href="/EmployeeAnniversaries/rsd_Employee_Anniversaries.rsd"><em>rsd_Employee_Anniversaries.rsd</em></a> and <a href="/EmployeeAnniversaries/rsd_Months.rsd"><em>rsd_Months.rsd</em></a> are created to pull data from the view. ( FYI. The embedded data sets are illustrated with shared data set files.) (SQL files <a href="rsd_EmployeeAnniversaries.sql"><em>rsd_Employee_Anniversaries.sql</em></a> and <a href="rsd_Months.sql"><em>rsd_Months.sql</em></a> are also provided to show SQL for both data sets.)
#### To make the report run out of the box (<a href="https://github.com/curtild/SSRS-Projects#to-follow-along-with-these-samples-youll-need">once you have the necessary software</a>) you'll need to do 2 things: 
   - Create a shared data source named srds_AdventureWorks2017 in your report that points to the AdventureWorks 2017 database (or create your own data source name, then adjust your report definition). 
   - Adjust the report to include your own entry for your SSRS server to preview the report. 

<!--#### <a href="/EmployeeAnniversaries/AnniversaryLetterReportDesign.png">View the Report Design</a>-->

#### View Sample Report: <a href="/EmployeeAnniversaries/Anniversary%20Letters.pdf" height=750 width=550/>Anniversary Letters.pdf</a>
