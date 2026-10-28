# Portfolio 4: NoSQL and Advanced Data Models

## Objective
This portfolio demonstrates how a document-based database can store and manage SwiftTill POS agent information using a MongoDB-style data model.

## Data Model
The proposed model uses documents to store agent details, locations, status, and assigned POS terminals. Related information can be kept together in an array within an agent document.

## Sample Document
A sample agent document is provided in `nosql-model.md`. It includes the agent's ID, name, email, location, status, and assigned terminal details.

## Queries
The file `nosql-queries.js` contains eight MongoDB query examples for:

1. Finding active agents.
2. Finding an agent by email.
3. Finding agents located in Lagos.
4. Finding agents with a specific terminal model.
5. Finding agents with assigned terminals.
6. Counting active agents.
7. Finding agents with more than one terminal.
8. Selecting only agent names and locations.

## Advantages
- Flexible document structure.
- Related agent and terminal information can be stored together.
- Supports queries on agent details and terminal status.
- Can accommodate additional agent or terminal attributes as the system grows.

## Implementation Evidence
The model and query examples are documented in this portfolio. The queries still need to be executed in a MongoDB environment, with screenshots or output results added as evidence.

## Conclusion
A document-based model is a suitable option for exploring flexible agent and terminal records in the SwiftTill POS Agent Management System. The final choice should consider the application's data relationships, consistency requirements, and query patterns.
