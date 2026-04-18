import mysql.connector
import pandas as pd

db = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "2205",
    database = "Tanishk_Marketing_Agency"

)

query = """
SELECT 
    m.industry, 
    SUM(m.ad_spend) AS Total_Ad_Spend, 
    SUM(s.sale_value) AS Total_Revenue,
    (Sum(s.sale_value) - SUM(m.ad_spend)) AS Net_Profit,
    ROUND(SUM(s.sale_value) / SUM(m.ad_spend), 2) AS Real_World_ROAS
FROM Master_Campaign_Data m
INNER JOIN Lead_Sales s ON m.industry = s.industry
GROUP BY m.industry;"""

df = pd.read_sql(query,db)
df.index = df.index+1
df = df.rename(columns={'industry':'Industry'})
df['Profit_Margin'] = df['Total_Revenue'] - df['Total_Ad_Spend']

print("---Relational Profit Audit---")
print(df)
df.to_csv('Relational_Profit_Report.csv',index = False, header = True)