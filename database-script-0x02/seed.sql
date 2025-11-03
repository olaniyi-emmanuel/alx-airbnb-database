
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


INSERT INTO payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
('pay1a2b3-c4d5-6789-aaaa-111111111111', 'bkg1a2b3-c4d5-6789-aaaa-111111111111', 100000.00, NOW(), 'credit_card'),
('pay2b3c4-d5e6-7890-bbbb-222222222222', 'bkg2b3c4-d5e6-7890-bbbb-222222222222', 375000.00, NOW(), 'paypal'),
('pay3c4d5-e6f7-8901-cccc-333333333333', 'bkg3c4d5-e6f7-8901-cccc-333333333333', 90000.00, NOW(), 'stripe'),
('pay4d5e6-f7a8-9012-dddd-444444444444', 'bkg4d5e6-f7a8-9012-dddd-444444444444', 120000.00, NOW(), 'credit_card'),
('pay5e6f7-a8b9-0123-eeee-555555555555', 'bkg5e6f7-a8b9-0123-eeee-555555555555', 150000.00, NOW(), 'paypal');



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


CREATE EXTENSION IF NOT EXISTS "pgcrypto";

INSERT INTO property (property_id, host_id, name, description, location, price_per_night, created_at, updated_at)
VALUES
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 0), 'Cozy Apartment in Lagos', 'Beautiful 2-bedroom apartment with modern amenities in the heart of Lagos.', 'Lagos, Nigeria', 25000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 1), 'Beachfront Villa', 'Luxury villa with ocean view and private pool.', 'Lekki, Lagos', 75000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 2), 'Ibadan City Lodge', 'Quiet and serene lodge ideal for business travelers.', 'Ibadan, Nigeria', 18000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 0), 'Abuja Downtown Loft', 'Modern loft with stunning city view near central business district.', 'Abuja, Nigeria', 40000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 1), 'Victoria Island Studio', 'Compact studio apartment near restaurants and malls.', 'Victoria Island, Lagos', 30000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 2), 'Port Harcourt Waterfront Home', '3-bedroom family home overlooking the Bonny River.', 'Port Harcourt, Nigeria', 35000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 0), 'Abeokuta Heritage Cottage', 'Rustic cottage located near Olumo Rock with scenic views.', 'Abeokuta, Nigeria', 15000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 1), 'Enugu Hillside Bungalow', 'Peaceful home with easy access to Enugu Golf Course.', 'Enugu, Nigeria', 22000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 2), 'Benin Royal Apartment', 'Luxury apartment in GRA Benin, close to shopping centers.', 'Benin City, Nigeria', 27000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 0), 'Calabar Resort Cabin', 'Perfect getaway cabin surrounded by tropical greenery.', 'Calabar, Nigeria', 20000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 1), 'Jos Plateau Retreat', 'Cool and cozy lodge for vacation lovers and families.', 'Jos, Nigeria', 16000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 2), 'Ilorin Central Hotel Room', 'Affordable hotel room close to University of Ilorin.', 'Ilorin, Nigeria', 12000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 0), 'Owerri Executive Suite', 'Fully serviced suite ideal for executives and couples.', 'Owerri, Nigeria', 28000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 1), 'Uyo Smart Apartment', '2-bedroom smart apartment with automated lighting and AC.', 'Uyo, Nigeria', 26000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 2), 'Kano Business Hotel Room', 'Modern hotel room located near Kano Trade Fair Complex.', 'Kano, Nigeria', 24000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 0), 'Asaba Lakeview Apartment', 'Lakeview apartment perfect for honeymoon and weekend trips.', 'Asaba, Nigeria', 31000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 1), 'Yola Family Residence', 'Spacious family home with garden and parking space.', 'Yola, Nigeria', 18000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 2), 'Ekiti Green Lodge', 'Eco-friendly lodge surrounded by nature and calm atmosphere.', 'Ado-Ekiti, Nigeria', 14000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 0), 'Minna Comfort Apartment', 'Modern 2-bedroom apartment with free Wi-Fi.', 'Minna, Nigeria', 19000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 1), 'Warri City Apartment', 'Simple yet cozy apartment near the oil city hub.', 'Warri, Nigeria', 22000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 2), 'Ado-Ekiti Executive Villa', 'Spacious villa suitable for long-term family stays.', 'Ado-Ekiti, Nigeria', 33000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 0), 'Kwara Hills Cabin', 'Cabin-style home perfect for couples seeking quiet retreats.', 'Kwara, Nigeria', 15000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 1), 'Zaria Academic Residence', 'Guesthouse close to Ahmadu Bello University.', 'Zaria, Nigeria', 17000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 2), 'Ogun Tech Apartment', 'Smart apartment with fast internet and digital locks.', 'Ogun State, Nigeria', 23000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 0), 'Osogbo City Inn', 'Budget-friendly inn with 24/7 security and generator backup.', 'Osogbo, Nigeria', 13000.00, NOW(), NOW()),
(gen_random_uuid(), (SELECT user_id FROM users LIMIT 1 OFFSET 1), 'Makurdi Riverfront House', 'House located beside River Benue, ideal for small families.', 'Makurdi, Nigeria', 20000.00, NOW(), NOW());


