CREATE OR REPLACE VIEW `pizza_db.stock1`
AS
SELECT
	t1.item_name ,
	t1.ing_id ,
	t1.ing_name,
	t1.ing_weight ,
	t1.ing_price ,
	t1.order_qty ,
	t1.recipe_qty ,
	t1.order_qty * t1.recipe_qty order_weight,
	t1.ing_price / t1.ing_weight unit_cost,
	(t1.order_qty * t1.recipe_qty)*(t1.ing_price / t1.ing_weight) ing_cost
FROM
	(
	SELECT
		o.item_id,
		i.sku,
		i.item_name,
		r.ing_id ,
		i2.ing_name,
		r.quantity recipe_qty,
		sum(o.quantity) order_qty,
		i2.ing_weight,
		i2.ing_price
	FROM
		`bens-pizza-490720.pizza_db.orders` o
	LEFT JOIN `bens-pizza-490720.pizza_db.item` i ON
		i.item_id = o.item_id
	LEFT JOIN `bens-pizza-490720.pizza_db.recipe` r ON
		i.sku = r.recipe_id
	LEFT JOIN `bens-pizza-490720.pizza_db.ingredient` i2 ON
		i2.ing_id = r.ing_id
  WHERE i2.ing_name IS NOT NULL
	GROUP BY
		o.item_id,
		i.sku ,
		i.item_name,
		r.ing_id ,
		i2.ing_name,
		r.quantity,
		i2.ing_weight,
		i2.ing_price
	) t1;