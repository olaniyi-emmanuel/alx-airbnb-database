EXPLAIN 
ANALYZE 
SELECT
  b.booking_id,
  b.status AS booking_status,
  b.created_at AS booking_date,

  -- User details
  u.user_id,
  u.first_name,
  u.last_name,
  u.email,
  u.phone_number,

  -- Property details
  p.property_id,
  p.name AS property_name,
  p.location,
  p.description,

  -- Payment details
  pay.payment_id,
  pay.amount,
  pay.payment_method,
  pay.payment_status,
  pay.payment_date

FROM booking b
INNER JOIN users u 
  ON b.user_id = u.user_id
INNER JOIN property p 
  ON b.property_id = p.property_id
LEFT JOIN payment pay 
  ON b.booking_id = pay.booking_id
ORDER BY b.created_at DESC;

SELECT * FROM payment; 