--Product table
CREATE TABLE
    PRODUCT (
        product_id INT PRIMARY KEY,
        product_name VARCHAR(100),
        price DECIMAL(10, 2),
        stock_quantity INT
    );

-- Orders Table
CREATE TABLE
    ORDERS (
        order_id INT PRIMARY KEY,
        customer_id INT,
        order_date DATE DEFAULT SYSDATE,
        FOREIGN KEY (customer_id) REFERENCES CUSTOMER (customer_id)
    );

--Order_Details Table
CREATE TABLE
    ORDER_DETAILS (
        order_id INT,
        product_id INT,
        quantity INT,
        PRIMARY KEY (order_id, product_id),
        FOREIGN KEY (order_id) REFERENCES ORDERS (order_id),
        FOREIGN KEY (product_id) REFERENCES PRODUCT (product_id)
    );

--Add some columns to the tables
--Product table
ALTER TABLE PRODUCT
ADD Category VARCHAR2(20);

--Orders table
ALTER TABLE ORDERS
ADD OrderDate DATE DEFAULT SYSDATE;