-- QUESTION ONE
-- Step 1: Create a normalized table
CREATE TABLE ProductDetail1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);

-- Step 2: Insert data as separate rows
INSERT INTO ProductDetail1NF VALUES (101, 'John Doe', 'Laptop');
INSERT INTO ProductDetail1NF VALUES (101, 'John Doe', 'Mouse');
INSERT INTO ProductDetail1NF VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO ProductDetail1NF VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO ProductDetail1NF VALUES (102, 'Jane Smith', 'Mouse');
INSERT INTO ProductDetail1NF VALUES (103, 'Emily Clark', 'Phone');

-- QUESTION TWO
-- step 1 create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

INSERT INTO Orders VALUES (101, 'John Doe');
INSERT INTO Orders VALUES (102, 'Jane Smith');
INSERT INTO Orders VALUES (103, 'Emily Clark');

-- step 2 Create OrderItems table
CREATE TABLE OrderItems (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO OrderItems VALUES (101, 'Laptop', 2);
INSERT INTO OrderItems VALUES (101, 'Mouse', 1);
INSERT INTO OrderItems VALUES (102, 'Tablet', 3);
INSERT INTO OrderItems VALUES (102, 'Keyboard', 1);
INSERT INTO OrderItems VALUES (102, 'Mouse', 2);
INSERT INTO OrderItems VALUES (103, 'Phone', 1);