INSERT INTO booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-01-10', '2025-01-15', 85000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-02-05', '2025-02-10', 125000.00, 'pending', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-02-15', '2025-02-20', 95000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-03-01', '2025-03-05', 72000.00, 'canceled', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-03-10', '2025-03-15', 112000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-03-20', '2025-03-25', 66000.00, 'pending', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-04-01', '2025-04-07', 128000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-04-15', '2025-04-20', 75000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-04-25', '2025-04-30', 95000.00, 'pending', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-05-01', '2025-05-05', 120000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-05-10', '2025-05-15', 78000.00, 'pending', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-05-20', '2025-05-25', 89000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-06-01', '2025-06-05', 95000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-06-10', '2025-06-15', 100000.00, 'pending', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-06-20', '2025-06-25', 89000.00, 'canceled', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-07-01', '2025-07-07', 130000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-07-10', '2025-07-15', 79000.00, 'pending', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-07-20', '2025-07-25', 84000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-08-01', '2025-08-05', 91000.00, 'pending', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-08-10', '2025-08-15', 75000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-08-20', '2025-08-25', 88000.00, 'pending', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-09-01', '2025-09-06', 97000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-09-10', '2025-09-15', 82000.00, 'canceled', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-09-20', '2025-09-25', 91000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-10-01', '2025-10-05', 88000.00, 'pending', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-10-10', '2025-10-15', 120000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-10-20', '2025-10-25', 65000.00, 'pending', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-11-01', '2025-11-05', 102000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-11-10', '2025-11-15', 74000.00, 'pending', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-11-20', '2025-11-25', 92000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-12-01', '2025-12-05', 87000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-12-10', '2025-12-15', 113000.00, 'pending', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-12-20', '2025-12-25', 98000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2025-12-26', '2025-12-30', 128000.00, 'pending', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2026-01-01', '2026-01-06', 150000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2026-01-10', '2026-01-15', 74000.00, 'pending', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2026-02-01', '2026-02-05', 97000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2026-02-10', '2026-02-15', 104000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2026-03-01', '2026-03-05', 88000.00, 'pending', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2026-03-10', '2026-03-15', 132000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2026-03-20', '2026-03-25', 118000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2026-04-01', '2026-04-05', 89000.00, 'pending', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2026-04-10', '2026-04-15', 96000.00, 'confirmed', NOW()),
(gen_random_uuid(), (SELECT property_id FROM property ORDER BY random() LIMIT 1), (SELECT user_id FROM users ORDER BY random() LIMIT 1), '2026-04-20', '2026-04-25', 108000.00, 'confirmed', NOW());



