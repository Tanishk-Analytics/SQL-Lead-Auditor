import mysql.connector
import pandas as pd

db = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "2205",
    database = "Tanishk_Marketing_Agency"
)

query = "SELECT idustry, ROUND(SUM(revenue) / SUM(ad_spend), 2) AS Industry_ROAS FROM Master_Campaign_Data GROUP BY idustry HAVING Industry_ROAS > 4.0 ORDER BY Industry_ROAS DESC;"


df = pd.read_sql(query,db)
df.index = df.index + 1
df = df.rename(columns={'idustry':'Industry'})

df.to_csv("Scalable_Industry_Report.csv" , index = False, header =True)

print("--- Agency Velocity Report ---")
print(df)
print("\nSuccess: 'Scalable_Industry_Report.csv' has been generated.")