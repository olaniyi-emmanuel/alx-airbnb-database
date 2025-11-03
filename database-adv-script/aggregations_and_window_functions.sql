--- Write a query to find the total number of bookings made by each user, 
--- using the COUNT function and GROUP BY clause.

select * from booking; 

select * from users;

SELECT 
u.first_name, 
u.last_name,
COUNT(status) AS bookings
FROM users u 
INNER JOIN booking b 
ON u.user_id = b.user_id
GROUP BY  u.user_id, u.first_name, u.last_name 
ORDER BY bookings DESC



--- Use a window function (ROW_NUMBER, RANK) to rank properties based on the total number of bookings they have received.

select * from property 
ROW_NUMBER()
select * from booking; 

SELECT 
p.name, 
p.description,
p.location, 
b.status,
COUNT(b.booking_id)  AS rank_overall
RANK() OVER ( rank_overfall)
FROM property p
INNER JOIN booking b 
ON p.property_id = b.property_id 
GROUP BY p.name, p.description, p.location 
ORDER BY rank_overall 



SELECT 
  p.property_id,
  p.name,
  p.description,
  p.location,
  COUNT(b.booking_id) AS total_bookings
FROM property p
JOIN booking b 
  ON p.property_id = b.property_id
GROUP BY p.property_id, p.name, p.description, p.location;

--- Corerct query

SELECT 
  p.name,
  p.description,
  p.location,
  COUNT(b.booking_id) AS total_bookings,
  RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS rank_overall
FROM property p
JOIN booking b ON p.property_id = b.property_id
GROUP BY p.property_id, p.name, p.description, p.location
ORDER BY total_bookings DESC;
