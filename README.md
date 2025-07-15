# Kulture-Mega-Stores-Inventory-Analysis
## Project Background
This project explores a company, Kultra Mega Stores (KMS), to analyze customer behavior, product sales, shipping trends, and order status using SQL. 
By querying two core datasets — `kms_sale` and `Order_Status` — we answer business-driven questions related to high-performing customers, top-selling categories, regional performance, and operational efficiency.

The project demonstrates proficiency in SQL for business analysis, data aggregation, filtering, joining tables, and extracting actionable insights from raw transactional data.

## Data Structure and Initial Checks
The project uses the following tables:
- `kms_sale`: Contains transactional sales data including customer name, region, product category, order priority, shipping cost, profit, etc.
- `Order_Status`: Tracks returned orders.

Initial checks performed:
- Previewed table columns and row counts using `SELECT * FROM kms_sale` and `SELECT * FROM Order_Status`.
- Identified key fields for joining (`order id`), grouping (`product category`, `region`, `customer segment`), and filtering (`status`, `date`).
- Checked column names with spaces (e.g., `customer name`, `product category`) and used backticks to handle them correctly in SQL.

## Executive Summary
### Key Findings
The following business questions were answered through SQL queries:
1. **Top-Selling Product Category**: The category with the highest total sales was Technology.
2. **Regional Performance**: Top 3 regions were ranked by total sales were West, Ontario and Prarie while bottom 3 were Nunavut, Northwest Territories and Yukon.
3. **Sales by Province and Category**: Ontario's total sales for 'Appliances' was extracted.
4. **Customer Value**: Bottom 10 customers by sales were identified; high-value customers were profiled by segment and categories purchased.
5. **Shipping Insight**: The shipping mode with the highest total shipping cost was Delivery Truck.
6. **Customer Segments**: The most profitable and active customers across Consumer, Corporate, and Small Business segments were analyzed.
7. **Returns Insight**: Customers who returned orders were identified, along with their segment.
8. **Shipping Cost vs Priority**: Average shipping cost was compared across order priority levels and shipping modes, revealing inconsistency.

These insights provide decision-makers with direction on which regions to support, products to promote, customers to retain, and logistical issues to address. The entire queries can be access [Here](https://github.com/simsbam/Kulture-Mega-Stores-Inventory-Analysis/blob/main/KMS%20SQL.sql)

### Recommendations
- Focus promotions on top-performing product categories and customer segments.
- Investigate high shipping cost methods not aligned with order priority.
- Strengthen customer experience for regions with low sales and high returns.
- Target returning customers with retention offers or satisfaction surveys.
- Reassess suppliers or shipping partners causing profitability leaks.
  
## Tools and Skills Demonstrated
- SQL (MySQL) – SELECT, JOIN, GROUP BY, ORDER BY, LIMIT, WHERE, HAVING, COUNT, SUM, ROUND, and GROUP_CONCAT functions.
- Business Analysis – Answering real-world executive questions using data.
- Data Cleaning – Handling columns with spaces, aliases, date filters, and formatting issues.

