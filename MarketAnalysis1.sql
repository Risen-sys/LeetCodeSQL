SELECT  Users.user_id                                       AS buyer_id
       ,Users.join_date
       ,COUNT(case WHEN year(order_date) = 2019 THEN 1 end) AS orders_in_2019
FROM Users
LEFT JOIN Orders
ON Users.user_id = Orders.buyer_id
WHERE 1 = 1
GROUP BY  Users.user_id
         ,Users.join_date