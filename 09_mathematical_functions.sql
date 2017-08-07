-- 1. Select the item and per unit price for each item in the items_ordered
-- table. Hint: Divide the price by the quantity.

  SELECT item, ROUND(price / quantity, 2)
    FROM items_ordered
GROUP BY item;
