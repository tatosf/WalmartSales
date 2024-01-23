
-- QUERIES

-- CITIES

# How many unique cities does the data have?
SELECT 
	DISTINCT city
FROM sales;

# In which unique city is each branch?
SELECT 
	DISTINCT city,
    branch
FROM sales;

# Which cities earned more revenue
SELECT
  city,
  SUM(total) AS city_revenue
FROM sales
GROUP BY city
ORDER BY city_revenue DESC;

# Average Gross Income per Branch

SELECT
  branch,
  AVG(gross_income) AS average_income
FROM sales
GROUP BY branch;


-- CUSTOMERS

# Which of the customer types brings the most revenue?

SELECT
	customer_type,
	SUM(total) AS total_revenue
FROM sales
GROUP BY customer_type
ORDER BY total_revenue;

# Number of Transactions per Customer Type

SELECT
  customer_type,
  COUNT(*) AS number_of_transactions
FROM sales
GROUP BY customer_type;

# Most common payment method

SELECT
  payment,
  COUNT(*) AS count
FROM sales
GROUP BY payment
ORDER BY count DESC;

# Average payment per trnsaction

SELECT
  AVG(total) AS average_purchase
FROM sales;



-- PRODUCT

# What is the most selling product line

SELECT
	SUM(quantity) as qty,
    product_line
FROM sales
GROUP BY product_line
ORDER BY qty DESC;


# What product line had the largest revenue?

SELECT
	product_line,
	SUM(total) as total_revenue
FROM sales
GROUP BY product_line
ORDER BY total_revenue DESC;

# Average Rating of Each Product Line

SELECT
  product_line,
  AVG(rating) AS average_rating
FROM sales
GROUP BY product_line
ORDER BY average_rating DESC;

# Sales Distribution Over Time (e.g., by Month or Year)

SELECT
  YEAR(date) AS year,
  MONTH(date) AS month,
  SUM(total) AS monthly_sales
FROM sales
GROUP BY year, month
ORDER BY year, month;

# Highest selling products in each city

SELECT
  city,
  product_line,
  SUM(quantity) AS total_sold
FROM sales
GROUP BY city, product_line
ORDER BY city, total_sold DESC;

