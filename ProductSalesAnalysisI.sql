SELECT P.product_name,S.year,S.price
FROM Sales as S
INNER JOIN Product as P
ON S.product_id = P.product_id;