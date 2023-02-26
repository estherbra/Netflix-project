<div style="font-size:20px">
  <h1>Data Cleaning with Pyspark and loading into Azure SQL</h1>
</div>

# About the Project
This project consists on transforming data and loading a Pyspark dataframe into an Azure database with JDBC connection, ending with a dashboard with insights about netflix movies and TV shows.

<br/>

## 🌐 Overview

The project was made with Pyspark language in the transformation stage, using Google Colab.
In this step, there was some processes such as treatment of invalid data, correction of data types, and replacing null values with "non_informed".
<br/>
After cleaning, next step was sending data to Azure SQL through a function with JDBC connection information, called in the end of the notebook.
<br/>
Third and last step was connecting Azure SQL to Power BI to create a dashboard with the main information about Netflix collection.
<br/>

### Architecture:

## Step by Step
1. The first step is to copy the download link of the Dataset from the following page on Kaggle:
https://www.kaggle.com/datasets/shivamb/netflix-shows
<br/>

2. Second step consists in create the database on Azure SQL and set up the firewall rules to include your Google Colab IP.
(You can discover your Google Colab IP using "!curl ipecho.net/plain" on the notebook itself)
Still in the database, you have to create a Schema and a table to receive the data, this step can be found on "Step 2" folder.
<br/>

3. Third step is to create a json file with your credentials of Azure database and upload on the session storage, the purpose is to don't expose your credentials on code.
The json file can be found on "Step 3" folder.
<br/>

4. Fourth step is to finally run the notebook with all substitutions. The notebook can be found on "Step 4" folder. 
<br/>

5. Fifth step is to visualize data on Azure Portal or on SQL Server Management Studio to make sure the data was sent correctly.

![sql-table-netflix](https://i.imgur.com/e5A35zA.png)
<br/>

6. Sixth and last step is to create the dasboard on Power BI, the .pbix file can be found on "Step 5" folder for download.
The dashboard can be filtered by Title, by Country using the map visualization and also by the date the Title was added, which can be visualized in granularity of Year, Month or Day. For each Title selection, it's shown the corresponding Duration, TV Parental Guidelines, Description and Category of the movie or TV show.
<br/>
![dashboard_netflix](https://i.imgur.com/iDXb8Uh.png)

# configuring the environment

### Requirements

- JDBC Driver version 9.4.0.jre8
- Py4j version 0.10.9.5 
- pyspark version 3.3.2
