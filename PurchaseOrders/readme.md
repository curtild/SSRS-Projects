#### <em>Sample Report — Purchase Orders</em>
#### 👋 Report Description

Finance and Procurement departments typically issue purchase orders to order necessary supplies. This report contains an advanced layout with QR codes for electronic processing.

The report's data source is <a href="https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks">Microsoft's AdventureWorks 2017 sample database</a>. (No proprietary data to worry with!)
#### 👋 Report Design
- #### A table is created (dbo.MyBarcodes) to house barcodes for purchase orders. (<a href="/PurchaseOrders/CreateMyBarcodes.sql"><em>CreateMyBarcodes.sql</em></a> script is provided to create the table.)
- #### A SQL view (v_PurchaseOrderDetail) is created to pull specific purchase orders '0637' and '0925'. (<a href="/PurchaseOrders/v_PurchaseOrderDetail.sql"><em>v_PurchaseOrderDetail.sql</em></a> script is provided to create the view.)
 - #### Embedded data set <a href="/PurchaseOrders/rsd_PurchaseOrders.rsd"><em>rsd_PurchaseOrders.rsd</em></a> is created to pull data from the view. ( FYI. The embedded data set is illustrated with a shared data set file.) (SQL file <a href="rsd_PurchaseOrders.sql"><em>rsd_PurchaseOrders.sql</em></a> is also provided to show SQL for the data set.)
#### To make the report run out of the box (<a href="https://github.com/curtild/SSRS-Projects#to-follow-along-with-these-samples-youll-need">once you have the necessary software</a>) you'll need to do 2 things: 
   -  Create a shared data source named srds_AdventureWorks2017 in your report that points to the AdventureWorks 2017 database (or create your own data source name, then adjust your report definition). 
   -  Adjust the report to include your own entry for your SSRS server to preview the report. 

#### View Sample Report: <a href="/PurchaseOrders/Purchase%20Order.pdf" height=750 width=550/>Purchase Orders.pdf</a>
