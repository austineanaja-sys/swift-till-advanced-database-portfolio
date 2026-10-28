-- SwiftTill POS Agent Management System
-- MIT 8103: Advanced Database Systems
-- Portfolio 2: Query Processing and Optimisation

-- Query 1: Retrieve all registered agents
SELECT 
FROM agents
ORDER BY agent_id;

-- Query 2: Find an agent using their email
SELECT agent_id, first_name, last_name, email, status
FROM agents
WHERE email = 'chinedu.okafor@example.com';

-- Query 3: Retrieve agents and their assigned POS terminals
SELECT
    a.agent_id,
    a.first_name,
    a.last_name,
    t.terminal_serial,
    t.terminal_model,
    t.status AS terminal_status
FROM agents a
JOIN terminals t
    ON a.agent_id = t.agent_id
ORDER BY a.agent_id;

-- Query 4: Find terminals that are faulty or lost
SELECT terminal_id, terminal_serial, terminal_model, status
FROM terminals
WHERE status IN ('Faulty', 'Lost');
-- Query 5: Check the execution plan before indexing
EXPLAIN ANALYZE
SELECT *
FROM terminals
WHERE terminal_model = 'PAX A920';

-- Query 6: Create an index on terminal_model
CREATE INDEX IF NOT EXISTS idx_terminals_model
ON terminals (terminal_model);

-- Query 7: Check the execution plan after indexing
EXPLAIN ANALYZE
SELECT *
FROM terminals
WHERE terminal_model = 'PAX A920';

-- Query 8: Verify the indexes on terminals
SELECT indexname, indexdef
FROM pg_indexes
WHERE tablename = 'terminals';
