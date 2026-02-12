# Pizza Runner Case Study

## Introduction

Did you know that over 115 million kilograms of pizza are consumed daily worldwide? (According to Wikipedia…)  

Danny was scrolling through Instagram when he saw the post: **“80s Retro Styling and Pizza Is The Future!”**. He loved the idea, but realized pizza alone wouldn't help him secure funding to expand his business. So, he came up with another idea: **Uberize pizza delivery**. And thus, **Pizza Runner** was launched!  

Danny started by recruiting **runners** to deliver fresh pizzas from **Pizza Runner Headquarters** (aka Danny’s house). He also hired freelance developers to build a mobile app for accepting customer orders.  

## Available Data

Danny, having experience as a data scientist, prepared an **Entity Relationship Diagram (ERD)** for his database. He now needs help cleaning the data and performing calculations to optimize delivery operations.  

All datasets are stored in the **`pizza_runner`** database schema. Make sure to include this reference in your SQL scripts.

### Tables

#### 1. `runners`

This table contains information about pizza runners and their registration dates.

| runner_id | registration_date |
|-----------|-----------------|
| 1         | 2021-01-01      |
| 2         | 2021-01-03      |
| 3         | 2021-01-08      |
| 4         | 2021-01-15      |

---

#### 2. `customer_orders`

Each row represents a pizza in a customer order. The table includes pizza type, exclusions, extras, and order timestamp.  

- `exclusions` and `extras` columns may require cleaning.  

| order_id | customer_id | pizza_id | exclusions | extras  | order_time           |
|----------|------------|----------|------------|--------|--------------------|
| 1        | 101        | 1        |            |        | 2021-01-01 18:05:02 |
| 2        | 101        | 1        |            |        | 2021-01-01 19:00:52 |
| 3        | 102        | 1        |            |        | 2021-01-02 23:51:23 |
| 3        | 102        | 2        |            | NaN    | 2021-01-02 23:51:23 |
| 4        | 103        | 1        | 4          |        | 2021-01-04 13:23:46 |

*(Note: This table continues with other orders in the dataset.)*

---

#### 3. `runner_orders`

This table tracks which runner delivered which order, including pickup times, distances, durations, and cancellations.  

- Some data issues exist, so validate column data types.  

| order_id | runner_id | pickup_time           | distance | duration | cancellation          |
|----------|-----------|--------------------|---------|---------|----------------------|
| 1        | 1         | 2021-01-01 18:15:34 | 20km    | 32 minutes |                      |
| 2        | 1         | 2021-01-01 19:10:54 | 20km    | 27 minutes |                      |
| 3        | 1         | 2021-01-03 00:12:37 | 13.4km  | 20 mins    | NaN                  |
| 4        | 2         | 2021-01-04 13:53:03 | 23.4    | 40         | NaN                  |

---

#### 4. `pizza_names`

This table contains the pizza types currently offered.

| pizza_id | pizza_name     |
|----------|---------------|
| 1        | Meat Lovers   |
| 2        | Vegetarian    |

---

#### 5. `pizza_recipes`

Contains the standard set of toppings for each pizza type.  

| pizza_id | toppings          |
|----------|-----------------|
| 1        | 1,2,3,4,5,6,8,10 |
| 2        | 4,6,7,9,11,12    |

---

#### 6. `pizza_toppings`

Maps topping IDs to their names.

| topping_id | topping_name |
|------------|-------------|
| 1          | Bacon       |
| 2          | BBQ Sauce   |
| 3          | Beef        |
| 4          | Cheese      |
| 5          | Chicken     |
| 6          | Mushrooms   |
| 7          | Onions      |
| 8          | Pepperoni   |
| 9          | Peppers     |
| 10         | Salami      |
| 11         | Tomatoes    |
| 12         | Tomato Sauce|

---

## Notes

- Clean `exclusions` and `extras` in `customer_orders` before analysis.  
- Verify data types and handle missing or inconsistent values in `runner_orders`.  
- Use the `pizza_runner` schema in all SQL queries.


# A. Pizza Metrics
1. **Count the total number of pizzas in `customer_orders`.
2. **Count distinct `order_id` values in `customer_orders`.
3. **Count orders from `runner_orders` where `cancellation` is `NULL` or empty, grouped by `runner_id`.
4. **Count pizzas by `pizza_id` using `customer_orders` and `pizza_names`.
5. **Count pizzas by `pizza_id` per `customer_id`.
6. **Find the order with the highest count of pizzas (grouped by `order_id`) in `customer_orders`.
7. **For each customer, count pizzas with at least one `exclusion` or `extra` vs. pizzas with no changes.
8. **Count pizzas where both `exclusions` and `extras` are not empty.
9. **Aggregate pizza counts by the hour extracted from `order_time`.
10. **Aggregate pizza counts by the day of the week extracted from `order_time`.
