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

