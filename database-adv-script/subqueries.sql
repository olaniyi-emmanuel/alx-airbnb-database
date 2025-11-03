 --- Write a query to find all properties where the average rating is greater than 4.0 using a subquery.
SELECT 
  p.property_id,
  p.name,
  p.description,
  p.location,
  p.price_per_night,
  r.avg_rating
FROM property AS p
JOIN (
  SELECT 
    property_id,
    AVG(rating) AS avg_rating
  FROM review
  GROUP BY property_id
  HAVING AVG(rating) > 4.0
) AS r
ON p.property_id = r.property_id;


select * from users; 
--- Write a correlated subquery to find users who have made more than 3 bookings.
--- 1. 
SELECT 
u.first_name, 
u.last_name, 
u.phone_number, 
u.email, 
role
from users u 
where (
    select COUNT(*) AS confirmed_bookings 
    from booking b where b.status = 'confirmed'
    AND 
    b.user_id = u.user_id
    GROUP by b.status 
) > 3

-----------------------------------------------------------
---other query 
select * from booking 

select COUNT(*) AS confirmed_bookings 
    from booking b 
    where status = 'confirmed'
    AND 
    where b.user_id = u.user_id
    GROUP by status 


select COUNT(*) AS confirmed_bookings 
from booking where status = 'confirmed'
SELECT COUNT(*), STATUS 
    FROM booking b
    ---where b.user_id = u.user_id
    GROUP by status 