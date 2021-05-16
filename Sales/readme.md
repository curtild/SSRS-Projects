#### <em>Sample Report — Sales</em>
#### 👋 Report Description

#### Sales snapshot reports are vital to any organization. This sample report is a typical report designed in SSRS. While building this report, I tried to keep the concept simple. I've included a simple column chart and a map, with text tables for sales by month and by state.

#### The report's data source is <a href="https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks">Microsoft's AdventureWorks 2017 sample database</a>. (No proprietary data to worry with!)
#### 👋 Report Design
- #### A SQL view (v_CustomerSales) is created to pull U.S. data. (<a href="/Sales/v_CustomerSales.sql"><em>v_CustomerSales.sql</em></a> script is provided to create the view.)
 - #### Embedded data sets <a href="/Sales/rsd_StateSales.rsd"><em>rsd_StateSales.rsd</em></a> and <a href="/Sales/rsd_YearlySales.rsd"><em>rsd_YearlySales.rsd</em></a> are created to pull data from the view. (SQL files <a href="rsd_StateSales.sql"><em>rsd_StateSales.sql</em></a> and <a href="rsd_YearlySales.sql"><em>rsd_YearlySales.sql</em></a> are provided to show SQL for both data sets.)
 - #### To make the report run out of the box you'll need to do 2 things: 
   -  Create a shared data source named srds_AdventureWorks2017 (or create your own data source name, then adjust your report definition) 
   -  Adjust the report to include your own entry for your SSRS server to preview the report. 

#### View Sample Report: <a href="/Sales/Sales.pdf" height=750 width=550/>Sales.pdf</a>

