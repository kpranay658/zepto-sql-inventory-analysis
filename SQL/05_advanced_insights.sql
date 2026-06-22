-- ADVANCED ANALYTICS

-- 1. Market Share Analysis (Window Functions)
-- Calculating what percentage of total category revenue each product represents.
-- Goal: Identify Hero Products that dominate their category.
WITH CategoryRevenue AS (
SELECT 
name, 
category, 
(discountedSellingPrice * availableQuantity) as product_revenue,
SUM(discountedSellingPrice * availableQuantity) OVER(PARTITION BY category) as total_cat_revenue
FROM zepto
WHERE outOfStock = FALSE
)
SELECT 
name, 
category, 
product_revenue,
ROUND((product_revenue / NULLIF(total_cat_revenue, 0)) * 100, 2) as market_share_pct
FROM CategoryRevenue
WHERE total_cat_revenue > 0
ORDER BY market_share_pct DESC
LIMIT 20;


-- 2. ABC Inventory Classification 
-- Categorizing products based on their stock value contribution.
-- A: Top 70% Value | B: Next 20% | C: Bottom 10%
-- Goal: Help warehouse managers prioritize high-value stock counts.
WITH StockValue AS (
SELECT 
name, 
category,
(mrp * availableQuantity) as inventory_value,
PERCENT_RANK() OVER(ORDER BY (mrp * availableQuantity) DESC) as value_rank
FROM zepto
)
SELECT 
name, 
category, 
inventory_value,
CASE 
WHEN value_rank <= 0.70 THEN 'A-Class (Critical)'
WHEN value_rank <= 0.90 THEN 'B-Class (Moderate)'
ELSE 'C-Class (Low Priority)'
END as inventory_priority
FROM StockValue;


-- 3. Pricing Tier Segmentation (N-Tile)
-- Splitting the entire catalog into 4 price quartiles (Cheap to Luxury).
-- Goal: Understand the "Price mix" of the Zepto inventory.
SELECT 
name, 
category, 
mrp,
NTILE(4) OVER(ORDER BY mrp) as price_quartile,
CASE 
WHEN NTILE(4) OVER(ORDER BY mrp) = 1 THEN 'Budget'
WHEN NTILE(4) OVER(ORDER BY mrp) = 2 THEN 'Value'
WHEN NTILE(4) OVER(ORDER BY mrp) = 3 THEN 'Premium'
ELSE 'Luxury'
END as price_segment
FROM zepto;


-- 4. Identifying "Price Anomalies"
-- Finding products that are priced significantly higher than their category average.
-- Goal: Detect potential data entry errors or unique premium listings.
WITH CatStats AS (
SELECT 
category, 
AVG(mrp) as avg_cat_price,
STDDEV(mrp) as std_dev_price
FROM zepto
GROUP BY category
)
SELECT 
z.name, 
z.category, 
z.mrp, 
cs.avg_cat_price,
ROUND(z.mrp / cs.avg_cat_price, 2) as price_index
FROM zepto z
JOIN CatStats cs ON z.category = cs.category
WHERE z.mrp > (cs.avg_cat_price + (2 * cs.std_dev_price))
ORDER BY price_index DESC;
