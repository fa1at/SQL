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
#3 Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
The STATION table is described at the top.

Zapytanie o listę nazw CITY ze STATION dla miast, które mają parzysty numer ID. Wydrukuj wyniki w dowolnej kolejności, ale wyklucz duplikaty z odpowiedzi. 
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

/*
#6 Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

Zapytanie o listę nazw CITY z STATION, które mają samogłoski (tj. a, e, i, o i u) jako pierwszy i ostatni znak. Wynik nie może zawierać duplikatów.
*/
SELECT DISTINCT City
FROM Station
WHERE LEFT(City, 1) IN ('A', 'E', 'I', 'O', 'U')
AND RIGHT(City, 1) IN ('A', 'E', 'I', 'O', 'U');

/*
#7 Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

Zapytanie o listę nazw CITY z STATION, które albo nie zaczynają się od samogłosek, albo nie kończą się na samogłoski. Wynik nie może zawierać duplikatów.
*/
SELECT DISTINCT City
FROM Station
WHERE LEFT(City, 1) NOT IN ('A', 'E', 'I', 'O', 'U')
OR RIGHT(City, 1) NOT IN ('A', 'E', 'I', 'O', 'U');

/*
#8 Zapytanie zwraca wszystkie miasta, gdzie trzeci znak od końca jest samogłoską
*/

SELECT CITY
FROM Twoja_Tabela
WHERE SUBSTRING(CITY, LEN(CITY) - 2, 1) IN ('A', 'E', 'I', 'O', 'U')
/*
LEN(CITY) — oblicza długość tekstu w kolumnie CITY.
LEN(CITY) - 2 — odwołuje się do trzeciego znaku od końca (bo LEN(CITY) zwraca liczbę znaków, a -2 przesuwa pozycję do trzeciego znaku od końca).
SUBSTRING(CITY, LEN(CITY) - 2, 1) — wyciąga trzeci znak od końca, zaczynając od pozycji LEN(CITY) - 2 i zwracając dokładnie 1 znak.
*/

/*
Table STUDENTS
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| NAME        | STRING     |
| MARKS       | INTEGER    |
+-------------+------------+

  
#9 Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

Zapytanie o nazwę dowolnego studenta w STUDENTS, który uzyskał wynik wyższy niż Marks. Uporządkuj dane wyjściowe według ostatnich trzech znaków każdego imienia. 
Jeśli dwóch lub więcej studentów ma imiona kończące się tymi samymi trzema ostatnimi znakami (np.: Bobby, Robby itp.), posortuj ich według rosnącego ID.
*/
SELECT NAME 
FROM STUDENTS 
WHERE MARKS > 75 
ORDER BY RIGHT(NAME, 3), ID ASC;
