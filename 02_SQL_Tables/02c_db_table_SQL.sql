/* ------  Strukturen ----- */

/* 	 
	Doppelte DS werden nicht mehr zugelassen
    UNIQUE
*/


/* Datenbanken auf Server anzeigen */
SHOW DATABASES;

/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
USE boo;

/* Tabelle anlegen */
CREATE TABLE IF NOT EXISTS test
(
    name VARCHAR(20) NOT NULL DEFAULT "TBA" UNIQUE,
    age INT NOT NULL DEFAULT 0

);


/* Alle Tabellen in der DB anzeigen */
SHOW TABLES;
-- SHOW TABLES FROM mysql;


/* Struktur der Tabelle anzeigen */

DESCRIBE test;

/* ----- Daten ------- */
INSERT INTO test(name, age) VALUES("Max",35);
INSERT INTO test(age,name) VALUES(29,"Maxine");
INSERT INTO test VALUES();

-- ABER: Dobelte Dataensätze werden zugelassen!
INSERT INTO test(age,name) VALUES (35,"Max der Coole");

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM test;
