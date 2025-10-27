
-- 🟡 `users`

INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
('a1b2c3d4-e5f6-7890-abcd-1234567890aa', 'John', 'Doe', 'john.doe@example.com', 'hashedpass1', '+2348012345678', 'guest', NOW()),
('b2c3d4e5-f6a7-8901-bcde-2345678901bb', 'Mary', 'Johnson', 'mary.johnson@example.com', 'hashedpass2', '+2348023456789', 'host', NOW()),
('c3d4e5f6-a7b8-9012-cdef-3456789012cc', 'David', 'Smith', 'david.smith@example.com', 'hashedpass3', '+2348034567890', 'guest', NOW()),
('d4e5f6a7-b8c9-0123-def0-4567890123dd', 'Lucy', 'Brown', 'lucy.brown@example.com', 'hashedpass4', '+2348045678901', 'host', NOW()),
('e5f6a7b8-c9d0-1234-ef01-5678901234ee', 'Admin', 'User', 'admin@example.com', 'hashedpass5', '+2348056789012', 'admin', NOW());


-- 🟢 `property`


INSERT INTO property (property_id, host_id, name, description, location, price_per_night, created_at, updated_at)
VALUES
('p1a2b3c4-d5e6-7890-aaaa-111111111111', 'b2c3d4e5-f6a7-8901-bcde-2345678901bb', 'Cozy Apartment in Lagos', 'Beautiful 2-bedroom apartment in the heart of Lagos.', 'Lagos, Nigeria', 25000.00, NOW(), NOW()),
('p2b3c4d5-e6f7-8901-bbbb-222222222222', 'b2c3d4e5-f6a7-8901-bcde-2345678901bb', 'Beachfront Villa', 'Luxury villa with ocean view and private pool.', 'Lekki, Lagos', 75000.00, NOW(), NOW()),
('p3c4d5e6-f7a8-9012-cccc-333333333333', 'd4e5f6a7-b8c9-0123-def0-4567890123dd', 'Ibadan City Lodge', 'Quiet and serene lodge ideal for business travelers.', 'Ibadan, Nigeria', 18000.00, NOW(), NOW()),
('p4d5e6f7-a8b9-0123-dddd-444444444444', 'd4e5f6a7-b8c9-0123-def0-4567890123dd', 'Abuja Downtown Loft', 'Modern loft with stunning city view.', 'Abuja, Nigeria', 40000.00, NOW(), NOW()),
('p5e6f7a8-b9c0-1234-eeee-555555555555', 'b2c3d4e5-f6a7-8901-bcde-2345678901bb', 'Victoria Island Studio', 'Compact studio apartment near restaurants and malls.', 'Victoria Island, Lagos', 30000.00, NOW(), NOW());


--🟠 `booking`

INSERT INTO booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
('bkg1a2b3-c4d5-6789-aaaa-111111111111', 'p1a2b3c4-d5e6-7890-aaaa-111111111111', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', '2025-11-01', '2025-11-05', 100000.00, 'confirmed', NOW()),
('bkg2b3c4-d5e6-7890-bbbb-222222222222', 'p2b3c4d5-e6f7-8901-bbbb-222222222222', 'c3d4e5f6-a7b8-9012-cdef-3456789012cc', '2025-12-10', '2025-12-15', 375000.00, 'pending', NOW()),
('bkg3c4d5-e6f7-8901-cccc-333333333333', 'p3c4d5e6-f7a8-9012-cccc-333333333333', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', '2025-10-20', '2025-10-25', 90000.00, 'confirmed', NOW()),
('bkg4d5e6-f7a8-9012-dddd-444444444444', 'p4d5e6f7-a8b9-0123-dddd-444444444444', 'c3d4e5f6-a7b8-9012-cdef-3456789012cc', '2025-09-05', '2025-09-08', 120000.00, 'canceled', NOW()),
('bkg5e6f7-a8b9-0123-eeee-555555555555', 'p5e6f7a8-b9c0-1234-eeee-555555555555', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', '2025-08-15', '2025-08-20', 150000.00, 'confirmed', NOW());


-- 🔵 `payment`

```sql
INSERT INTO payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
('pay1a2b3-c4d5-6789-aaaa-111111111111', 'bkg1a2b3-c4d5-6789-aaaa-111111111111', 100000.00, NOW(), 'credit_card'),
('pay2b3c4-d5e6-7890-bbbb-222222222222', 'bkg2b3c4-d5e6-7890-bbbb-222222222222', 375000.00, NOW(), 'paypal'),
('pay3c4d5-e6f7-8901-cccc-333333333333', 'bkg3c4d5-e6f7-8901-cccc-333333333333', 90000.00, NOW(), 'stripe'),
('pay4d5e6-f7a8-9012-dddd-444444444444', 'bkg4d5e6-f7a8-9012-dddd-444444444444', 120000.00, NOW(), 'credit_card'),
('pay5e6f7-a8b9-0123-eeee-555555555555', 'bkg5e6f7-a8b9-0123-eeee-555555555555', 150000.00, NOW(), 'paypal');
```


-- 🟠 `review`


INSERT INTO review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
('rev1a2b3-c4d5-6789-aaaa-111111111111', 'p1a2b3c4-d5e6-7890-aaaa-111111111111', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 5, 'Amazing experience! Super clean and comfy.', NOW()),
('rev2b3c4-d5e6-7890-bbbb-222222222222', 'p2b3c4d5-e6f7-8901-bbbb-222222222222', 'c3d4e5f6-a7b8-9012-cdef-3456789012cc', 4, 'Lovely villa, but a bit pricey.', NOW()),
('rev3c4d5-e6f7-8901-cccc-333333333333', 'p3c4d5e6-f7a8-9012-cccc-333333333333', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 5, 'Serene environment. Excellent host.', NOW()),
('rev4d5e6-f7a8-9012-dddd-444444444444', 'p4d5e6f7-a8b9-0123-dddd-444444444444', 'c3d4e5f6-a7b8-9012-cdef-3456789012cc', 3, 'Nice loft but needed better cleaning.', NOW()),
('rev5e6f7-a8b9-0123-eeee-555555555555', 'p5e6f7a8-b9c0-1234-eeee-555555555555', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 4, 'Good value for money.', NOW());


--- 🟢 `message`

INSERT INTO message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
('msg1a2b3-c4d5-6789-aaaa-111111111111', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 'b2c3d4e5-f6a7-8901-bcde-2345678901bb', 'Hi Mary, is your apartment free next weekend?', NOW()),
('msg2b3c4-d5e6-7890-bbbb-222222222222', 'b2c3d4e5-f6a7-8901-bcde-2345678901bb', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 'Hi John, yes, it’s available.', NOW()),
('msg3c4d5-e6f7-8901-cccc-333333333333', 'c3d4e5f6-a7b8-9012-cdef-3456789012cc', 'd4e5f6a7-b8c9-0123-def0-4567890123dd', 'Is the Ibadan Lodge pet-friendly?', NOW()),
('msg4d5e6-f7a8-9012-dddd-444444444444', 'd4e5f6a7-b8c9-0123-def0-4567890123dd', 'c3d4e5f6-a7b8-9012-cdef-3456789012cc', 'Yes, small pets are allowed.', NOW()),
('msg5e6f7-a8b9-0123-eeee-555555555555', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 'd4e5f6a7-b8c9-0123-def0-4567890123dd', 'Can I get a discount for 5 nights in Abuja?', NOW());