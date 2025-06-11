-- Create a PL/SQL block that calculates the total sales from an orders table

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100),
    order_amount DECIMAL(10,2),
    order_date DATE
);

INSERT INTO orders (customer_name, order_amount, order_date) VALUES
('John Doe', 1500.00, '2025-06-01'),
('Jane Smith', 2400.50, '2025-06-02'),
('Mark Taylor', 875.75, '2025-06-03');

DELIMITER //

CREATE PROCEDURE GetTotalSales()
BEGIN
    DECLARE total_sales DECIMAL(10,2);

    SELECT SUM(order_amount) INTO total_sales FROM orders;

    IF total_sales IS NULL THEN
        SET total_sales = 0;
    END IF;

    SELECT CONCAT('Total sales amount: ', total_sales) AS result;
END //

DELIMITER ;

CALL GetTotalSales();
