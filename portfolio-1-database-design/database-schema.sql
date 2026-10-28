
-- SwiftTill POS Agent Management System
-- MIT 8103: Advanced Database Systems
-- Portfolio 1: Database Schema

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

CREATE TABLE terminals (
    terminal_id SERIAL PRIMARY KEY,
    terminal_serial VARCHAR(50) UNIQUE NOT NULL,
    agent_id INTEGER REFERENCES agents(agent_id),
    terminal_model VARCHAR(100),
    assigned_date DATE DEFAULT CURRENT_DATE,
    status VARCHAR(20) DEFAULT 'Assigned'
);
