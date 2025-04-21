---Overall Performance by Year in 2009 - 2012---
SELECT 
    YEAR(order_date) AS years, 
    SUM(sales) AS sales, 
    COUNT(order_quantity) AS number_of_order 
FROM 
    dqlab_sales_store 
WHERE 
    order_status = 'Order Finished' 
AND 
    YEAR(order_date) 
BETWEEN 
    2009 AND 2012 
GROUP BY 
    YEAR(order_date) 
ORDER BY 
    1;

---Overall Performance by Product Sub Category in 2011 - 2012---
SELECT 
    YEAR(order_date) AS years,
    product_sub_category,
    SUM(sales) AS sales
FROM
    dqlab_sales_store
WHERE
    order_status = 'Order Finished'
AND
    YEAR(order_date) 
BETWEEN
    2011 AND 2012
GROUP BY
    1,2
ORDER BY
    1,3 DESC;

---Promotion Effectiveness and Efficiency by Years---
---Code 1 : Without Sub Query---
SELECT
    YEAR(order_date) AS years,
    SUM(sales) AS sales,
    SUM(discount_value) AS promotion_value,
    ROUND((SUM(discount_value) / SUM(sales)) * 100,2) AS burn_rate_precentage
FROM
    dqlab_sales_store
WHERE
    order_status = 'Order Finished'
GROUP BY
    1
HAVING 
    burn_rate_precentage >= 4.5
ORDER BY
    3;
    
---Code 2 : Using Sub Query---
SELECT
    years,
    sales,
    promotion_value,
    ROUND(
        (promotion_value / sales) * 100, 2 
    ) AS burn_rate_percentage
FROM 
(
SELECT
    EXTRACT(YEAR FROM order_date) AS years,
    SUM(sales) AS sales,
    SUM(discount_value) AS promotion_value
FROM 
    dqlab_sales_store 
WHERE 
    order_status = 'Order Finished'
AND 
    EXTRACT(YEAR FROM order_date) 
BETWEEN 
    2009 AND 2012
GROUP BY 
    1
) AS summary_of_year
ORDER BY 
    1;

---Promotion Effectiveness and Efficiency by Product Sub Category---
SELECT
    years,
    product_sub_category,
    product_category,
    sales,
    promotion_value,
    ROUND(
        (promotion_value / sales) * 100 , 2
    ) AS burn_rate_percentage
FROM 
(
SELECT
    ROUND(
        AVG(
            EXTRACT(YEAR FROM order_date)
            ),0
        ) AS years,
    product_category,
    product_sub_category,
    SUM(discount_value) AS promotion_value,
    SUM(sales) AS sales
FROM 
    dqlab_sales_store
WHERE 
    order_status = 'Order Finished' 
AND 
    EXTRACT(YEAR FROM order_date) = '2012'	
GROUP BY 
    2,3
) as summary_of_sub_product
ORDER BY 
    4 DESC;

---Customers Transactions per Year---
SELECT 
    EXTRACT(YEAR FROM order_date) AS years,  
    COUNT(DISTINCT customer) AS number_of_customer
FROM 
    dqlab_sales_store 
WHERE 
    order_status = 'Order Finished' 
AND 
    EXTRACT(YEAR FROM order_date) 
BETWEEN 
    2009 AND 2012 
GROUP BY 
    1
ORDER BY 
    1;