INSERT INTO payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
('a1b2c3d4-e5f6-7890-aaaa-111111111111', 'b1c2d3e4-f5a6-7890-aaaa-111111111111', 100000.00, NOW(), 'credit_card'),
('a2b3c4d5-f6a7-8901-bbbb-222222222222', 'b2c3d4e5-f6a7-8901-bbbb-222222222222', 375000.00, NOW(), 'paypal'),
('a3b4c5d6-g7a8-9012-cccc-333333333333', 'b3c4d5e6-f7a8-9012-cccc-333333333333', 90000.00, NOW(), 'stripe'),
('a4b5c6d7-h8a9-0123-dddd-444444444444', 'b4d5e6f7-a8b9-0123-dddd-444444444444', 120000.00, NOW(), 'credit_card'),
('a5b6c7d8-i9b0-1234-eeee-555555555555', 'b5e6f7a8-b9c0-1234-eeee-555555555555', 150000.00, NOW(), 'paypal'),
('a6b7c8d9-j0c1-2345-ffff-666666666666', 'b6f7a8b9-c0d1-2345-ffff-666666666666', 85000.00, NOW(), 'stripe'),
('a7b8c9d0-k1d2-3456-aaaa-777777777777', 'b7a8b9c0-d1e2-3456-aaaa-777777777777', 130000.00, NOW(), 'paypal'),
('a8b9c0d1-l2e3-4567-bbbb-888888888888', 'b8a9b0c1-e2f3-4567-bbbb-888888888888', 270000.00, NOW(), 'credit_card'),
('a9b0c1d2-m3f4-5678-cccc-999999999999', 'b9b0c1d2-f3g4-5678-cccc-999999999999', 105000.00, NOW(), 'stripe'),
('a0b1c2d3-n4g5-6789-dddd-101010101010', 'b0b1c2d3-g4h5-6789-dddd-101010101010', 95000.00, NOW(), 'credit_card'),
('b1c2d3e4-o5h6-7890-eeee-111111111112', 'c1c2d3e4-h5i6-7890-eeee-111111111112', 155000.00, NOW(), 'paypal'),
('b2c3d4e5-p6i7-8901-ffff-121212121212', 'c2c3d4e5-i6j7-8901-ffff-121212121212', 260000.00, NOW(), 'stripe'),
('b3c4d5e6-q7j8-9012-aaaa-131313131313', 'c3c4d5e6-j7k8-9012-aaaa-131313131313', 110000.00, NOW(), 'credit_card'),
('b4c5d6e7-r8k9-0123-bbbb-141414141414', 'c4c5d6e7-k8l9-0123-bbbb-141414141414', 200000.00, NOW(), 'paypal'),
('b5c6d7e8-s9l0-1234-cccc-151515151515', 'c5c6d7e8-l9m0-1234-cccc-151515151515', 175000.00, NOW(), 'stripe'),
('b6c7d8e9-t0m1-2345-dddd-161616161616', 'c6c7d8e9-m0n1-2345-dddd-161616161616', 90000.00, NOW(), 'credit_card'),
('b7c8d9e0-u1n2-3456-eeee-171717171717', 'c7c8d9e0-n1o2-3456-eeee-171717171717', 125000.00, NOW(), 'paypal'),
('b8c9d0e1-v2o3-4567-ffff-181818181818', 'c8c9d0e1-o2p3-4567-ffff-181818181818', 135000.00, NOW(), 'stripe'),
('b9c0d1e2-w3p4-5678-aaaa-191919191919', 'c9c0d1e2-p3q4-5678-aaaa-191919191919', 225000.00, NOW(), 'credit_card'),
('b0c1d2e3-x4q5-6789-bbbb-202020202020', 'c0c1d2e3-q4r5-6789-bbbb-202020202020', 185000.00, NOW(), 'paypal'),
('c1d2e3f4-y5r6-7890-cccc-212121212121', 'd1d2e3f4-r5s6-7890-cccc-212121212121', 98000.00, NOW(), 'stripe'),
('c2d3e4f5-z6s7-8901-dddd-222222222222', 'd2d3e4f5-s6t7-8901-dddd-222222222222', 140000.00, NOW(), 'credit_card'),
('c3d4e5f6-a7t8-9012-eeee-232323232323', 'd3d4e5f6-t7u8-9012-eeee-232323232323', 210000.00, NOW(), 'paypal'),
('c4d5e6f7-b8u9-0123-ffff-242424242424', 'd4d5e6f7-u8v9-0123-ffff-242424242424', 310000.00, NOW(), 'stripe'),
('c5d6e7f8-c9v0-1234-aaaa-252525252525', 'd5d6e7f8-v9w0-1234-aaaa-252525252525', 95000.00, NOW(), 'credit_card'),
('c6d7e8f9-d0w1-2345-bbbb-262626262626', 'd6d7e8f9-w0x1-2345-bbbb-262626262626', 275000.00, NOW(), 'paypal'),
('c7d8e9f0-e1x2-3456-cccc-272727272727', 'd7d8e9f0-x1y2-3456-cccc-272727272727', 310000.00, NOW(), 'stripe'),
('c8d9e0f1-f2y3-4567-dddd-282828282828', 'd8d9e0f1-y2z3-4567-dddd-282828282828', 190000.00, NOW(), 'credit_card'),
('c9d0e1f2-g3z4-5678-eeee-292929292929', 'd9d0e1f2-z3a4-5678-eeee-292929292929', 175000.00, NOW(), 'paypal'),
('d0e1f2g3-h4a5-6789-ffff-303030303030', 'e0e1f2g3-a4b5-6789-ffff-303030303030', 125000.00, NOW(), 'stripe'),
('d1e2f3g4-i5b6-7890-aaaa-313131313131', 'e1e2f3g4-b5c6-7890-aaaa-313131313131', 98000.00, NOW(), 'credit_card'),
('d2e3f4g5-j6c7-8901-bbbb-323232323232', 'e2e3f4g5-c6d7-8901-bbbb-323232323232', 155000.00, NOW(), 'paypal'),
('d3e4f5g6-k7d8-9012-cccc-333333333333', 'e3e4f5g6-d7e8-9012-cccc-333333333333', 225000.00, NOW(), 'stripe'),
('d4e5f6g7-l8e9-0123-dddd-343434343434', 'e4e5f6g7-e8f9-0123-dddd-343434343434', 205000.00, NOW(), 'credit_card'),
('d5e6f7g8-m9f0-1234-eeee-353535353535', 'e5e6f7g8-f9g0-1234-eeee-353535353535', 95000.00, NOW(), 'paypal'),
('d6e7f8g9-n0g1-2345-ffff-363636363636', 'e6e7f8g9-g0h1-2345-ffff-363636363636', 180000.00, NOW(), 'stripe'),
('d7e8f9g0-o1h2-3456-aaaa-373737373737', 'e7e8f9g0-h1i2-3456-aaaa-373737373737', 270000.00, NOW(), 'credit_card'),
('d8e9f0g1-p2i3-4567-bbbb-383838383838', 'e8e9f0g1-i2j3-4567-bbbb-383838383838', 240000.00, NOW(), 'paypal'),
('d9f0g1h2-q3j4-5678-cccc-393939393939', 'e9f0g1h2-j3k4-5678-cccc-393939393939', 170000.00, NOW(), 'stripe'),
('e0f1g2h3-r4k5-6789-dddd-404040404040', 'f0f1g2h3-k4l5-6789-dddd-404040404040', 130000.00, NOW(), 'credit_card'),
('e1f2g3h4-s5l6-7890-eeee-414141414141', 'f1f2g3h4-l5m6-7890-eeee-414141414141', 160000.00, NOW(), 'paypal'),
('e2f3g4h5-t6m7-8901-ffff-424242424242', 'f2f3g4h5-m6n7-8901-ffff-424242424242', 220000.00, NOW(), 'stripe'),
('e3f4g5h6-u7n8-9012-aaaa-434343434343', 'f3f4g5h6-n7o8-9012-aaaa-434343434343', 145000.00, NOW(), 'credit_card'),
('e4f5g6h7-v8o9-0123-bbbb-444444444444', 'f4f5g6h7-o8p9-0123-bbbb-444444444444', 175000.00, NOW(), 'paypal'),
('e5f6g7h8-w9p0-1234-cccc-454545454545', 'f5f6g7h8-p9q0-1234-cccc-454545454545', 205000.00, NOW(), 'stripe'),
('e6f7g8h9-x0q1-2345-dddd-464646464646', 'f6f7g8h9-q0r1-2345-dddd-464646464646', 115000.00, NOW(), 'credit_card'),
('e7f8g9h0-y1r2-3456-eeee-474747474747', 'f7f8g9h0-r1s2-3456-eeee-474747474747', 185000.00, NOW(), 'paypal'),
('e8f9g0h1-z2s3-4567-ffff-484848484848', 'f8f9g0h1-s2t3-4567-ffff-484848484848', 135000.00, NOW(), 'stripe');



