
-- SwiftTill POS Agent Database
-- MIT 8103: Advanced Database Systems

CREATE TABLE agents (
    agent_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20) UNIQUE,
    email VARCHAR(100) UNIQUE,
    location VARCHAR(100),
    registration_date DATE DEFAULT CURRENT_DATE,
    status VARCHAR(20) DEFAULT 'Active'
);

INSERT INTO agents
    (first_name, last_name, phone, email, location, status)
VALUES
    ('Chinedu', 'Okafor', '08030000001', 'chinedu@example.com', 'Lagos', 'Active'),
    ('Amina', 'Yusuf', '08030000002', 'amina@example.com', 'Abuja', 'Active'),
    ('Tunde', 'Bakare', '08030000003', 'tunde@example.com', 'Ibadan', 'Inactive');

SELECT * FROM agents;
