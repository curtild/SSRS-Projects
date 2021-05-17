#### <em>Sample Report — StoresByLocation_10Plus</em>
#### 👋 Report Description

#### Paginated reports are commonly found in any organization. Whether or not they are printed or viewed on screens, companies need readily available information. This report has an advanced design that contains cascading filters, groupings and multiple sorts.

#### The report's data source is <a href="https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks">Microsoft's AdventureWorks 2017 sample database</a>. (No proprietary data to worry with!)
#### 👋 Report Design
- #### A SQL view (v_StoresByCity) is driven by multiple parameters (country, state, city) to pull store and sales rep information. (<a href="/StoresByLocation/v_StoresByCity.sql"><em>v_StoresByCity.sql</em></a> script is provided to create the view.)
 - #### Embedded data sets <a href="/StoresByLocation/rsd_Stores_By_City.rsd"><em>rsd_Stores_By_City.rsd</em></a>, <a href="/StoresByLocation/rsd_Countries.rsd"><em>rsd_Countries.rsd</em></a>, <a href="/StoresByLocation/rsd_States.rsd"><em>rsd_States.rsd</em></a> and <a href="/StoresByLocation/rsd_Cities.rsd"><em>rsd_Cities.rsd</em></a> are created to pull data from the view. States pulled are based on country, and cities pulled are based on states. (Cascading filters.) (SQL files <a href="/StoresByLocation/rsd_Stores_By_City.sql"><em>rsd_Stores_By_City.sql</em></a>, <a href="/StoresByLocation/rsd_Countries.sql"><em>rsd_Countries.sql</em></a>, <a href="/StoresByLocation/rsd_States.sql"><em>rsd_States.sql</em></a>, and <a href="/StoresByLocation/rsd_Cities.sql"><em>rsd_Cities.sql</em></a>, are provided to show SQL for both data sets.) ( FYI. The embedded data sets are illustrated with shared data set files.)
 - #### To make the report run out of the box you'll need to do 2 things: 
   -  Create a shared data source named srds_AdventureWorks2017 in your report that points to the AdventureWorks 2017 database (or create your own data source name, then adjust your report definition) 
   -  Adjust the report to include your own entry for your SSRS server to preview the report. 

#### View Sample Report: <a href="/StoresByLocation/StoresByLocation_10Plus.pdf" height=750 width=550/>StoresByLocation_10Plus.pdf</a>
