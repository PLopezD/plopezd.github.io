# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

Pablos-MacBook-Pro:rails_projects pablolopezdomowicz$ sqlite3 dummy.db
-- Loading resources from /Users/pablolopezdomowicz/.sqliterc
SQLite version 3.7.7 2011-06-25 16:35:41
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
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));

   sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Pablo', 'Lopez Domowicz', 'pldomowicz@gmail.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-09-01 03:46:46  2014-09-01 03:46:46
2           Pablo       Lopez Domo  pldomowicz@gmail.com   2014-09-01 03:56:15  2014-09-01 03:56:15
sqlite> 


## Release 2: Multi-line commands
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-09-01 03:46:46  2014-09-01 03:46:46
2           Pablo       Lopez Domo  pldomowicz@gmail.com   2014-09-01 03:56:15  2014-09-01 03:56:15
3           Kimmey      Lin         kimmy2@devbootcamp.co  2014-09-01 04:01:05  2014-09-01 04:01:05

## Release 3: Add a column
<!-- paste your terminal output here -->

id          first_name  last_name   email                  created_at           updated_at           nicknames 
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-09-01 03:46:46  2014-09-01 03:46:46  Kimchee   
2           Pablo       Lopez Domo  pldomowicz@gmail.com   2014-09-01 03:56:15  2014-09-01 03:56:15  Pabz    
## Release 4: Change a value

id          first_name  last_name   email                  created_at           updated_at           nicknames  
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy Lin   Lin         kimmy@devbootcamp.com  2014-09-01 03:46:46  2014-09-01 05:35:27  Ninja Coder
2           Pablo       Lopez Domo  pldomowicz@gmail.com   2014-09-01 03:56:15  2014-09-01 03:56:15  Pabz   

## Release 5: Reflect
This was an interesting project. A good way to get our feet wet in SQlite. 
I wish there was a little more direction, though I appreciate that this made me 
do more research. All in all I liked it and want to continue to work in the tool.
I feel confident and I learned a lot.