-- Ensure the pgcrypto extension is enabled
CREATE EXTENSION IF NOT EXISTS pgcrypto;

INSERT INTO payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
(gen_random_uuid(), '99fe86de-5e44-4240-b044-49a092f28f91', 105000.00, NOW(), 'credit_card'),
(gen_random_uuid(), 'a9d395ae-aa27-4566-af91-9114d6ea7338', 87000.00, NOW(), 'paypal'),
(gen_random_uuid(), 'cdb30f67-0332-402f-aeba-dfd3f4cca344', 96000.00, NOW(), 'stripe'),
(gen_random_uuid(), '1360298a-3d2a-4801-ad6b-5d3c4fb07ea1', 112000.00, NOW(), 'credit_card'),
(gen_random_uuid(), 'f94604b8-d661-4420-b467-c26cafb44ff5', 150000.00, NOW(), 'paypal'),
(gen_random_uuid(), '1ccb7c74-ead5-40c3-8f8e-d2fc7e3e9703', 91000.00, NOW(), 'stripe'),
(gen_random_uuid(), '5df44422-cf1f-40b3-8024-6377a510947f', 99000.00, NOW(), 'credit_card'),
(gen_random_uuid(), 'c06c5662-bad0-47d1-bf92-b91fd1a2188f', 87000.00, NOW(), 'paypal'),
(gen_random_uuid(), '29502ef3-6b97-4eac-b55b-f7fc2b191941', 108000.00, NOW(), 'stripe'),
(gen_random_uuid(), 'd0c78d43-ff19-4436-a892-0a84f2b2c0be', 115000.00, NOW(), 'credit_card'),
(gen_random_uuid(), 'd68d6ff3-2979-456a-9112-34bcb0113451', 102000.00, NOW(), 'paypal'),
(gen_random_uuid(), '11760872-db0b-49d8-b00e-dcb9e4804297', 134000.00, NOW(), 'stripe'),
(gen_random_uuid(), '4da8f7c1-4c95-4e2c-8fe4-b3a42fc160cf', 125000.00, NOW(), 'credit_card'),
(gen_random_uuid(), '65fda61b-a587-4872-bc5b-637fa77271a1', 94000.00, NOW(), 'paypal'),
(gen_random_uuid(), '983a85be-cee3-4149-be94-60a1eeba8087', 120000.00, NOW(), 'stripe'),
(gen_random_uuid(), 'f5f513f0-9556-406f-a431-e31bbf03ae25', 101000.00, NOW(), 'credit_card'),
(gen_random_uuid(), 'e91aa9ed-5636-4409-91de-92a1c96ed49c', 88000.00, NOW(), 'paypal'),
(gen_random_uuid(), 'c50bb11d-d9ca-434f-8228-26d02b511e02', 99000.00, NOW(), 'stripe'),
(gen_random_uuid(), 'ef74af1c-e116-413c-8aed-44d33e4c9c80', 104000.00, NOW(), 'credit_card'),
(gen_random_uuid(), '7f804497-8519-472c-89cd-210b77378257', 95000.00, NOW(), 'paypal'),
(gen_random_uuid(), '9adc1c70-01fa-4ce8-9a74-6156bd1c50bc', 115000.00, NOW(), 'stripe'),
(gen_random_uuid(), 'c5e6882f-5bee-4fb7-99cf-1c3bdcbf8503', 102000.00, NOW(), 'credit_card'),
(gen_random_uuid(), '0cb21166-8751-4b06-8251-dddc1252c1cf', 88000.00, NOW(), 'paypal'),
(gen_random_uuid(), '5edcb5e4-66cd-4aa6-8629-2787e7244905', 121000.00, NOW(), 'stripe'),
(gen_random_uuid(), '4963d5ad-04ef-4d1a-8aa0-95938f6b3d1f', 97000.00, NOW(), 'credit_card'),
(gen_random_uuid(), '5e4050dc-0115-4b6e-9485-3416ca3aa70a', 111000.00, NOW(), 'paypal'),
(gen_random_uuid(), 'fb74c740-bcd0-4411-8d4b-82b6be75c427', 135000.00, NOW(), 'stripe'),
(gen_random_uuid(), '0beb4dc5-f142-4fee-80b2-b5cf9fa0b9df', 91000.00, NOW(), 'credit_card'),
(gen_random_uuid(), 'bdf45fea-f3f0-4131-9486-606f905a3d97', 109000.00, NOW(), 'paypal'),
(gen_random_uuid(), '35ec0833-ccab-48b2-a4f4-0522ddb5b3cf', 94000.00, NOW(), 'stripe'),
(gen_random_uuid(), 'db1b11aa-7f32-46f6-8f41-134030fed10f', 115000.00, NOW(), 'credit_card'),
(gen_random_uuid(), '9b1e4712-981a-478c-8953-ca83c182d24f', 98000.00, NOW(), 'paypal'),
(gen_random_uuid(), 'd6eca1b2-d4e7-4449-8580-d281a22964f8', 120000.00, NOW(), 'stripe'),
(gen_random_uuid(), '1f962151-1fe7-4625-9985-e7c9c4f77a54', 101000.00, NOW(), 'credit_card'),
(gen_random_uuid(), 'e54f5f1c-3ed5-470c-b14c-52b883cccc2f', 106000.00, NOW(), 'paypal'),
(gen_random_uuid(), '17b6f73f-4dca-45df-a7ae-2f03444eb91d', 128000.00, NOW(), 'stripe'),
(gen_random_uuid(), 'ceb58821-e134-4229-a7b2-f96e677ac336', 97000.00, NOW(), 'credit_card'),
(gen_random_uuid(), 'aebee8fd-76de-48fb-9142-eb23858f2aa1', 88000.00, NOW(), 'paypal'),
(gen_random_uuid(), '853f18e5-c957-4bf8-b258-ce5cf5380aa6', 91000.00, NOW(), 'stripe'),
(gen_random_uuid(), '7ac3670d-1c78-430c-8cca-43bcd747c339', 113000.00, NOW(), 'credit_card'),
(gen_random_uuid(), '4c5c4d1d-db95-4a09-8928-ebc462749fe6', 100000.00, NOW(), 'paypal'),
(gen_random_uuid(), '89f67af6-2130-444e-9dbf-49e0e5adb272', 89000.00, NOW(), 'stripe'),
(gen_random_uuid(), '0174f9b7-2e23-4fc9-a215-ba5abe406941', 107000.00, NOW(), 'credit_card'),
(gen_random_uuid(), 'ee4dca6b-4b06-4aa8-8c1c-feb3f0851647', 99000.00, NOW(), 'paypal'),
(gen_random_uuid(), '99fe86de-5e44-4240-b044-49a092f28f91', 94000.00, NOW(), 'stripe'),
(gen_random_uuid(), 'a9d395ae-aa27-4566-af91-9114d6ea7338', 128000.00, NOW(), 'credit_card'),
(gen_random_uuid(), 'cdb30f67-0332-402f-aeba-dfd3f4cca344', 97000.00, NOW(), 'paypal'),
(gen_random_uuid(), '1360298a-3d2a-4801-ad6b-5d3c4fb07ea1', 111000.00, NOW(), 'stripe'),
(gen_random_uuid(), 'f94604b8-d661-4420-b467-c26cafb44ff5', 108000.00, NOW(), 'credit_card'),
(gen_random_uuid(), '1ccb7c74-ead5-40c3-8f8e-d2fc7e3e9703', 89000.00, NOW(), 'paypal');



