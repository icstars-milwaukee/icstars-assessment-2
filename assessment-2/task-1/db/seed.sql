-- northwindsupply — seed data
-- Assessment 2 / Task 1 setup. Do not modify this file.
--
-- 8 users and 19 orders. The data is deliberately uneven: some users have
-- placed many orders, some have placed one, and some have never ordered at
-- all. One order is cancelled. Read the data before you write your query.

INSERT INTO users (id, name, email, city, state, signup_date) VALUES
  (1, 'Maria Alvarez',   'maria.alvarez@example.com',   'Milwaukee',  'WI', '2024-01-15'),
  (2, 'Darnell Brooks',  'darnell.brooks@example.com',  'Madison',    'WI', '2024-02-03'),
  (3, 'Priya Raman',     'priya.raman@example.com',     'Chicago',    'IL', '2024-02-27'),
  (4, 'Tomas Nowak',     'tomas.nowak@example.com',     'Milwaukee',  'WI', '2024-04-11'),
  (5, 'Grace Okonkwo',   'grace.okonkwo@example.com',   'Racine',     'WI', '2024-05-06'),
  (6, 'Hector Reyes',    'hector.reyes@example.com',    'Green Bay',  'WI', '2024-06-19'),
  (7, 'Leah Fitzgerald', 'leah.fitzgerald@example.com', 'Kenosha',    'WI', '2024-08-02'),
  (8, 'Sam Whitcomb',    'sam.whitcomb@example.com',    'Waukesha',   'WI', '2024-09-23');

INSERT INTO orders (id, user_id, order_date, status, total_amount) VALUES
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
