# Portfolio 5: Distributed and Cloud Database Exercise

## Objective
This portfolio examines how distributed database concepts can support the SwiftTill POS Agent Management System.

## Distributed Database Architecture
The proposed architecture supports POS agent records, terminal assignments, transaction records, settlements, and support activities across distributed database services.

## Replication
Database replication maintains copies of data across multiple database servers. This can improve data availability and support recovery if one server fails.

## Sharding
Sharding divides a large dataset across multiple servers. For SwiftTill, transaction records could be partitioned by region or time period to support scalability.

## Availability and Recovery
The system should use regular backups, monitoring, and a documented recovery procedure. Recovery testing helps confirm that data can be restored after a failure.

## Consistency
The system must maintain accurate agent, terminal, transaction, and settlement records. Financial transactions require particular care to prevent inconsistent balances and duplicate processing.

## Conclusion
Distributed database techniques can improve scalability, availability, and resilience. The appropriate design depends on transaction volume, cost, security, and operational requirements.

## Evidence
Supporting architecture, replication, and availability documents are provided in this folder.
