INSERT INTO cities ("name")
VALUES ('Berlin'), ('New York'), ('London');

INSERT INTO addresses (street, house_number, city_id)
VALUES 
('Test street', '8A', 3),
('Some street', '10', 1),
('Test street', '1', 3),
('My street', '101', 2);

INSERT INTO users (first_name, last_name, email, address_id)
VALUES
('John', 'Doe', 'john@test.com', 2),
('Jane', 'Smith', 'jane@test.com', 4),
('Julie', 'Brown', 'julie@test.com', 3);