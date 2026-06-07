create database shopping;
use shopping;
create table Customer(
		Customer_id numeric,
        Customer_Name varchar(20),
        Customer_email varchar(20),
        cust_address varchar(50));
        
create table orders(
		order_id numeric,
        total_price numeric(10,2),
        order_status varchar(20),
        order_date date 
        );

create table product(
		Product_id numeric,
        price numeric(10,2),
        quantity integer,
        product_status varchar(20)
        );

show tables;

