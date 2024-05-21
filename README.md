# Introduction

Delve into the Toronto real estate market to understand current trends and potential forecasts through an analysis designed to answer the following questions:

1.  ***Is 2024 a buyer's or seller's market?***

2.  ***How have economic and demographic factors influenced real estate market prices over the past four years?***

 3.  ***What can we forecast for the Toronto real estate market in the next five years?***

Here’s how I approached these questions:

- **Supply and Demand Analysis**: I examined the balance between supply and demand to gauge market pressure.

- **Days on the Market**: I evaluated how long properties stay on the market before being 
sold.

- **Sales-to-Price Ratio**: I assessed the relationship between listing prices and actual sales prices.

- **Residential Unit Price Evolution**: I reviewed how the prices of residential units have changed over the past four years.

- **Demographic and Economic Factors**: I analyzed how demographic shifts and economic conditions influence the real estate market.

- **Forecast Regression Analysis**: I conducted a regression analysis to predict trends in the real estate market for the next five years.

- **Conclusions**: Based on my findings, I drew conclusions about the future direction of the market.

# TOOLS I USED

For my deep dive into the Toronto data analysis real estate market, I harnessed the power of several key tools:

a. **SQL**: The backbone of my analysis, allowing me to query the database and unearth critical insights.

b. **PostgreSQL**: The chosen database management system, ideal for handling the box office data.

c. **Visual Studio Code**: My go-to for database management and executing SQL queries.

d. **Git & GitHub**: Essential for version control and sharing my SQL scripts and analysis, ensuring collaboration and project tracking.

e. **Excel**: A versatile tool for creating graphs and forecasting trends.
The Analysis

Each query in this text aims to investigate the Toronto (Canada) real estate market from 2020 to 2024(February). I chose Toronto because I am a Torontonian.

## Supply and Demand Analysis

I rounded the annual totals of house listings (Total_HL) and houses sold (Total_HS) from the market_data table. After filtering for the specified years, I grouped and ordered the data by year in descending order. This made it easy to see yearly trends in listings and sales.

``` sql
SELECT
   EXTRACT(YEAR FROM info_date) AS year,
   ROUND(SUM(House_listing)) AS Total_HL, 
   ROUND(SUM(Houses_Sold)) AS Total_HS 
FROM
   market_data
WHERE
   EXTRACT(YEAR FROM info_date) IN (2020, 2021, 2022, 2023, 2024)
GROUP BY
   EXTRACT(YEAR FROM info_date)
ORDER BY
   year DESC;
```
## Residential Units Listings and Residential Units Sold (Feb 2020-2024)

<img src=".vscode/Image 1.png">



