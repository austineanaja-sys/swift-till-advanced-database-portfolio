# SwiftTill Availability and Recovery Plan

## 1. Objective

This plan describes how SwiftTill can maintain database availability and recover its data following server failures, network interruptions, or accidental data loss.

## 2. Potential Failure Scenarios

The system may experience:

- Primary database server failure.
- Network interruption between database servers.
- Database corruption or accidental deletion.
- Failed or delayed replication.
- Hardware or storage failure.
- Unauthorised changes to database records.

## 3. Availability Measures

The following measures are proposed:

1. Maintain a secondary database replica.
2. Monitor database server health and connectivity.
3. Configure alerts for database failures.
4. Restrict database access to authorised users.
5. Keep sufficient storage and monitor database performance.

## 4. Backup Strategy

SwiftTill should use scheduled database backups and store copies securely in a separate location.

Backup procedures should include:

- Regular full database backups.
- Additional backups or transaction-log archiving where appropriate.
- Restricted access to backup files.
- Verification that backups complete successfully.
- Periodic restoration tests.

Replication is not a substitute for backups because accidental deletions and unwanted updates may also be replicated.

## 5. Recovery Procedure

If the primary database becomes unavailable:

1. Identify the cause of the failure.
2. Check the condition of the secondary replica.
3. Determine whether the replica contains the latest required records.
4. Promote the replica only if the configured recovery procedure permits it.
5. Confirm database connectivity and application functionality.
6. Verify transaction and settlement records.
7. Record the incident and investigate its cause.

If the database cannot be recovered from a replica, restore a verified backup and apply available transaction logs when supported.

## 6. Data Integrity Checks

After recovery, administrators should verify:

- Agent and terminal records.
- Transaction references and amounts.
- Settlement records and statuses.
- Foreign-key relationships.
- Duplicate or missing transactions.
- Database application connectivity.

Financial records should be reconciled before normal operations fully resume.

## 7. Recovery Objectives

SwiftTill should define two targets:

- **Recovery Time Objective (RTO):** The maximum acceptable time to restore service.
- **Recovery Point Objective (RPO):** The maximum acceptable amount of recent data loss, measured in time.

The actual targets should be agreed upon based on business requirements and tested recovery capabilities.

## 8. Conclusion

A combination of database replication, secure backups, monitoring, and tested recovery procedures can improve SwiftTill's resilience and reduce service disruption.

**Implementation status:** This is a proposed recovery plan. No recovery targets or procedures have been tested in a live environment.
