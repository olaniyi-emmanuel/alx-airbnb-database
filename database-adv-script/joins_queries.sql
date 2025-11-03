--- Inner join  
SELECT 
u.user_id, 
u.first_name,
u.last_name,
u.email,
u.phone_number,
u.role,
b.start_date,
b.end_date,
b.total_price,
b.status
FROM users AS u
INNER JOIN booking AS b
ON u.user_id = b.user_id 
ORDER BY first_name;


--Left Join 
SELECT 
u.user_id, 
u.first_name,
u.last_name,
u.email,
u.phone_number,
u.role,
b.start_date,
b.end_date,
b.total_price,
b.status
FROM users AS u
LEFT JOIN booking AS b
ON u.user_id = b.user_id ;



SELECT 
u.user_id, 
u.first_name,
u.last_name,
u.email,
u.phone_number,
u.role,
b.start_date,
b.end_date,
b.total_price,
b.status
FROM users AS u
FULL OUTER JOIN booking AS b
ON u.user_id = b.user_id ;
ORDER BY user_id
 

