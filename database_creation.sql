
-- CREATING DATABASE FROM CSV

CREATE DATABASE IF NOT EXISTS salesWalmart;

CREATE TABLE IF NOT EXISTS sales(
	Invoice_ID VARCHAR(255),
    Branch VARCHAR(1),
    City VARCHAR(255),
    Customer_type VARCHAR(255),
    Gender VARCHAR(255),
    Product_line VARCHAR(255),
    Unit_price DECIMAL(10, 2),
    Quantity INT,
    Tax_5pct DECIMAL(10, 2),
    Total DECIMAL(10, 2),
    Date DATE,
    Time TIME,
    Payment VARCHAR(255),
    COGS DECIMAL(10, 2),
    Gross_margin_percentage DECIMAL(10, 4),
    Gross_income DECIMAL(10, 2),
    Rating DECIMAL(3, 1)
);

LOAD DATA LOCAL INFILE '/Users/santiagofischel/Desktop/WalmartSalesData.csv.csv'
INTO TABLE sales
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM sales LIMIT 10;

