-- SwiftTill POS Agent Management System
-- MIT 8103: Advanced Database Systems
-- Portfolio 3: Transactions and Concurrency

-- Transaction 1: Assign a terminal to an agent
BEGIN;

UPDATE terminals
SET status = 'Assigned',
    assigned_date = CURRENT_DATE
WHERE terminal_serial = 'ST-POS-TEST-002';

COMMIT;


-- Transaction 2: Demonstrate ROLLBACK
BEGIN;

UPDATE terminals
SET status = 'Faulty'
WHERE terminal_serial = 'ST-POS-TEST-003';

ROLLBACK;


-- Transaction 3: Verify terminal status
SELECT terminal_id,
       terminal_serial,
       terminal_model,
       status
FROM terminals
WHERE terminal_serial IN (
    'ST-POS-TEST-002',
    'ST-POS-TEST-003'
);


-- Transaction 4: Check assigned terminals
SELECT agent_id,
       COUNT(*) AS total_terminals
FROM terminals
WHERE status = 'Assigned'
GROUP BY agent_id
ORDER BY agent_id;
