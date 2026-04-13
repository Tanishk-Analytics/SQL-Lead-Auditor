CREATE DATABASE Tanishk_Marketing_Agency;
USE Tanishk_Marketing_Agency;
CREATE TABLE Raw_Leads(
Id INT,
Client_Name VARCHAR(50),
City_Name VARCHAR(30),
Spend INT,
Revenue INT
);

INSERT INTO Raw_Leads (Id, Client_Name, City_Name, Spend, Revenue)
VALUES (1, 'Delhi_Real_Estate', 'Gurgaon', 5000, 25000);

SELECT * FROM Raw_Leads;