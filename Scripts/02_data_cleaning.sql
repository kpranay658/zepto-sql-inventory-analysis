-- ---------------------------------------------------------
-- DATA CLEANING & NORMALIZATION
-- ---------------------------------------------------------

-- 1. Convert Prices from Paise to Rupees (Standardizing Currency)
-- We divide by 100 to get the actual value in INR (₹)
UPDATE zepto
SET mrp = mrp / 100,
    discountedSellingPrice = discountedSellingPrice / 100;

-- 2. Handling Null Values
-- Ensuring categories aren't blank for cleaner 'GROUP BY' analysis later
UPDATE zepto
SET category = 'General/Uncategorized'
WHERE category IS NULL OR category = '';

-- 3. Removing "Broken" Data
-- Delete any rows where MRP is 0 or negative (impossible for retail)
DELETE FROM zepto
WHERE mrp <= 0;

-- 4. Creating a "Price Per Gram" column for Value Analysis
-- This is a 'Feature Engineering' step recruiters love to see
ALTER TABLE zepto ADD COLUMN price_per_gram NUMERIC(10,4);

UPDATE zepto
SET price_per_gram = discountedSellingPrice / NULLIF(weightInGms, 0);
