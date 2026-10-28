
Relationships and Normalisation

Project
SwiftTill POS Agent Management System  
MIT 8103: Advanced Database Systems

Table Relationships

The database contains two related tables:

- **agents:** Stores POS agent information.
- **terminals:** Stores POS terminal information.

The `agent_id` column is the primary key in the `agents` table and a foreign key in the `terminals` table.

One agent can be associated with multiple terminals. Each terminal can reference one agent. The foreign key helps maintain referential integrity.

Normalisation

First Normal Form (1NF)
Each column stores a single value, and each table has a primary key. Agent and terminal details are stored in separate columns.

Second Normal Form (2NF)
The tables use single-column primary keys. Non-key attributes depend on their table's primary key.

Third Normal Form (3NF)
Agent details are stored in the `agents` table, while terminal details are stored in the `terminals` table. This reduces unnecessary duplication of agent information.

Conclusion

Separating agents and terminals creates a clearer relational structure and supports consistent data management.
