/* ===========================================================================
   northwindsupply - database build script
   Assessment 2 / Task 1
   For SQL Server / SQL Server Management Studio (SSMS)

   HOW TO RUN THIS:
     1. Open SSMS and connect to your server.
     2. File > Open > File... and pick this file. (Or paste the whole thing
        into a New Query window.)
     3. Click Execute, or press F5.
     4. Check the row counts at the end - they appear in the Results grid,
        and again in the Messages tab.

   Running it again is always safe. It drops both tables and rebuilds them
   from scratch, so if you break something while experimenting, just re-run it.

   Read it before you run it. The structure of these two tables is what you
   need in order to design your query.

   DO NOT MODIFY THIS FILE. Write your query in query.sql instead.
   =========================================================================== */


/* ---------------------------------------------------------------------------
   Create the database, if it isn't there already.
   CREATE DATABASE has to run in its own batch, which is what the GO is for.
   --------------------------------------------------------------------------- */
IF DB_ID('northwindsupply') IS NULL
    CREATE DATABASE northwindsupply;
GO


/* ---------------------------------------------------------------------------
   Switch to it. Everything after this point runs inside northwindsupply.

   This matters: a new query window in SSMS starts out pointed at master, not
   at your database. If you forget to switch, SQL Server will tell you
   "Invalid object name 'users'" - because you're asking master for a table
   that lives in northwindsupply.

   You need this same line at the top of your own query, and it's already
   waiting for you at the top of query.sql.
   --------------------------------------------------------------------------- */
USE northwindsupply;
GO


/* ---------------------------------------------------------------------------
   Clean slate. orders is dropped first because it references users -
   SQL Server won't let you drop a table another table points at.
   --------------------------------------------------------------------------- */
IF OBJECT_ID('dbo.orders', 'U') IS NOT NULL DROP TABLE dbo.orders;
IF OBJECT_ID('dbo.users',  'U') IS NOT NULL DROP TABLE dbo.users;
GO


/* ---------------------------------------------------------------------------
   TABLE: users
   One row per person with a northwindsupply account.
   --------------------------------------------------------------------------- */
CREATE TABLE dbo.users (
    id          INT          NOT NULL PRIMARY KEY,  -- unique id for each user
    name        VARCHAR(100) NOT NULL,              -- the user's full name
    email       VARCHAR(255) NOT NULL UNIQUE,
    city        VARCHAR(100) NULL,
    state       CHAR(2)      NULL,
    signup_date DATE         NOT NULL
);
GO


/* ---------------------------------------------------------------------------
   TABLE: orders
   One row per order placed. The user_id column is the link back to users:
   it holds the id of the user who placed that order. That shared column is
   what makes it possible to connect the two tables.
   --------------------------------------------------------------------------- */
CREATE TABLE dbo.orders (
    id           INT           NOT NULL PRIMARY KEY, -- unique id for each order
    user_id      INT           NOT NULL,             -- who placed it -> users.id
    order_date   DATE          NOT NULL,
    status       VARCHAR(20)   NOT NULL,             -- shipped / pending / cancelled
    total_amount DECIMAL(10,2) NOT NULL,
    CONSTRAINT FK_orders_users FOREIGN KEY (user_id) REFERENCES dbo.users(id)
);
GO


/* ---------------------------------------------------------------------------
   DATA: 8 users
   --------------------------------------------------------------------------- */
INSERT INTO dbo.users (id, name, email, city, state, signup_date) VALUES
    (1, 'Maria Alvarez',   'maria.alvarez@example.com',   'Milwaukee', 'WI', '2024-01-15'),
    (2, 'Darnell Brooks',  'darnell.brooks@example.com',  'Madison',   'WI', '2024-02-03'),
    (3, 'Priya Raman',     'priya.raman@example.com',     'Chicago',   'IL', '2024-02-27'),
    (4, 'Tomas Nowak',     'tomas.nowak@example.com',     'Milwaukee', 'WI', '2024-04-11'),
    (5, 'Grace Okonkwo',   'grace.okonkwo@example.com',   'Racine',    'WI', '2024-05-06'),
    (6, 'Hector Reyes',    'hector.reyes@example.com',    'Green Bay', 'WI', '2024-06-19'),
    (7, 'Leah Fitzgerald', 'leah.fitzgerald@example.com', 'Kenosha',   'WI', '2024-08-02'),
    (8, 'Sam Whitcomb',    'sam.whitcomb@example.com',    'Waukesha',  'WI', '2024-09-23');
GO


/* ---------------------------------------------------------------------------
   DATA: 19 orders
   Look at the user_id column closely. The orders are not spread evenly
   across the users, and that unevenness matters for the query you write.
   --------------------------------------------------------------------------- */
INSERT INTO dbo.orders (id, user_id, order_date, status, total_amount) VALUES
    ( 1, 1, '2024-03-02', 'shipped',   184.50),
    ( 2, 1, '2024-03-18', 'shipped',    62.00),
    ( 3, 1, '2024-05-21', 'shipped',   410.75),
    ( 4, 1, '2024-07-09', 'shipped',    98.25),
    ( 5, 1, '2024-09-14', 'pending',   233.00),
    ( 6, 2, '2024-03-27', 'shipped',    75.40),
    ( 7, 2, '2024-06-05', 'shipped',   312.10),
    ( 8, 2, '2024-08-16', 'shipped',    44.99),
    ( 9, 2, '2024-09-30', 'pending',   129.60),
    (10, 3, '2024-04-08', 'shipped',   560.00),
    (11, 3, '2024-07-22', 'shipped',    87.30),
    (12, 3, '2024-10-01', 'pending',   201.45),
    (13, 4, '2024-05-13', 'shipped',   156.80),
    (14, 4, '2024-08-29', 'shipped',    73.15),
    (15, 5, '2024-06-24', 'shipped',   419.00),
    (16, 6, '2024-07-01', 'shipped',    92.50),
    (17, 6, '2024-07-30', 'cancelled',  58.20),
    (18, 6, '2024-09-05', 'shipped',   275.65),
    (19, 6, '2024-10-02', 'pending',   140.00);
GO


/* ---------------------------------------------------------------------------
   Check it worked. This prints two rows in the Results grid.
   --------------------------------------------------------------------------- */
SELECT 'users'  AS table_name, COUNT(*) AS row_count, 8  AS expected FROM dbo.users
UNION ALL
SELECT 'orders' AS table_name, COUNT(*) AS row_count, 19 AS expected FROM dbo.orders;
GO


/* ---------------------------------------------------------------------------
   And the same thing in the Messages tab.

   Note that the counts go into variables first. PRINT only accepts a scalar
   expression, so putting a SELECT directly inside it fails with
   "Subqueries are not allowed in this context."
   --------------------------------------------------------------------------- */
DECLARE @user_count  INT;
DECLARE @order_count INT;

SELECT @user_count  = COUNT(*) FROM dbo.users;
SELECT @order_count = COUNT(*) FROM dbo.orders;

PRINT 'users rows (expect 8):    ' + CAST(@user_count  AS VARCHAR(10));
PRINT 'orders rows (expect 19):  ' + CAST(@order_count AS VARCHAR(10));
GO


/* ===========================================================================
   Done.

   Now go look at the data before you write anything:

       USE northwindsupply;
       SELECT * FROM users;
       SELECT * FROM orders;

   =========================================================================== */
