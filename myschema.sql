create schema ecommerce;

use ecommerce;

CREATE TABLE Customer (
    customer_id      INT PRIMARY KEY AUTO_INCREMENT,
    first_name       VARCHAR(50) NOT NULL,
    last_name        VARCHAR(50) NOT NULL,
    email            VARCHAR(100) NOT NULL UNIQUE,
    phone            VARCHAR(20)
);

CREATE TABLE Product (
    product_id       INT PRIMARY KEY AUTO_INCREMENT,
    name             VARCHAR(100) NOT null,
    price            DECIMAL(10,2) NOT NULL CHECK (price >= 0),
    stock_quantity   INT NOT NULL CHECK (stock_quantity >= 0)
);

CREATE TABLE `Order` (
    order_id         INT PRIMARY KEY AUTO_INCREMENT,
    customer_id      INT NOT NULL,
    order_date       DATE,
    status           VARCHAR(20) NOT NULL,
    total_amount     DECIMAL(10,2) NOT NULL CHECK (total_amount >= 0),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE OrderItem (
    order_item_id    INT PRIMARY KEY AUTO_INCREMENT,
    order_id         INT NOT NULL,
    product_id       INT NOT NULL,
    quantity         INT NOT NULL CHECK (quantity > 0),
    unit_price       DECIMAL(10,2) NOT NULL CHECK (unit_price >= 0),
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE Payment (
    payment_id       INT PRIMARY KEY AUTO_INCREMENT,
    order_id         INT NOT NULL UNIQUE,
    payment_date     DATE,
    amount           DECIMAL(10,2) NOT NULL CHECK (amount >= 0),
    method           VARCHAR(30) NOT NULL,
    status           VARCHAR(20) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id)
);




