CREATE OR REPLACE VIEW `pizza_db.order_activity` AS
SELECT
    o.order_id,
    i.item_price,
    o.quantity,
    i.item_cat,
    i.item_name,
    o.created_at,
    a.delivery_address1,
    a.delivery_address2,
    a.delivery_city,
    a.delivery_zipcode,
    CASE
    WHEN o.delivery = 1 THEN 'Delivery'
    ELSE 'Pickup'
  END AS delivery
FROM `bens-pizza-490720.pizza_db.orders` o
LEFT JOIN `bens-pizza-490720.pizza_db.item` i
    ON o.item_id = i.item_id
LEFT JOIN `bens-pizza-490720.pizza_db.address` a
    ON a.add_id = o.add_id;







