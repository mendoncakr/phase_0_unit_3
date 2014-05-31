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

Show orders from Kenneth:

```
sqlite> SELECT first_name, last_name, item
   ...> FROM ;
Error: near ";": syntax error
sqlite> SELECT * 
   ...> FROM orders JOIN customers ON (customer_id=id)
   ...> WHERE first_name='Kenneth';
order_id    item                        website_id  restaurant_id  customer_id  id          first_name  last_name   address            city        telephone_number  email                  total_number_of_orders  age         instagram_id
----------  --------------------------  ----------  -------------  -----------  ----------  ----------  ----------  -----------------  ----------  ----------------  ---------------------  ----------------------  ----------  ------------
2           BBQ Ribs with French Fries  0           3              0            0           Kenneth     Mendonca    778 Lincoln Place  Brooklyn    9099640670        mendonca.kr@gmail.com  0                       24                      
3           Cheeseburger                                           0            0           Kenneth     Mendonca    778 Lincoln Place  Brooklyn    9099640670        mendonca.kr@gmail.com  0                       24                      
4           Everything Bagel with vegg                             0            0           Kenneth     Mendonca    778 Lincoln Place  Brooklyn    9099640670        mendonca.kr@gmail.com  0                       24                      
5           Tuna Salad Sandwiche                                   0            0           Kenneth     Mendonca    778 Lincoln Place  Brooklyn    9099640670        mendonca.kr@gmail.com  0                       24                      
sqlite> 

```

Show customers from Brooklyn, NY:
```
sqlite> SELECT first_name, last_name, age FROM customers WHERE city = 'Brooklyn';
first_name  last_name   age       
----------  ----------  ----------
Kenneth     Mendonca    24        
Noni        Susan       24        
Sammy       Waow        19  
```

Show customers who are above the age of 20:

```
sqlite> SELECT first_name, last_name, age FROM customers WHERE age > 20;
first_name  last_name   age       
----------  ----------  ----------
Kenneth     Mendonca    24        
Noni        Susan       24 
```

Show customers who purchased 'Pork Sliders':
```
sqlite> SELECT first_name, last_name, age, email
   ...> FROM customers
   ...> JOIN orders ON id=customer_id
   ...> WHERE item='Pork Sliders';
first_name  last_name   age         email         
----------  ----------  ----------  --------------
Noni        Susan       24          noni@gmail.com
```





