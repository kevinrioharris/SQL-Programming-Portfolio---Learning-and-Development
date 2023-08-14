SELECT P.product_id, ROUND(SUM(S.units*P.price)/SUM(S.units),2) AS average_price
FROM Prices P
LEFT JOIN UnitsSold S
ON P.product_id = S.product_id
AND S.purchase_date BETWEEN start_date AND END_DATE
GROUP BY product_id;
