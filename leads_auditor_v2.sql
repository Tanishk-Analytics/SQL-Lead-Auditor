USE Tanishk_Marketing_Agency;
CREATE TABLE Raw_Leads_2(
Id INT PRIMARY KEY,
Client_Name VARCHAR(50),
City VARCHAR(30),
Spend INT,
Revenue INT);

INSERT INTO Raw_Leads_2(Id,Client_Name,City,Spend,Revenue)
VALUES (1,'Delhi_Real_Estate','Gurgaon',5000,25000);

SELECT Client_Name,
		Revenue,
        Spend,
        (Revenue - Spend) AS Net_Profit,
        (Revenue / Spend) As ROAS_Result
FROM Raw_Leads_2;


INSERT INTO Raw_Leads_2(Id,Client_Name,City,Spend,Revenue)
VALUES (2,'Jaipur_Tourism','Jaipur',10000,15000),
       (3,'Noida_Tech_Park','Noida',2000,18000),
       (4,'Gurgaon_Gyms','Gurgaon',5000,4000);
       
SELECT Client_Name,
		Revenue,
        Spend,
        (Revenue - Spend) AS Net_Loss,
        (Revenue / Spend) As ROAS
FROM Raw_Leads_2
WHERE Revenue < Spend;


SELECT Client_Name,
		Revenue,
        Spend,
		(Revenue - Spend) AS Net_Impact,
        (Revenue / Spend) AS ROAS,
    CASE
        WHEN Revenue > Spend THEN 'Profitable'
        WHEN Revenue < Spend THEN 'Loss'
        ELSE 'Break-Even'
    END AS Performance_Status
FROM Raw_Leads_2;    