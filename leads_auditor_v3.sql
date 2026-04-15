CREATE TABLE Master_Campaign_Data(
				ad_date DATE,
                platform VARCHAR(50),
                campaign_type VARCHAR(50),
                idustry VARCHAR(50),
                country VARCHAR(50),
                impressions INT,
                clicks INT,
                CTR DECIMAL(10,4),
                CPC DECIMAL(10,2),
                ad_spend DECIMAL(15,2),
                conversions INT,
                CPA DECIMAL(15,2),
                Revenue DECIMAL(15,2),
                ROAS DECIMAL(10,2));
                
SELECT * FROM Master_Campaign_Data;
SELECT idustry,
			SUM(ad_spend) AS Total_Spend,
            SUM(revenue) AS Total_Revenue,
            ROUND(SUM(revenue)/SUM(ad_spend),2) AS Industry_ROAS,
            CASE
            WHEN SUM(revenue) / SUM(ad_spend) >= 4.0 THEN 'SCALABLE'
            WHEN SUM(revenue) / SUM(ad_spend) BETWEEN 2.0 AND 4.0 THEN 'STABLE'
            ELSE 'Re-Strategize'
            END AS Growth_Verdict
FROM Master_Campaign_Data
GROUP BY idustry
ORDER BY Industry_ROAS DESC;  
      