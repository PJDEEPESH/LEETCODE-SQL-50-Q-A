WITH FirstSales AS (
    SELECT product_id, MIN(year) AS first_year
    FROM Sales
    GROUP BY product_id
)
SELECT 
    s.product_id, 
    fs.first_year,
    s.quantity,
    s.price
FROM Sales s
JOIN FirstSales fs ON s.product_id = fs.product_id AND s.year = fs.first_year; 
