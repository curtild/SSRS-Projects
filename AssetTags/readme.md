#### <em>Sample Report — Asset Tags</em>
#### 👋 Report Description

Most IT departments issue asset tags to track company assets such as desktops, laptops, equipment, etc. This report contains an advanced 3-column layout with QR codes for     electronic    tracking.

The report's data source is <a href="https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks">Microsoft's AdventureWorks 2017 sample database</a>. (No         proprietary data to worry with!)
      
#### 👋 Report Design
#### - A table is created (dbo.Employee_Barcodes) to house barcodes for each employee's laptop. (<a href="/AssetTags/CreateEmployeeBarcodes.sql">CreateEmployeeBarcodes.sql</a>  script is provided to create the table.) 
#### - A SQL view (v_Employee_Barcodes) is created to pull employee data with related barcodes. (<a href="/AssetTags/v_Employee_Barcodes.sql"><em>v_Employee_Barcodes.sql</em></a> script is provided to create the view.)
#### - Embedded data set <a href="/AssetTags/rsd_EmployeeBarcodes.rsd"><em>rsd_EmployeeBarcodes.rsd</em></a> is created to pull data from the view. ( FYI. The embedded data set is illustrated with a shared data set file.) (SQL file <a href="/AssetTags/rsd_EmployeeBarcodes.sql"><em>rsd_EmployeeBarcodes.sql</em></a> is also provided to show SQL for the data set.)
#### To make the report run out of the box (<a href="https://github.com/curtild/SSRS-Projects#to-follow-along-with-these-samples-youll-need">once you have the necessary software</a>) you'll need to do 2 things: 
 - Create a shared data source named srds_AdventureWorks2017 in your report that points to the AdventureWorks 2017 database (or create your own data source name, then adjust your report definition) 
 -  Adjust the report to include your own entry for your SSRS server to preview the report. 

#### View Sample Report: <a href="/AssetTags/AssetTag%20Barcode.pdf" height=750 width=550/>AssetTag Barcode.pdf</a>
