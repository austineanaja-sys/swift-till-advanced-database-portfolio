
-- SwiftTill POS Terminal Management
-- MIT 8103: Advanced Database Systems

CREATE TABLE terminals (
    terminal_id SERIAL PRIMARY KEY,
    terminal_serial VARCHAR(50) UNIQUE NOT NULL,
    agent_id INTEGER REFERENCES agents(agent_id),
    terminal_model VARCHAR(100),
    assigned_date DATE DEFAULT CURRENT_DATE,
    status VARCHAR(20) DEFAULT 'Assigned'
);
