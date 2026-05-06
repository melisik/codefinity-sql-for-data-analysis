SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(s.quantity) AS total_quantity,
    RANK() OVER (ORDER BY SUM(s.quantity) DESC) AS customer_rank
FROM
    customers c
JOIN
    sales s ON c.customer_id = s.customer_id
GROUP BY
    c.customer_id, c.first_name, c.last_name
ORDER BY
    customer_rank
LIMIT 3;