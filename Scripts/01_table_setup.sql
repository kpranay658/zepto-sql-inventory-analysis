drop table if exists zepto;



CREATE TABLE zepto (
    sku_id SERIAL PRIMARY KEY,
    category VARCHAR(255),
    name TEXT,
    mrp NUMERIC,
    discountPercent NUMERIC,
    availableQuantity INTEGER,
    discountedSellingPrice NUMERIC,
    weightInGms INTEGER,
    outOfStock BOOLEAN,
    quantity INTEGER
);



\copy zepto(category, name, mrp, discountPercent, availableQuantity, discountedSellingPrice, weightInGms, outOfStock, quantity) 
FROM 'C:\Users\MI\Desktop\DA Projects\archive\zepto_v2' 
WITH (FORMAT csv, HEADER true, DELIMITER ',', QUOTE '"', ENCODING 'UTF8');
