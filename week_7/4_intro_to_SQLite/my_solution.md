# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

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

## Release 1: Insert Data 

id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-19 17:51:08  2014-05-19 17:51:08
2           Kenneth     Mendonca    mendonca.kr@gmail.com  2014-05-19 17:57:05  2014-05-19 17:57:05

## Release 2: Multi-line commands
<!-- paste your terminal output here -->

## Release 3: Add a column
<!-- paste your terminal output here -->

## Release 4: Change a value
<!-- paste your terminal output here -->

## Release 5: Reflect
<!-- Add your reflection here -->