INSERT INTO review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
(gen_random_uuid(), '4346fc06-b64a-4ccb-9e46-2a9c8c83e920', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 5, 'Beautiful space with all amenities working perfectly.', NOW()),
(gen_random_uuid(), '8492c964-1d33-42e6-9f67-f93005386f66', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 4, 'Cozy environment, though the Wi-Fi was spotty.', NOW()),
(gen_random_uuid(), 'acf91e7d-208f-42f9-bc06-9691a3ec3e0e', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 5, 'Loved my stay here! Highly recommend.', NOW()),
(gen_random_uuid(), '35821c13-b2f2-4bcd-b8cb-f338f7fba5f5', 'c3d4e5f6-a7b8-9012-cdef-3456789012cc', 3, 'Decent property but needs better lighting.', NOW()),
(gen_random_uuid(), '4346fc06-b64a-4ccb-9e46-2a9c8c83e920', 'b2c3d4e5-f6a7-8901-bcde-2345678901bb', 4, 'Nice host and quiet area.', NOW()),
(gen_random_uuid(), '6d900f97-f698-4a7e-9ee6-17a4f3a8c5a2', 'c3d4e5f6-a7b8-9012-cdef-3456789012cc', 5, 'Perfect getaway spot.', NOW()),
(gen_random_uuid(), 'a225f47e-e62b-489d-946c-ac82959fb7c5', 'e5f6a7b8-c9d0-1234-ef01-5678901234ee', 5, 'Very spacious and well-maintained.', NOW()),
(gen_random_uuid(), '6d900f97-f698-4a7e-9ee6-17a4f3a8c5a2', 'b2c3d4e5-f6a7-8901-bcde-2345678901bb', 4, 'The kitchen was spotless and fully equipped.', NOW()),
(gen_random_uuid(), '749e42c9-ead3-442c-af84-c9d015690c69', 'd4e5f6a7-b8c9-0123-def0-4567890123dd', 3, 'Good location, but noise from nearby traffic.', NOW()),
(gen_random_uuid(), 'c667dca3-8c2b-4f6a-9578-eea752b1fc88', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 5, 'Exceptional stay! The view was breathtaking.', NOW()),
(gen_random_uuid(), 'c62a9052-8e6f-49ef-b97c-1e8b94afbe85', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 4, 'Nice apartment but a bit pricey.', NOW()),
(gen_random_uuid(), '5472dd02-32ad-4963-bf59-55a1ff03e04a', 'b2c3d4e5-f6a7-8901-bcde-2345678901bb', 5, 'Spotless and cozy. Loved it!', NOW()),
(gen_random_uuid(), '0293646f-1361-458b-9a58-2bf4a5f86453', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 3, 'Average experience, could be cleaner.', NOW()),
(gen_random_uuid(), 'e8d1dd69-8ce2-4901-8202-1de4b7516562', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 5, 'Fantastic location and amazing host.', NOW()),
(gen_random_uuid(), '14793dc9-09ee-4d07-beb5-6ec068a36f22', 'd4e5f6a7-b8c9-0123-def0-4567890123dd', 4, 'Great ambiance, will return.', NOW()),
(gen_random_uuid(), 'c667dca3-8c2b-4f6a-9578-eea752b1fc88', 'b2c3d4e5-f6a7-8901-bcde-2345678901bb', 3, 'The bathroom was small but functional.', NOW()),
(gen_random_uuid(), 'c62a9052-8e6f-49ef-b97c-1e8b94afbe85', 'd4e5f6a7-b8c9-0123-def0-4567890123dd', 4, 'Good experience overall.', NOW()),
(gen_random_uuid(), 'f8e28676-a771-4636-90d7-a38259bf91aa', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 5, 'Absolutely perfect!', NOW()),
(gen_random_uuid(), '07683d19-568d-44e3-a2fb-a06457dddb18', 'd4e5f6a7-b8c9-0123-def0-4567890123dd', 2, 'Too noisy for my liking.', NOW()),
(gen_random_uuid(), '591c35d8-c76b-43a2-aa35-a0abd7d51467', 'c3d4e5f6-a7b8-9012-cdef-3456789012cc', 5, 'Superb and very clean.', NOW()),
(gen_random_uuid(), '0605b397-bd83-4003-b082-6a6db9a3288f', 'b2c3d4e5-f6a7-8901-bcde-2345678901bb', 4, 'Had a wonderful time.', NOW()),
(gen_random_uuid(), 'be2709ae-248e-413c-9cf4-176429d9b848', 'c3d4e5f6-a7b8-9012-cdef-3456789012cc', 5, 'Best Airbnb I’ve ever stayed in.', NOW()),
(gen_random_uuid(), '0293646f-1361-458b-9a58-2bf4a5f86453', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 4, 'Loved the natural lighting.', NOW()),
(gen_random_uuid(), '1961de65-ef21-451b-bcb0-93bf316f81d8', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 3, 'Nice but could use more decor.', NOW()),
(gen_random_uuid(), '4346fc06-b64a-4ccb-9e46-2a9c8c83e920', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 5, 'A home away from home!', NOW()),
(gen_random_uuid(), '88971013-c785-428f-a3be-3277af738e16', 'b2c3d4e5-f6a7-8901-bcde-2345678901bb', 4, 'The host was responsive and helpful.', NOW()),
(gen_random_uuid(), 'e8d1dd69-8ce2-4901-8202-1de4b7516562', 'c3d4e5f6-a7b8-9012-cdef-3456789012cc', 5, 'Everything was exactly as described.', NOW()),
(gen_random_uuid(), 'b970c7c3-e960-4fad-8fdf-94b4433d1d87', 'e5f6a7b8-c9d0-1234-ef01-5678901234ee', 4, 'Beautifully designed interior.', NOW()),
(gen_random_uuid(), 'a225f47e-e62b-489d-946c-ac82959fb7c5', 'c3d4e5f6-a7b8-9012-cdef-3456789012cc', 5, 'Simply perfect stay.', NOW()),
(gen_random_uuid(), '5472dd02-32ad-4963-bf59-55a1ff03e04a', 'c3d4e5f6-a7b8-9012-cdef-3456789012cc', 4, 'Very tidy and comfortable.', NOW()),
(gen_random_uuid(), '35821c13-b2f2-4bcd-b8cb-f338f7fba5f5', 'b2c3d4e5-f6a7-8901-bcde-2345678901bb', 5, 'Excellent host service.', NOW()),
(gen_random_uuid(), 'e8d1dd69-8ce2-4901-8202-1de4b7516562', 'b2c3d4e5-f6a7-8901-bcde-2345678901bb', 3, 'Nice but had some maintenance issues.', NOW()),
(gen_random_uuid(), '8492c964-1d33-42e6-9f67-f93005386f66', 'd4e5f6a7-b8c9-0123-def0-4567890123dd', 4, 'Great ambiance.', NOW()),
(gen_random_uuid(), '56598441-23ad-4b32-ad04-bfedde16b2f9', 'b2c3d4e5-f6a7-8901-bcde-2345678901bb', 5, 'Lovely design and atmosphere.', NOW()),
(gen_random_uuid(), 'ee66ca74-1a2e-4aa5-98d9-ae3a4b7520df', 'e5f6a7b8-c9d0-1234-ef01-5678901234ee', 4, 'Perfect for families.', NOW()),
(gen_random_uuid(), '1961de65-ef21-451b-bcb0-93bf316f81d8', 'e5f6a7b8-c9d0-1234-ef01-5678901234ee', 5, 'Very comfortable and spacious.', NOW()),
(gen_random_uuid(), 'b970c7c3-e960-4fad-8fdf-94b4433d1d87', 'd4e5f6a7-b8c9-0123-def0-4567890123dd', 4, 'Modern, well-furnished space.', NOW()),
(gen_random_uuid(), '591c35d8-c76b-43a2-aa35-a0abd7d51467', 'e5f6a7b8-c9d0-1234-ef01-5678901234ee', 5, 'Would stay here again!', NOW()),
(gen_random_uuid(), 'a225f47e-e62b-489d-946c-ac82959fb7c5', 'c3d4e5f6-a7b8-9012-cdef-3456789012cc', 4, 'Good value for money.', NOW()),
(gen_random_uuid(), '591c35d8-c76b-43a2-aa35-a0abd7d51467', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 5, 'Top-notch service.', NOW()),
(gen_random_uuid(), '88971013-c785-428f-a3be-3277af738e16', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 5, 'Highly recommended.', NOW()),
(gen_random_uuid(), 'c62a9052-8e6f-49ef-b97c-1e8b94afbe85', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 4, 'Clean and peaceful.', NOW()),
(gen_random_uuid(), '35821c13-b2f2-4bcd-b8cb-f338f7fba5f5', 'a1b2c3d4-e5f6-7890-abcd-1234567890aa', 5, 'Everything was perfect!', NOW());


