--- Ranme the table to  old table 
ALTER TABLE booking RENAME TO booking_old; 
--- CREATEe a new partinioned table 

CREATE TABLE booking (
    booking_id UUID PRIMARY KEY NOT NULL, 
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (property_id) REFERENCES property(property_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
) PARTITION BY (created_at)

--- Create the destination of the data in  small chunk database 
CREATE TABLE booking_confirmed PARTITION OF booking FOR VALUES IN ('confirmed');
CREATE TABLE booking_pending PARTITION OF booking FOR VALUES IN ('pending');
CREATE TABLE booking_canceled PARTITION OF booking FOR VALUES IN ('canceled');


-- Then run the insert statement to get the data from the 
INSERT INTO booking (
    booking_id,  
    property_id,
    user_id ,
    start_date ,
    end_date ,
    total_price ,
    status ,
    created_at 

) SELECT 
    booking_id,  
    property_id,
    user_id ,
    start_date ,
    end_date ,
    total_price ,
    status ,
    created_at
    FROM booking_old 