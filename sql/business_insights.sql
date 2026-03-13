----Total Orders

SELECT COUNT(*) AS total_orders
FROM orders;


----Orders by Status

SELECT
order_status,
COUNT(*) AS total_orders
FROM orders
GROUP BY order_status;

---Monthly Order Trend


SELECT
strftime('%Y-%m', order_purchase_timestamp) AS month,
COUNT(order_id) AS total_orders
FROM orders
GROUP BY month
ORDER BY month;



---Top 10 Selling Products


SELECT
product_id,
COUNT(*) AS total_sales
FROM order_items
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 10;



---Revenue by Payment Type

SELECT
payment_type,
SUM(payment_value) AS revenue
FROM payments
GROUP BY payment_type
ORDER BY revenue DESC;



----Average Order Value

SELECT
AVG(payment_value) AS average_order_value
FROM payments;




--Orders Per Customer

SELECT
customer_id,
COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
ORDER BY order_count DESC;



---Total Revenue

SELECT
SUM(payment_value) AS total_revenue
FROM payments;




---Products Per Order

SELECT
order_id,
COUNT(product_id) AS product_count
FROM order_items
GROUP BY order_id
ORDER BY product_count DESC;



--Payment Distribution --


SELECT
payment_type,
COUNT(*) AS usage_count
FROM payments
GROUP BY payment_type;