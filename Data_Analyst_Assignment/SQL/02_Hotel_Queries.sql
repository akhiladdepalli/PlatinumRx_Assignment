use Hotel_System_Analysis;

-- 1. For every user, get user_id and last booked room_no
SELECT DISTINCT u.user_id, b.room_no
FROM users u
JOIN bookings b ON u.user_id = b.user_id
WHERE (u.user_id, b.booking_date) IN (
    SELECT user_id, MAX(booking_date) 
    FROM bookings 
    GROUP BY user_id
);

-- 2. Get booking_id and total billing amount for November 2021 bookings
SELECT bc.booking_id, SUM(i.item_rate * bc.item_quantity) as total_billing_amount
FROM booking_commercials bc
JOIN items i ON bc.item_id = i.item_id
WHERE YEAR(bc.bill_date) = 2021 AND MONTH(bc.bill_date) = 11
GROUP BY bc.booking_id;

-- 3. Get bill_id and bill amount for October 2021 bills > 1000
SELECT bc.bill_id, SUM(i.item_rate * bc.item_quantity) as bill_amount
FROM booking_commercials bc
JOIN items i ON bc.item_id = i.item_id
WHERE YEAR(bc.bill_date) = 2021 AND MONTH(bc.bill_date) = 10
GROUP BY bc.bill_id
HAVING bill_amount > 1000;

-- 4. Most and least ordered item for each month of 2021
WITH monthly_orders AS (
    SELECT 
        YEAR(bc.bill_date) as year,
        MONTH(bc.bill_date) as month,
        bc.item_id,
        SUM(bc.item_quantity) as total_quantity,
        ROW_NUMBER() OVER (PARTITION BY YEAR(bc.bill_date), MONTH(bc.bill_date) 
                          ORDER BY SUM(bc.item_quantity) DESC) as most_ordered_rank,
        ROW_NUMBER() OVER (PARTITION BY YEAR(bc.bill_date), MONTH(bc.bill_date) 
                          ORDER BY SUM(bc.item_quantity) ASC) as least_ordered_rank
    FROM booking_commercials bc
    WHERE YEAR(bc.bill_date) = 2021
    GROUP BY YEAR(bc.bill_date), MONTH(bc.bill_date), bc.item_id
)
SELECT 
    mo.year, mo.month, i.item_name,
    mo.total_quantity as total_ordered
FROM monthly_orders mo
JOIN items i ON mo.item_id = i.item_id
WHERE mo.most_ordered_rank = 1 OR mo.least_ordered_rank = 1
ORDER BY mo.year, mo.month, mo.total_quantity DESC;


-- 5. Customers with second highest bill value each month of 2021
WITH monthly_bills AS (
    SELECT 
        YEAR(bc.bill_date) as year,
        MONTH(bc.bill_date) as month,
        b.user_id,
        SUM(i.item_rate * bc.item_quantity) as bill_amount,
        ROW_NUMBER() OVER (PARTITION BY YEAR(bc.bill_date), MONTH(bc.bill_date) 
                          ORDER BY SUM(i.item_rate * bc.item_quantity) DESC) as bill_rank
    FROM booking_commercials bc
    JOIN bookings b ON bc.booking_id = b.booking_id
    JOIN items i ON bc.item_id = i.item_id
    WHERE YEAR(bc.bill_date) = 2021
    GROUP BY YEAR(bc.bill_date), MONTH(bc.bill_date), b.user_id
)
SELECT 
    mb.year, mb.month, mb.user_id, u.name, mb.bill_amount
FROM monthly_bills mb
JOIN users u ON mb.user_id = u.user_id
WHERE mb.bill_rank = 2
ORDER BY mb.year, mb.month;
