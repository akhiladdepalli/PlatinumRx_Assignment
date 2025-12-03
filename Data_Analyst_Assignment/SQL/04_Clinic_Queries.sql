use clinic_management_system;

-- 1. Find the revenue we got from each sales channel in a given year 
SELECT 
    sales_channel,
    SUM(amount) AS total_revenue
FROM clinic_sales
WHERE YEAR(datetime) = 2021
GROUP BY sales_channel
ORDER BY total_revenue DESC;

-- 2. Find top 10 the most valuable customers for a given year 
SELECT 
    uid, 
    SUM(amount) AS total_spent
FROM clinic_sales
WHERE YEAR(datetime) = 2021
GROUP BY uid
ORDER BY total_spent DESC
LIMIT 10;

-- 3. Find month wise revenue, expense, profit , status (profitable / not-profitable) for a given year 
WITH revenue_per_month AS (
    SELECT 
        MONTH(datetime) AS month,
        SUM(amount) AS revenue
    FROM clinic_sales
    WHERE YEAR(datetime) = 2021
    GROUP BY month
),
expense_per_month AS (
    SELECT 
        MONTH(datetime) AS month,
        SUM(amount) AS expense
    FROM expenses
    WHERE YEAR(datetime) = 2021
    GROUP BY month
)
SELECT 
    r.month,
    r.revenue,
    e.expense,
    (r.revenue - e.expense) AS profit,
    CASE 
        WHEN (r.revenue - e.expense) > 0 THEN 'Profitable'
        ELSE 'Not Profitable'
    END AS status
FROM revenue_per_month r
LEFT JOIN expense_per_month e ON r.month = e.month
ORDER BY r.month;


-- 4. For each city find the most profitable clinic for a given month 
WITH clinic_profit AS (
    SELECT 
        c.cid,
        c.clinic_name,
        c.city,
        SUM(COALESCE(cs.amount, 0)) AS total_revenue,
        SUM(COALESCE(e.amount, 0)) AS total_expense,
        SUM(COALESCE(cs.amount, 0)) - SUM(COALESCE(e.amount, 0)) AS profit
    FROM clinics c
    LEFT JOIN clinic_sales cs ON c.cid = cs.cid 
        AND YEAR(cs.datetime) = 2021 AND MONTH(cs.datetime) = 9
    LEFT JOIN expenses e ON c.cid = e.cid 
        AND YEAR(e.datetime) = 2021 AND MONTH(e.datetime) = 9
    GROUP BY c.cid, c.clinic_name, c.city
)
SELECT city, clinic_name, profit
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY city ORDER BY profit DESC) AS rn
    FROM clinic_profit
) sub
WHERE rn = 1
ORDER BY city;

-- 5. For each state find the second least profitable clinic for a given month 
WITH clinic_profit AS (
    SELECT 
        c.cid,
        c.clinic_name,
        c.state,
        SUM(COALESCE(cs.amount, 0)) AS total_revenue,
        SUM(COALESCE(e.amount, 0)) AS total_expense,
        SUM(COALESCE(cs.amount, 0)) - SUM(COALESCE(e.amount, 0)) AS profit
    FROM clinics c
    LEFT JOIN clinic_sales cs ON c.cid = cs.cid 
        AND YEAR(cs.datetime) = 2021 AND MONTH(cs.datetime) = 9
    LEFT JOIN expenses e ON c.cid = e.cid 
        AND YEAR(e.datetime) = 2021 AND MONTH(e.datetime) = 9
    GROUP BY c.cid, c.clinic_name, c.state
)
SELECT state, clinic_name, profit
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY state ORDER BY profit ASC) AS rn
    FROM clinic_profit
) sub
WHERE rn = 2
ORDER BY state;
