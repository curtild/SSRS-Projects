### <em>Sample Report — Purchase Orders</em>
#### 👋 Report Description

#### Finance and Procurement departments typically issue purchase orders for necessary supplies. This report contains an advanced layout with QR codes for electronic processing.

#### The report's data source is <a href="https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks">Microsoft's AdventureWorks 2017 sample database</a>. (No proprietary data to worry with!)
#### 👋 Report Design
- #### A table is created to house barcodes for purchase orders. (<a href="/PurchaseOrders/CreateMyBarcodes.sql"><em>CreateMyBarcodes.sql</em></a> script is provided to create the table.)
- #### A SQL view is created to pull specific purchase orders. Purchase order numbers '0637' and '0925'. (<a href="/PurchaseOrders/v_PurchaseOrderDetail.sql"><em>v_PurchaseOrderDetail.sql</em></a> script is provided to create the view.)
 - #### Embedded data sets <a href="/PurchaseOrders/rsd_PurchaseOrders.rsd"><em>rsd_PurchaseOrders.rsd</em></a> is created to pull data from the view. (SQL file <a href="rsd_PurchaseOrders.sql"><em>rsd_PurchaseOrders.sql</em></a> is provided to show the SQL for the data set.)
 - #### To make the report run out of the box you'll need to do 2 things: 1. Create a shared data source named srds_AdventureWorks2017 (or create your own data source name, then adjust your report definition) 2. Adjust the report to include your own entry for your SSRS server to preview the report. 

#### View Sample Report: <a href="/PurchaseOrders/Purchase%20Order.pdf" height=750 width=550/>Purchase Orders.pdf</a>
