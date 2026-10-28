-- SwiftTill POS Agent Management System
-- Portfolio 3: Transactions, Isolation and Concurrency

-- 1. Set the transaction isolation level
BEGIN;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- Check the current terminal records
SELECT terminal_id, terminal_serial, status
FROM terminals
ORDER BY terminal_id;

COMMIT;


-- 2. Demonstrate concurrency control using row locking
-- FOR UPDATE locks the selected row against conflicting updates
BEGIN;

SELECT terminal_id, terminal_serial, status
FROM terminals
WHERE terminal_serial = 'ST-POS-TEST-002'
FOR UPDATE;

-- Update the terminal while the row is locked
UPDATE terminals
SET status = 'Assigned'
WHERE terminal_serial = 'ST-POS-TEST-002';

COMMIT;


-- 3. Verify the final terminal status
SELECT terminal_serial, status
FROM terminals
WHERE terminal_serial = 'ST-POS-TEST-002';
