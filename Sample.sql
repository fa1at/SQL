/* 
Table STATION
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+
*/

/*
#1 Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table. 
The STATION table is described at the top.

Znajdź różnicę między całkowitą liczbą wpisów w tabeli CITY a liczbą odrębnych (bez duplikatów) wpisów CITY w tabeli. 
*/  
SELECT (count(City)- count(distinct City)) 
FROM Station; 

/*
#2 Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
The STATION table is described at the top.
*/

/*
#3 Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
The STATION table is described at the top.
*/
SELECT DISTINCT City
FROM Station
WHERE Id % 2 = 0;

/*
#4 Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
The STATION table is described at the top.

Zapytanie o dwa miasta w STATION z najkrótszą i najdłuższą nazwą CITY, a także ich długością (tj. liczbą znaków w nazwie). Jeśli istnieje więcej niż jedno najmniejsze lub największe miasto, wybierz to, które jest pierwsze w kolejności alfabetycznej.
*/

SELECT TOP 1 City, LEN(City) 
FROM Station
ORDER BY LEN(City) ASC, City ASC;

SELECT TOP 1 City, LEN(City)
FROM Station
ORDER BY LEN(City) DESC, City DESC;

/*
#5 Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

Zapytanie o listę nazw CITY zaczynających się od samogłosek (tj. a, e, i, o lub u) z STATION. Wynik nie może zawierać duplikatów.
*/

SELECT DISTINCT City
FROM Station
WHERE LEFT(City, 1) IN ('A', 'E', 'I', 'O', 'U');



