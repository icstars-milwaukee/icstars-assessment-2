/* ---------------------------------------------------------------------------
   Task 1 - SQL JOIN Query
   Database: northwindsupply

   Apprentice name: Ventura Perez Del Castillo
   Date: 10/08/2026

   GOAL: show each user's name and the number of orders they have placed,
         grouped by user.

   Leave the USE line below in place. A new query window in SSMS starts out
   pointed at master, and master has no users table - so without it you'll
   get "Invalid object name 'users'".
   --------------------------------------------------------------------------- */

USE northwindsupply;
GO


SELECT 
    u.name, 
	COUNT(o.id) AS number_of_orders
FROM 
    users u
LEFT JOIN 
    orders o ON u.id = o.user_id
GROUP BY 
    u.id, 
    u.name;
(ORDER BY 
    u.name ASC);
