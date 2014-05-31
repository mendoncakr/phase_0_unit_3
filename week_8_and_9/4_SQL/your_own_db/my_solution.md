<!-- ## Show the terminal output here.  -->

Show Schemas:

```
sqlite> .schema
CREATE TABLE customers (
id INTEGER PRIMARY KEY AUTOINCREMENT, first_name VARCHAR(64), last_name VARCHAR(64), address VARCHAR(64), city VARCHAR(64), telephone_number INTEGER, email VARCHAR(128), total_number_of_orders INTEGER, age INTEGER, instagram_id VARCHAR(128));
CREATE TABLE orders (
order_id INTEGER PRIMARY KEY AUTOINCREMENT, item VARCHAR(64), website_id INTEGER, restaurant_id INTEGER, customer_id);
CREATE TABLE restaurant (
restaurant_id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR(128));
CREATE TABLE website (
website_id INTEGER PRIMARY KEY AUTOINCREMENT, name_of_site);
sqlite> 
```

Show orders from Kenneth aka customer_id = 0:

```
sqlite> SELECT * FROM orders WHERE customer_id=0;
order_id    item                        website_id  restaurant_id  customer_id
----------  --------------------------  ----------  -------------  -----------
2           BBQ Ribs with French Fries  0           3              0          
3           Cheeseburger                                           0          
4           Everything Bagel with vegg                             0          
5           Tuna Salad Sandwiche                                   0          
sqlite> 

```






