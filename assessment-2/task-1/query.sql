/* ---------------------------------------------------------------------------
   Task 1 - SQL JOIN Query
   Database: northwindsupply

   Apprentice name: Amir Husseini
   Date: 10/08/2026

   GOAL: show each user's name and the number of orders they have placed,
         grouped by user.

   Leave the USE line below in place. A new query window in SSMS starts out
   pointed at master, and master has no users table - so without it you'll
   get "Invalid object name 'users'".
   --------------------------------------------------------------------------- */

USE northwindsupply;
GO


-- YOUR QUERY HERE
SELECT
    u.name,
    COUNT(o.id) AS numberOfOrders
FROM Users u
JOIN Orders o
    ON u.id = o.user_id
GROUP BY u.name;