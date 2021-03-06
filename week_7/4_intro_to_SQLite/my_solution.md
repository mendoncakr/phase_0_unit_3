# U3.W7: Intro to SQLite

## Release 0: Create a dummy database
```
Last login: Mon May 19 10:45:26 on ttys000
Kenneths-MacBook-Pro:~ KennethRyan$ sqlite3 dummy.db
-- Loading resources from /Users/KennethRyan/.sqliterc

SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
```
## Release 1: Insert Data 
```
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-19 17:51:08  2014-05-19 17:51:08
2           Kenneth     Mendonca    mendonca.kr@gmail.com  2014-05-19 17:57:05  2014-05-19 17:57:05
```
## Release 2: Multi-line commands
```
sqlite> SELECT *
   ...> FROM users
   ...> WHERE email = 'kimmy@devbootcamp.com';
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-19 17:51:08  2014-05-19 17:51:08
```
## Release 3: Add a column

```
sqlite> ALTER TABLE users
   ...> ADD COLUMN nickname VARCHAR(64);
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-19 18:46:00  2014-05-19 18:46:00            
2           Kenneth     Mendonca    mendonca.kr@gmail.com  2014-05-19 18:46:29  2014-05-19 18:46:29     

sqlite> UPDATE users
   ...> SET nickname = 'Kimchee'
   ...> WHERE first_name = 'Kimmey';
sqlite> UPDATE users
   ...> SET nickname = 'Ken'
   ...> WHERE first_name = 'Kenneth';
sqlite> SELECT * FROM users
   ...> ;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-19 18:46:00  2014-05-19 18:46:00  Kimchee   
2           Kenneth     Mendonca    mendonca.kr@gmail.com  2014-05-19 18:46:29  2014-05-19 18:46:29  Ken  
```

## Release 4: Change a value
```
sqlite> UPDATE users SET first_name='Kimmy' WHERE id = 1;
sqlite> SELECT * FROM users
   ...> ;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-05-19 18:46:00  2014-05-19 18:46:00  Kimchee   
2           Kenneth     Mendonca    mendonca.kr@gmail.com  2014-05-19 18:46:29  2014-05-19 18:46:29  Ken       
sqlite> UPDATE users SET nickname = 'Ninja Coder' WHERE nickname = "Kimchee"
   ...> ;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname   
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-05-19 18:46:00  2014-05-19 18:46:00  Ninja Coder
2           Kenneth     Mendonca    mendonca.kr@gmail.com  2014-05-19 18:46:29  2014-05-19 18:46:29  Ken        
sqlite> UPDATE users set updated_at = DATETIME('now') WHERE id = 1;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname   
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-05-19 18:46:00  2014-05-19 18:57:06  Ninja Coder
2           Kenneth     Mendonca    mendonca.kr@gmail.com  2014-05-19 18:46:29  2014-05-19 18:46:29  Ken     
```

## Release 5: Reflect
I felt like I learned a lot from this exercise. It was definitely nice to be able to test things out in sqlite 3 and see right away if I managed to get ther right answers by simply querying the table. I also felt quite lazy having to redo the table multiple times, adding users, updating nicknames, but it definitely help me undestand the material a lot better.