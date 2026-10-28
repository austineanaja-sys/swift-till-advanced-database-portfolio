SwiftTill POS Agent Management System

1. Case Study Overview

SwiftTill is used as a case study for designing a database to manage Point of Sale (POS) agents and their terminals. The proposed database supports the organisation of agent information, terminal assignments and account statuses.

This project is completed for MIT 8103: Advanced Database Systems.

2. Problem Statement

Managing POS agents and their terminals requires accurate records. Poorly organised data can lead to duplicated information, incorrect terminal assignments and difficulties tracking agent and terminal statuses.

A relational database provides a structured way to store and retrieve this information while maintaining relationships between records.

3. Project Objectives

The objectives are to:

- Design a relational database for POS agent and terminal management.
- Identify entities, attributes, primary keys and foreign keys.
- Define constraints to support data accuracy and referential integrity.
- Explain database normalisation and relationships.
- Implement SQL tables and test them using sample records.

 4. Scope

The current database design covers two main entities:

**Agents:** Stores agent identification, names, contact information, location, registration date and account status.

**Terminals:** Stores terminal identification, serial number, model, assignment date, status and the agent associated with each terminal.

The design is a coursework prototype using fictional sample records, not a production system.

5. Business Rules

1. Each agent has a unique agent ID.
2. Agent phone numbers and email addresses must be unique when provided.
3. Each terminal has a unique terminal ID and terminal serial number.
4. A terminal's agent ID references an existing agent.
5. One agent can be associated with multiple terminals.
6. Agent and terminal statuses are recorded to support management and tracking.

6. Expected Outcome

The database design provides a foundation for storing agent and terminal information consistently. It demonstrates relational modelling, key constraints, relationships and normalisation using SQL.

7. Testing

The SQL scripts are tested using an online PostgreSQL playground. Sample records are inserted and queried to check that the tables and their data behave as expected.
