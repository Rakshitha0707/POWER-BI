--  Create table
CREATE TABLE InsuranceData (
    ClientID INT PRIMARY KEY,
    PolicyType VARCHAR(50),
    Region VARCHAR(50),
    Age INT,
    ClaimsAmount DECIMAL(10,2),
    Premiums DECIMAL(10,2),
    Year INT
);

-- Insert sample data
INSERT INTO InsuranceData (ClientID, PolicyType, Region, Age, ClaimsAmount, Premiums, Year) VALUES
(1, 'Auto', 'East', 25, 10000, 5000, 2019),
(2, 'Home', 'West', 34, 15000, 7000, 2020),
(3, 'Life', 'North', 45, 20000, 6000, 2021),
(4, 'Auto', 'South', 29, 12000, 5500, 2022),
(5, 'Life', 'East', 52, 30000, 8000, 2023),
(6, 'Auto', 'West', 37, 18000, 6500, 2019),
(7, 'Home', 'North', 48, 25000, 7000, 2020),
(8, 'Auto', 'South', 31, 14000, 6000, 2021),
(9, 'Life', 'East', 55, 32000, 7500, 2022),
(10, 'Auto', 'West', 40, 22000, 7200, 2023),
(11, 'Home', 'North', 60, 27000, 7100, 2019),
(12, 'Auto', 'South', 35, 16000, 6800, 2020),
(13, 'Life', 'East', 44, 23000, 6400, 2021),
(14, 'Auto', 'West', 39, 19000, 6700, 2022),
(15, 'Home', 'North', 50, 21000, 6600, 2023),
(16, 'Life', 'South', 33, 17000, 6500, 2019),
(17, 'Auto', 'East', 28, 11000, 6200, 2020),
(18, 'Home', 'West', 46, 26000, 7000, 2021),
(19, 'Auto', 'North', 42, 24000, 7100, 2022),
(20, 'Life', 'South', 53, 28000, 7300, 2023);

--  Example query: Claims by Region
SELECT Region, SUM(ClaimsAmount) AS TotalClaims
FROM InsuranceData
GROUP BY Region;

--  Example query: Claim Ratio by Year
SELECT Year,
       SUM(ClaimsAmount) / SUM(Premiums) AS ClaimRatio
FROM InsuranceData
GROUP BY Year
ORDER BY Year;
