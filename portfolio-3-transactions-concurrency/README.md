# Portfolio 3: Transactions and Concurrency

## Objective
This portfolio demonstrates transaction management and concurrency concepts using the SwiftTill POS Agent Management System.

## Transaction Management
The SQL examples demonstrate:

- **BEGIN:** Starts a transaction.
- **COMMIT:** Saves changes made during a transaction.
- **ROLLBACK:** Reverses uncommitted changes.
- **UPDATE:** Changes terminal records.
- **SELECT:** Verifies terminal status and counts assigned terminals.

## Concurrency
Transaction boundaries help maintain database consistency. Further testing can explore concurrent updates, transaction isolation levels, and locking behaviour.

## Files
- `transaction-examples.sql` — SQL examples for transaction management and verification.

## Expected Outcome
The portfolio demonstrates how transactions can help protect data integrity when managing POS terminal records.
