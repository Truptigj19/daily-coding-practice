CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_status VARCHAR(20),
    order_amount INT,
    order_date DATE
);

INSERT INTO orders (order_id, customer_id, order_status, order_amount, order_date)
VALUES
(1, 101, 'DELIVERED', 500, '2023-01-05'),
(2, 102, 'CANCELLED', 300, '2023-01-10'),
(3, 101, 'DELIVERED', 700, '2023-02-15'),
(4, 103, 'PENDING', 400, '2023-02-20'),
(5, 104, 'DELIVERED', 1200, '2023-03-01'),
(6, 102, 'DELIVERED', 800, '2023-03-05'),
(7, 101, 'CANCELLED', 200, '2023-03-10'),
(8, 105, 'DELIVERED', 1500, '2023-03-15'),
(9, 106, 'PENDING', 600, '2023-03-20'),
(10, 104, 'DELIVERED', 900, '2023-03-25');

select * from orders

--Q9:Find total revenue from non-cancelled orders
select Sum(order_amount) as total_revenue_of_non_cancelled_orders
from orders
where order_status IN ('DELIVERED', 'PENDING');

--Q10:Find number of orders and total revenue for customers whose total spending is more than 1500.
select customer_id, count(order_id) as total_orders, sum(order_amount) as total_revenue 
from orders
group by customer_id
having sum(order_amount) > 1500;
    

--Q11:Find total revenue generated from customers who have placed at least 2 orders.
select sum(order_amount) as total_revenue
FROM orders
WHERE customer_id IN ( select customer_id 
                       from orders
					   group by customer_id
					   having count(order_id) >= 2 );

--Q12:Find customers whose DELIVERED orders total amount is more than 1000.
select customer_id 
from orders
where order_status = 'DELIVERED'
group by customer_id
having sum(order_amount) > 1000

--Q13:Find customers who have placed both CANCELLED and DELIVERED orders.
select customer_id 
from orders
where order_status in ('DELIVERED','CANCELLED')
group by customer_id
having count(distinct order_status) =2

--Q14:Find total revenue generated only from customers who have placed more than 1 DELIVERED order.
select sum(order_amount) as total_revenue
from orders
where customer_id IN (
select customer_id
from orders
where order_status = 'DELIVERED'
group by customer_id
having count(order_status) > 1 );


--Q15:Find customers whose minimum order amount is greater than 500.
select distinct(customer_id) 
from orders
group by customer_id
having min(order_amount) > 500