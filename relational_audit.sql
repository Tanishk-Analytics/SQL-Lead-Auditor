CREATE TABLE Lead_Sales (
			Sale_ID INT AUTO_INCREMENT PRIMARY KEY,
            Industry VARCHAR(50),
            Sale_Status VARCHAR(20),
            Sale_Value DECIMAL(15,2));
            
INSERT INTO Lead_Sales (Industry, Sale_Status, Sale_Value)
VALUES
('SaaS', 'Closed', 150000.00),
('Fintech','Closed',120000.00),
('EdTech', 'Closed',90000.00),
('E-Commerce', 'Closed',110000.00);

SELECT 
    m.industry, 
    SUM(m.ad_spend) AS Total_Ad_Spend, 
    SUM(s.sale_value) AS Total_Revenue,
    (Sum(s.sale_value) - SUM(m.ad_spend)) AS Net_Profit,
    ROUND(SUM(s.sale_value) / SUM(m.ad_spend), 2) AS Real_World_ROAS
FROM Master_Campaign_Data m
INNER JOIN Lead_Sales s ON m.industry = s.industry
GROUP BY m.industry;
