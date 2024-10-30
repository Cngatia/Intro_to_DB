CREATE TABLE books(
  book_id INT PRIMARY KEY,
  title VARCHAR(130),
  author_id INT FOREIGN KEY REFERENCES Authors(author_id),
  price DOUBLE,
  publication_date DATE
)
CREATE TABLE authors(
  author_id INT PRIMARY KEY,
  author_name VARCHAR(215)
)
CREATE TABLE customers(
  customer_id INT PRIMARY KEY
  customer_name VARCHAR(215),
  email VARCHAR(215),
  address TEXT
  
)
CREATE TABLE orders(
  order_id INT PRIMARY KEY,
 FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  order_date DATE
)
CREATE TABLE Order_Details(
  orderdetail INT PRIMARY KEY,
   FOREIGN KEY (order_id) REFERENCES Orders(order_id),
 FOREIGN KEY (book_id) REFERENCES Books(book_id),
  quantity DOUBLE
)
