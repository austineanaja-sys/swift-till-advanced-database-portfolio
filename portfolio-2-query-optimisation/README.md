# Portfolio 2: Query Optimisation

## Objective
This portfolio examines SQL query performance in the SwiftTill POS Agent database using execution plans, indexing, and query analysis.

## SQL Queries
The queries demonstrate how to:
- Retrieve agent records using email addresses.
- Join agents with their assigned POS terminals.
- Identify terminals by serial number and model.
- Check terminal status.
- Inspect query execution plans using `EXPLAIN` and `EXPLAIN ANALYZE`.

## Indexing and Performance Analysis
An index was created on the `terminal_model` column using:

```sql
CREATE INDEX idx_terminals_model
ON terminals (terminal_model);
```

The execution plan initially showed a **Sequential Scan** when searching for terminals by model. After creating the index, the query plan showed an **Index Scan** when sequential scanning was disabled for the test.

This demonstrates how an index can provide an alternative way to retrieve matching records. The best execution method depends on table size, data distribution, and the database query planner.

## Evidence
Screenshots showing query results, execution plans, and index verification are available in the repository's `evidence` folder.

## Conclusion
This portfolio demonstrates the use of SQL queries, execution plans, and indexing to investigate database performance in a POS agent management system.
