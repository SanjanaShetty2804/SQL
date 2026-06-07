/* Creating a new database for the Online Food Ordering System */
CREATE DATABASE Food_Order;

/* Selecting (using) the newly created database */
USE Food_Order;


/* Creating the Customer table

Entity: Customer
Attributes:
1. customer_id  → Primary Key (unique identifier)
2. name         → Customer's full name
3. phone_number → Customer's contact number
4. city         → City where the customer lives
*/
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    phone_number VARCHAR(15),
    city VARCHAR(50)
);

/* Displaying the structure of the Customer table */
DESCRIBE Customer;


/* Creating the Restaurant table

Entity: Restaurant
Attributes:
1. restaurant_id → Primary Key
2. name          → Restaurant name
3. location      → Restaurant location
4. cuisine_type  → Type of cuisine served
*/
CREATE TABLE Restaurant (
    restaurant_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100),
    cuisine_type VARCHAR(50)
);

/* Displaying the structure of the Restaurant table */
DESCRIBE Restaurant;


/* Creating the Orders table

Entity: Orders
Attributes:
1. order_id      → Primary Key
2. order_date    → Date when order was placed
3. total_amount  → Total bill amount
4. customer_id   → Foreign Key referencing Customer
5. restaurant_id → Foreign Key referencing Restaurant

Relationships:
- One customer can place many orders (1:N)
- One restaurant can receive many orders (1:N)
*/
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    total_amount DECIMAL(10,2),
    customer_id INT,
    restaurant_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(restaurant_id)
);

/* Displaying the structure of the Orders table */
DESCRIBE Orders;


/* Inserting sample records into Customer table */
INSERT INTO Customer (customer_id, name, phone_number, city) VALUES
(1, 'Rahul Sharma', '9876543210', 'Mumbai'),
(2, 'Priya Mehta', '9123456780', 'Delhi'),
(3, 'Arjun Patel', '9988776655', 'Ahmedabad');

/* Viewing all records from Customer table */
SELECT * FROM Customer;


/* Inserting sample records into Restaurant table */
INSERT INTO Restaurant (restaurant_id, name, location, cuisine_type) VALUES
(101, 'Spice Garden', 'Mumbai', 'Indian'),
(102, 'Dragon Wok', 'Delhi', 'Chinese'),
(103, 'Pizza Hub', 'Ahmedabad', 'Italian');

/* Viewing all records from Restaurant table */
SELECT * FROM Restaurant;


/* Inserting sample records into Orders table */
INSERT INTO Orders (order_id, order_date, total_amount, customer_id, restaurant_id) VALUES
(1001, '2025-09-10', 550.00, 1, 101),
(1002, '2025-09-11', 320.00, 2, 102),
(1003, '2025-09-12', 780.00, 3, 103);

/* Viewing all records from Orders table */
SELECT * FROM Orders;