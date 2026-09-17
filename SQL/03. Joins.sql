create database salesdata ;

use salesdata ;


CREATE TABLE products (
    product_id    VARCHAR(50) PRIMARY KEY,
    product_name  VARCHAR(255),
    category      VARCHAR(50),    -- Furniture | Technology | Office Supplies
    sub_category  VARCHAR(50)     -- Phones | Chairs | Binders | Paper | etc.
);
CREATE TABLE orders (
    order_id       VARCHAR(50),
    order_date     VARCHAR(20),
    ship_date      VARCHAR(20),
    ship_mode      VARCHAR(50),    -- Standard Class | First Class | Second Class | Same Day
    customer_name  VARCHAR(100),   -- FK → customers.customer_name
    product_id     VARCHAR(50),    -- FK → products.product_id
    sales          INT,
    quantity       INT,
    discount       FLOAT,
    profit         FLOAT,
    shipping_cost  FLOAT,
    order_priority VARCHAR(20),    -- Critical | High | Medium | Low
    year           INT,
    country        VARCHAR(100),
    state varchar(100));
    LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customers.csv'
INTO TABLE customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/products.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
SET SESSION sql_mode = '';
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/orders.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from salesdata.customers;
select * from salesdata.orders;
select * from salesdata.products;
-- Show each order with the product's category and sub_category.
select o.order_id , o.product_id , p.category, p.sub_category from salesdata.orders o 
join salesdata.products p on o.product_id = p.product_id ;
create view new_vi as select o.order_id , o.product_id , p.category, p.sub_category from salesdata.orders o 
join salesdata.products p on o.product_id = p.product_id ;
commit;