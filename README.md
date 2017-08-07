# SQLCourse2

Exercises from [sqlcourse2.com](http://www.sqlcourse2.com).

## Snippets

Code used for these exercises.

### Comparison Operators

```
=        -- Equal
>        -- Greater than
<        -- Less than
>=       -- Greater than or equal
<=       -- Less than or equal
<> or != -- Not equal to
LIKE     -- Compare a value to similar values using wild card operators
```

### SELECT Statement

```
SELECT DISTINCT state
           FROM customers;
```

### Aggregate Functions

```
MIN      -- returns the smallest value in a given column
MAX      -- returns the largest value in a given column
SUM      -- returns the sum of the numeric values in a given column
AVG      -- returns the average value of a given column
COUNT    -- returns the total number of values in a given column
COUNT(*) -- returns the number of rows in a table
```

```
SELECT AVG(price)
  FROM items_ordered
 WHERE order_date LIKE '%Dec%';
```

### GROUP BY Clause

```
  SELECT customerid, COUNT(customerid), SUM(price)
    FROM items_ordered
GROUP BY customerid;
```

### HAVING Clause

```
  SELECT item, MAX(price), MIN(price)
    FROM items_ordered
GROUP BY item
  HAVING MAX(price) > 190.00;
```

### ORDER BY Clause

```
  SELECT item, price
    FROM items_ordered
  HAVING price > 10.00
ORDER BY price;
```

### Combining Conditions & Boolean Operators

```
SELECT item, price
  FROM items_ordered
 WHERE item LIKE 'S%'
    OR item LIKE 'P%'
    OR item LIKE 'F%';
```

### IN and BETWEEN

```
SELECT firstname, city, state
  FROM customers
 WHERE state IN ('Arizona', 'Washington', 'Oklahoma', 'Colorado', 'Hawaii');
```

```
SELECT order_date, item, price
  FROM items_ordered
 WHERE price BETWEEN 10.00 and 80.00;
```

### Mathematical Functions

```
ABS(x)     -- returns the absolute value of x
SIGN(x)    -- returns the sign of input x as -1, 0, or 1 (negative, zero, or
              positive respectively)
MOD(x,y)   -- modulo - returns the integer remainder of x divided by y
              (same as x%y)
FLOOR(x)   -- returns the largest integer value that is less than or equal to x
CEIL(x)    -- returns the smallest integer value that is greater than
              or equal to x
POWER(x,y) -- returns the value of x raised to the power of y
ROUND(x)   -- returns the value of x rounded to the nearest whole integer
ROUND(x,d) -- returns the value of x rounded to the number of decimal places
              specified by the value d
SQRT(x)    -- returns the square-root value of x
```

```
  SELECT item, ROUND(price / quantity, 2)
    FROM items_ordered
GROUP BY item;
```

### Table Joins

```
  SELECT customers.customerid, customers.firstname, customers.lastname,
         items_ordered.order_date, items_ordered.item, items_ordered.price
    FROM customers, items_ordered
   WHERE customers.customerid = items_ordered.customerid;
```
