### <em>Sample Report — Purchase Orders</em>
#### 👋 Report Description

#### Finance and Procurement departments typically issue purchase orders for necessary purchases. The report contains an advanced layout with QR codes for electronic processing.

#### The report's data source is <a href="https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks">Microsoft's AdventureWorks 2017 sample database</a>. (No proprietary data to worry with!)
#### 👋 Report Design
- #### A SQL view is created to pull specific purchase orders. Purchase order numbers '0637' and '0925'. (<a href="/PurchaseOrders/v_PurchaseOrderDetail.sql"><em>v_PurchaseOrderDetail.sql</em></a> script is provided to create the view.)
 - #### Embedded data sets <a href="/EmployeeAnniversaries/rsd_Employee_Anniversaries.rsd"><em>rsd_Employee_Anniversaries.rsd</em></a> and <a href="/EmployeeAnniversaries/rsd_Months.rsd"><em>rsd_Months.rsd</em></a> are created to pull data from the view. (SQL files <a href="rsd_EmployeeAnniversaries.sql"><em>rsd_Employee_Anniversaries.sql</em></a> and <a href="rsd_Months.sql"><em>rsd_Months.sql</em></a> are provided to show SQL for both data sets.)
 - #### To make the report run out of the box you'll need to do 2 things: 1. Create a shared data source named srds_AdventureWorks2017 (or create your own data source name, then adjust your report definition) 2. Adjust the report to include your own entry for your SSRS server to preview the report. 

#### <a href="/EmployeeAnniversaries/AnniversaryLetterReportDesign.png">View the Report Design</a>

#### View Sample Report: <a href="/EmployeeAnniversaries/Anniversary%20Letters.pdf" height=750 width=550/>Anniversary Letters.pdf</a>
