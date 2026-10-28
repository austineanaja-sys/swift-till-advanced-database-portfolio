
# Portfolio 4: NoSQL Data Modelling

## Objective
This portfolio demonstrates how a NoSQL database can store and manage SwiftTill POS agent information using a document-based data model.

## Data Model
The proposed model uses MongoDB-style documents to store agent details, assigned POS terminals, and operational information.

## Sample Document
```json
{
  "agent_id": 3,
  "name": "Chinedu Okafor",
  "email": "chinedu.okafor@example.com",
  "location": "Lagos",
  "status": "Active",
  "terminals": [
    {
      "terminal_serial": "ST-POS-TEST-002",
      "terminal_model": "PAX A920",
      "status": "Assigned"
    }
  ]
}
```

## Advantages
- Flexible document structure.
- Related agent and terminal information can be stored together.
- Supports queries on agent details and terminal status.

## Considerations
- Embedded terminal details can become duplicated if maintained in multiple documents.
- Validation rules should be used to maintain data quality.
- Indexes can improve query performance.

## File
- `nosql-model.md` — NoSQL data model and sample document for the SwiftTill case study.
