
-- SwiftTill POS Agent Management System
-- MIT 8103: Advanced Database Systems
-- Portfolio 1: Database Schema

CREATE TABLE agents (
    agent_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    location VARCHAR(100) NOT NULL,
    registration_date DATE DEFAULT CURRENT_DATE,
    status VARCHAR(20) NOT NULL DEFAULT 'Active',
    CONSTRAINT chk_agent_status
        CHECK (status IN ('Active', 'Inactive', 'Suspended'))
);

CREATE TABLE terminals (
    terminal_id SERIAL PRIMARY KEY,
    terminal_serial VARCHAR(50) UNIQUE NOT NULL,
    agent_id INTEGER NOT NULL
        REFERENCES agents(agent_id),
    terminal_model VARCHAR(100) NOT NULL,
    assigned_date DATE DEFAULT CURRENT_DATE,
    status VARCHAR(20) NOT NULL DEFAULT 'Assigned',
    CONSTRAINT chk_terminal_status
        CHECK (status IN ('Assigned', 'Inactive', 'Faulty', 'Lost'))
);

