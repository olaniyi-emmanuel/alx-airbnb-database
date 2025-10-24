users [color: yellow, icon: user ]{
  user_id UUID pk indexed 
  first_name varchar NOT NULL
  last_name varchar NOT NULL 
  email varchar NOT NULL 
  password_hash NOT NULL 
  phone_number NOT NULL 
  role ENUM(guest, host, admin)
  created_at timestamp 
}

property [color: green, icon: home]{
  property_id UUID NOT NULL indexed
  host_id UUID fk 
  name VARCHAR NOT NULL
  description TEXT NOT NULL
  location VARCHAR NOT NULL
  pricepernight DECIMAL NOT NULL
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

}

booking [color: orange, icon:agent] {
  booking_id pk UUID Indexed
  property_id fk references Property(property_id)
  user_id fk references User(user_id)
  start_date DATE NOT NULL 
  end_date DATE NOT NULL 
  total_price DECIMAL NOT NULL
  stats: ENUM (pending, confirmed, canceled) NOT NULL
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
}

payment [color: blue, icon: money]{
  payment_id pk UUID Indexed
booking_id Foreign Key, references Booking(booking_id)
amount DECIMAL, NOT NULL
payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
payment_method ENUM (credit_card, paypal, stripe), NOT NULL
}

review[color: orange, icon: aws-route-53-resolver-dns-firewall]{
  review_id Primary Key, UUID, Indexed
  property_id Foreign Key, references Property(property_id)
  user_id Foreign Key, references User(user_id)
  rating INT  NOT NULL
  comment TEXT NOT NULL
  created_at: TIMESTAMP DEFAULT CURRENT_TIMESTAMP
}
message [color: green, icon : message] {
  message_id Primary Key UUID Indexed
  sender_id Foreign Key references User(user_id)
  recipient_id Foreign Key references User(user_id)
  message_body TEXT NOT NULL
  sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
}
users.user_id < property.host_id
booking.property_id > property.property_id
booking.booking_id > users.user_id
payment.booking_id  - booking.booking_id
message.sender_id > users.user_id
message.recipient_id - users.user_id
review.property_id > property.property_id
review.user_id <> users.user_id
 