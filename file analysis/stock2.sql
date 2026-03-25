CREATE OR REPLACE VIEW `pizza_db.stock2`
AS
SELECT
	s2.ing_name,
	s2.ordered_weight,
	ing.ing_weight * inv.quantity inv_weight,
	(ing.ing_weight * inv.quantity)-s2.ordered_weight remaining_weight
FROM
	(
	SELECT
		ing_id,
		ing_name,
		SUM(order_weight) ordered_weight
	FROM
		`bens-pizza-490720.pizza_db.stock1`
	GROUP BY
		ing_id,
		ing_name
) s2
LEFT JOIN `bens-pizza-490720.pizza_db.inventory` inv ON
	s2.ing_id = inv.item_id
LEFT JOIN `bens-pizza-490720.pizza_db.ingredient` ing ON
	s2.ing_id = ing.ing_id
WHERE s2.ing_name IS NOT NULL;