WITH SegmentRevenue AS (
    -- total revenue for each customer segment
    SELECT 
        c.customer_segment, 
        SUM(f.sales) AS total_revenue
    FROM fact_sales f
    JOIN dim_cust c ON f.cust_id = c.cust_id
    GROUP BY c.customer_segment
),
TopSegment AS (
    -- customer segment with highest revenue
    SELECT customer_segment, total_revenue
    FROM SegmentRevenue
    WHERE total_revenue = (SELECT MAX(total_revenue) FROM SegmentRevenue)
),
CategorySales AS (
    -- total units and total revenue for each of the product categories
    SELECT 
        c.customer_segment,
        p.product_category, 
        SUM(f.sales) AS category_revenue,
        SUM(f.order_quantity) AS total_units_sold
    FROM fact_sales f
    JOIN dim_cust c ON f.cust_id = c.cust_id
    JOIN dim_prod p ON f.prod_id = p.prod_id
    WHERE c.customer_segment = (SELECT customer_segment FROM TopSegment)
    GROUP BY c.customer_segment, p.product_category
),
TopCategory AS (
    -- most purchased product
    SELECT product_category, category_revenue, total_units_sold
    FROM CategorySales
    WHERE total_units_sold = (SELECT MAX(total_units_sold) FROM CategorySales)
)
-- final result
SELECT 
    (SELECT customer_segment FROM TopSegment) AS customer_segment,
    (SELECT total_revenue FROM TopSegment) AS total_revenue,
    product_category,
    category_revenue,
    total_units_sold
FROM TopCategory;

