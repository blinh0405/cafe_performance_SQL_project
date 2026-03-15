--Create a clean table
DROP TABLE IF EXISTS cafe_sales_clean;

CREATE TABLE cafe_sales_clean (
    transaction_id   TEXT,
    product          TEXT,
    quantity         REAL,
    unit_price       REAL,
    total_price      REAL,
    payment_method   TEXT,
    purchase_type    TEXT,
    order_date       TEXT
);

---Insert data from the raw table and do basic cleaning in the process. 
INSERT INTO cafe_sales_clean (
    transaction_id,
    product,
    quantity,
    unit_price,
    total_price,
    payment_method,
    purchase_type,
    order_date
)
SELECT
    "TXN_1961373",
    "Coffee",
    "2.0_3",
    "2.0_4",
    "4.0",
    "Credit Card",
    "Takeaway",
    "2023-09-08"
FROM cafe_sales_raw;

---Check the cleaned data
SELECT *
FROM cafe_sales_clean
LIMIT 10;

---Add store logic for in-store analysis
--Add a store column
ALTER TABLE cafe_sales_clean
ADD COLUMN store_location TEXT;

---Assign 9 operating locations
UPDATE cafe_sales_clean
SET store_location =
CASE ABS(RANDOM()) % 9
    WHEN 0 THEN 'London Central'
    WHEN 1 THEN 'Manchester'
    WHEN 2 THEN 'Birmingham'
    WHEN 3 THEN 'Leeds'
    WHEN 4 THEN 'Liverpool'
    WHEN 5 THEN 'Bristol'
    WHEN 6 THEN 'Glasgow'
    WHEN 7 THEN 'Edinburgh'
    ELSE 'Sheffield'
END;

---Data quality checks
SELECT COUNT(*) AS total_rows
FROM cafe_sales_clean;

---Null check
SELECT
    SUM(CASE WHEN transaction_id IS NULL THEN 1 ELSE 0 END) AS null_transaction_id,
    SUM(CASE WHEN product IS NULL THEN 1 ELSE 0 END) AS null_product,
    SUM(CASE WHEN quantity IS NULL THEN 1 ELSE 0 END) AS null_quantity,
    SUM(CASE WHEN unit_price IS NULL THEN 1 ELSE 0 END) AS null_unit_price,
    SUM(CASE WHEN total_price IS NULL THEN 1 ELSE 0 END) AS null_total_price,
    SUM(CASE WHEN payment_method IS NULL THEN 1 ELSE 0 END) AS null_payment_method,
    SUM(CASE WHEN purchase_type IS NULL THEN 1 ELSE 0 END) AS null_purchase_type,
    SUM(CASE WHEN order_date IS NULL THEN 1 ELSE 0 END) AS null_order_date
FROM cafe_sales_clean;

---Check if total price matches quantity × unit price
SELECT *
FROM cafe_sales_clean
WHERE ROUND(quantity * unit_price, 2) <> ROUND(total_price, 2)
LIMIT 20;
