/* ------  Strukturen ----- */

/* 	 
	Tabelle mit id als PRIMARY KEY --> 
    KEINE Duplikate moeglich
    AUTO_INCREMENT ++
    DEFAULT-Werte eintragen
*/





/* Tabelle test löschen, falls vorhanden*/
DROP TABLE IF EXISTS boo.test;


/* Tabelle anlegen */
CREATE TABLE IF NOT EXISTS boo.test
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL DEFAULT "TBA" UNIQUE,
    age INT NOT NULL DEFAULT 0

);


/* Alle Tabellen in der DB anzeigen */
SHOW TABLES FROM boo;



/* Struktur der Tabelle anzeigen */

DESCRIBE boo.test;

/* ----- Daten ------- */
INSERT INTO test(name, age) VALUES("Max",35);
INSERT INTO test(age,name) VALUES(29,"Maxine");
INSERT INTO test VALUES();

-- ABER: Dobelte Dataensätze werden zugelassen!
INSERT INTO boo.test(age,name) VALUES (35,"Max");

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM test;
