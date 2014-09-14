<!-- ## Show the terminal output here. '2014-09-13'  -->
**** TABLES & SCHEMAS ****
sqlite> .tables
			drinks  eatery
sqlite> .schema
			CREATE TABLE drinks (
			id INTEGER PRIMARY_KEY,
			source INTEGER,
			type TEXT,
			rating INTEGER,
			created_at DATE,
			updated_at DATE);
			CREATE TABLE eatery (
			id integer PRIMARY KEY,
			name TEXT,
			location TEXT,
			rating INTEGER,
			type TEXT,
			created_at DATE,
			updated_at DATE);

****SEPERATE TABLES****
			sqlite> select * from drinks;
id          source        type        rating      created_at  updated_at
----------  ------------  ----------  ----------  ----------  ----------
1           Bedford Hall  Green Tea   9           2014-09-13  2014-09-13
2           Coffee Grind  Green Tea   6           2014-09-13  2014-09-13
3           Outpost Loun  Green Tea   9           2014-09-13  2014-09-13
3           Bedford Hall  Stella      5           2014-09-13  2014-09-13
4           Outpost Loun  Rockers Be  7           2014-09-13  2014-09-13
sqlite> Select * from eatery;
id          name          location            rating      type        created_at  updated_at
----------  ------------  ------------------  ----------  ----------  ----------  ----------
1           Bedford Hall  Bedford-Stuyvesant  8           Bar         2014-09-13  2014-09-13
2           Coffee Grind  Bedford-Stuyvesant  8           Coffee Sho  2014-09-13  2014-09-13
3           Outpost Loun  Bedford-Stuyvesant  8           Coffee Sho  2014-09-13  2014-09-13
4           Le Paris Dak  Bedford-Stuyvesant  6           Coffee Sho  2014-09-13  2014-09-13
5           Bedford Hill  Bedford-Stuyvesant  5           Bar         2014-09-13  2014-09-13
6           Gergory's Co  Manhattan: Financi  4           Coffee Sho  2014-09-13  2014-09-13
7           The Uncommon  Manhattan: Greenwi  7           Game Store  2014-09-13  2014-09-13
8           Kopi Kopi     Manhattan: Greenwi  7           Coffee Sho  2014-09-13  2014-09-13

**** CROSS JOIN EXAMPLE ****

sqlite> SELECT source, location FROM eatery CROSS JOIN drinks;
source        location          
------------  ------------------
Bedford Hall  Bedford-Stuyvesant
Coffee Grind  Bedford-Stuyvesant
Outpost Loun  Bedford-Stuyvesant
Bedford Hall  Bedford-Stuyvesant
Outpost Loun  Bedford-Stuyvesant
Bedford Hall  Bedford-Stuyvesant
Coffee Grind  Bedford-Stuyvesant
Outpost Loun  Bedford-Stuyvesant
Bedford Hall  Bedford-Stuyvesant
Outpost Loun  Bedford-Stuyvesant
Bedford Hall  Bedford-Stuyvesant
Coffee Grind  Bedford-Stuyvesant
Outpost Loun  Bedford-Stuyvesant
Bedford Hall  Bedford-Stuyvesant
Outpost Loun  Bedford-Stuyvesant
Bedford Hall  Bedford-Stuyvesant
Coffee Grind  Bedford-Stuyvesant
Outpost Loun  Bedford-Stuyvesant
Bedford Hall  Bedford-Stuyvesant
Outpost Loun  Bedford-Stuyvesant
Bedford Hall  Bedford-Stuyvesant
Coffee Grind  Bedford-Stuyvesant
Outpost Loun  Bedford-Stuyvesant
Bedford Hall  Bedford-Stuyvesant
Outpost Loun  Bedford-Stuyvesant
Bedford Hall  Manhattan: Financi
Coffee Grind  Manhattan: Financi
Outpost Loun  Manhattan: Financi
Bedford Hall  Manhattan: Financi
Outpost Loun  Manhattan: Financi
Bedford Hall  Manhattan: Greenwi
Coffee Grind  Manhattan: Greenwi
Outpost Loun  Manhattan: Greenwi
Bedford Hall  Manhattan: Greenwi
Outpost Loun  Manhattan: Greenwi
Bedford Hall  Manhattan: Greenwi
Coffee Grind  Manhattan: Greenwi
Outpost Loun  Manhattan: Greenwi
Bedford Hall  Manhattan: Greenwi
Outpost Loun  Manhattan: Greenwi

**** LEFT OUTER JOIN **** (a bit confusing)

sqlite> SELECT source, location FROM eatery LEFT OUTER JOIN drinks ON eatery.id = source;
source      location          
----------  ------------------
            Bedford-Stuyvesant
            Bedford-Stuyvesant
            Bedford-Stuyvesant
            Bedford-Stuyvesant
            Bedford-Stuyvesant
            Manhattan: Financi
            Manhattan: Greenwi
            Manhattan: Greenwi

