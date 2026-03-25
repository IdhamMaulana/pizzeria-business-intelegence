CREATE OR REPLACE VIEW `pizza_db.stock_final`
AS
SELECT
  s1.ing_name,
  s1.total_quantity,
  s1.total_cost,
  s2.remaining_weight
FROM (
  SELECT
    ing_name,
    SUM(ing_weight) AS total_quantity,
    ROUND(SUM(ing_price),2) AS total_cost
  FROM pizza_db.stock1
  GROUP BY ing_name
) s1
LEFT JOIN pizza_db.stock2 s2
  ON s1.ing_name = s2.ing_name;


