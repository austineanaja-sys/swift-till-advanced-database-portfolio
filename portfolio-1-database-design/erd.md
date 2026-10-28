Entity Relationship Diagram (ERD)

 Project
SwiftTill POS Agent Management System

**Course:** MIT 8103 – Advanced Database Systems

1. Entities

### Agents
Stores information about POS agents.

- `agent_id` – Primary key
- `first_name` – Agent's first name
- `last_name` – Agent's last name
- `phone` – Agent's phone number
- `email` – Agent's email address
- `location` – Agent's location
- `registration_date` – Date the agent registered
- `status` – Agent account status

 Terminals
Stores information about POS terminals assigned to agents.

- `terminal_id` – Primary key
- `terminal_serial` – Unique terminal serial number
- `agent_id` – Foreign key referencing `agents.agent_id`
- `terminal_model` – POS terminal model
- `assigned_date` – Date the terminal was assigned
- `status` – Terminal status

2. Entity Relationship

**Agents (1) → (Many) Terminals**

One agent can have multiple POS terminals, while each terminal can be associated with one agent.

The relationship is maintained through the `agent_id` foreign key in the `terminals` table.

3. ERD Diagram

```text
+-----------------------+       +------------------------+
|        AGENTS         |       |       TERMINALS        |
+-----------------------+       +------------------------+
| PK agent_id           |  1    | PK terminal_id         |
| first_name            |------<| FK agent_id            |
| last_name             |       | terminal_serial (UNQ)  |
| phone (UNQ)           |       | terminal_model         |
| email (UNQ)           |       | assigned_date          |
| location              |       | status                 |
| registration_date     |       +------------------------+
| status                |
+-----------------------+
```

4. Referential Integrity

The foreign key ensures that a terminal can only reference an existing agent. This helps maintain consistency between the two tables.

5. Conclusion

The ERD illustrates the relationship between agents and their assigned POS terminals. Separating these entities reduces data duplication and supports effective database management.
