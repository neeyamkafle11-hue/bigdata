INSERT INTO Customer (first_name, last_name, email, phone)
VALUES
('A', 'Müller', 'a@example.com', '111111'),
('B', 'Kafle', 'b@example.com', '222222'),
('C', 'James', 'c@example.com', '333333'),
('D', 'Messi', 'd@example.com', '444444'),
('E', 'Ronaldo', 'e@example.com', '555555');

INSERT INTO Product (name, price, stock_quantity)
VALUES
('Smartphone X', 700, 60),
('Laptop Pro', 1200, 25),
('Wireless Earbuds', 125, 40),
('Data Science Book', 40, 110),
('Mechanical Keyboard', 75, 30),
('Gaming Mouse', 55, 65);

INSERT INTO `Order` (customer_id, order_date, status, total_amount)
VALUES
(1, '2025-03-20 ', 'completed', 740),
(2, '2025-03-20 ', 'completed', 1200),
(3, '2025-03-21 ', 'pending', 125),
(1, '2025-03-21 ', 'completed', 75),
(4, '2025-03-22 ', 'completed', 165),
(5, '2025-03-22 ', 'completed', 755);

INSERT INTO Payment (order_id, payment_date, amount, method, status)
VALUES
(1, '2025-03-20 ', 740, 'card', 'paid'),
(2, '2025-03-20 ', 1200, 'cash', 'paid'),
(4, '2025-03-21 ', 75, 'card', 'paid'),
(5, '2025-03-22 ', 165, 'cash', 'paid'),
(6, '2025-03-22 ', 755, 'card', 'paid');

INSERT INTO OrderItem (order_id, product_id, quantity, unit_price) 
VALUES
(1, 1, 1, 700),
(1, 4, 1, 40),
(2, 2, 1, 1200),
(3, 3, 1, 125),
(4, 5, 1, 75),
(5, 3, 1, 125),
(5, 4, 1, 40),
(6, 1, 1, 700),
(6, 6, 1, 55);


