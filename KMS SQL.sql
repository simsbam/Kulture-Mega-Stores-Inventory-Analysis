## Case Study 2: Kultra Mega Stores Inventory## 

CREATE DATABASE KMS_Sql_Case_Study;

## CASE SCENARIO 1

SELECT * FROM kms_sale;
SELECT * FROM Order_status;

## ANSWERS ###
###1. Product category thehighest sales?###
SELECT `product category`, 
       SUM(sales) AS total_sales
FROM kms_sale
GROUP BY `product category`
ORDER BY total_sales DESC
LIMIT 1;

###2.Top 3 and Bottom 3 regions in terms of sales###
-- Top 3 Regions
SELECT region, 
ROUND (SUM(sales), 2) AS total_sales
FROM kms_sale
GROUP BY region
ORDER BY total_sales DESC
LIMIT 3;

-- Bottom 3 Regions
SELECT region, 
ROUND (SUM(sales), 2) AS total_sales
FROM kms_sale
GROUP BY region
ORDER BY total_sales ASC
LIMIT 3;

###3.Total sales of appliances in Ontario###
SELECT SUM(sales) AS total_sales
FROM kms_sale
WHERE 'product_sub-category' = 'Appliances' AND province = 'Ontario';

###4 Bottom 10 customers by sales
SELECT `customer name`, 
ROUND(SUM(sales), 2) AS total_sales
FROM kms_sale
GROUP BY `customer name`
ORDER BY total_sales ASC
LIMIT 10;

###5.Shipping method with highest total shipping cost##
SELECT `ship mode`, 
SUM(`shipping cost`) AS total_shipping_cost
FROM kms_sale
GROUP BY `ship mode`
ORDER BY total_shipping_cost DESC
LIMIT 1;

## CASE SCENARIO 2
###6. Most valuable customers and what they buy###
SELECT `customer name`, 
ROUND(SUM(sales), 2) AS total_sales, GROUP_CONCAT(DISTINCT `product category`) AS categories
FROM kms_sale
GROUP BY `customer name`
ORDER BY total_sales DESC
LIMIT 10;

###7. Small business customer with highest sales###
SELECT `customer name`, 
ROUND(SUM(sales), 2) AS total_sales
FROM kms_sale
WHERE `customer segment` = 'Small Business'
GROUP BY `customer name`
ORDER BY total_sales DESC
LIMIT 1;

###8. Corporate customer with most orders from 2009–2012###
SELECT `customer name`, COUNT(`order id`) AS order_count
FROM kms_sale
WHERE `customer segment` = 'Corporate'
  AND YEAR(`order date`) BETWEEN 2009 AND 2012
GROUP BY `customer name`
ORDER BY order_count DESC
LIMIT 1;

###9. Most profitable consumer customer##
SELECT `customer name`, 
SUM(profit) AS total_profit
FROM kms_sale
WHERE `customer segment` = 'Consumer'
GROUP BY `customer name`
ORDER BY total_profit DESC
LIMIT 1;

###10. Customer who returned items and their segment###
SELECT DISTINCT ks.`customer name`, ks.`customer segment`
FROM kms_sale ks
JOIN Order_Status os ON ks.`order id` = os.`order id`
WHERE os.status = 'Returned';

###11. Was shipping cost aligned with order priority?##
SELECT `order priority`, `ship mode`, 
ROUND(AVG(`shipping cost`), 2) AS avg_shipping_cost,
COUNT(*) AS orders
FROM kms_sale
GROUP BY `order priority`, `ship mode`
ORDER BY `order priority`, avg_shipping_cost;

#RESPONSE: No,