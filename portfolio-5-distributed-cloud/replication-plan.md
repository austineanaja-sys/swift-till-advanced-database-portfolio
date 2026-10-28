# SwiftTill Database Replication Plan

## 1. Objective

This plan describes how SwiftTill can maintain copies of important database records across multiple servers to improve availability and support recovery.

## 2. Data to Replicate

The following data should be considered for replication:

- **Agents:** Agent details, contact information, and account status.
- **Terminals:** POS serial numbers, models, assignments, and status.
- **Transactions:** Transaction references, amounts, timestamps, and outcomes.
- **Settlements:** Settlement references, amounts, and payment status.
- **Support tickets:** Reported issues and their resolution status.

## 3. Proposed Replication Strategy

A primary PostgreSQL server will process authorised database changes. A secondary server will maintain a replica of the primary database.

PostgreSQL streaming replication could be used to transfer changes from the primary server to the replica.

The replica can support read-only reporting and help restore service if the primary server fails. Any failover process should be properly configured and tested before being relied upon.

## 4. Consistency and Transaction Integrity

SwiftTill must protect the accuracy of financial records.

- Use database transactions for related financial updates.
- Enforce unique transaction references to help prevent duplicate records.
- Validate transaction and settlement statuses.
- Monitor replication delays.
- Verify records after recovery or failover.

## 5. Backup and Recovery

The system should include:

1. Scheduled database backups.
2. Secure storage of backup copies.
3. Regular recovery tests.
4. Monitoring for replication failures.
5. Documented steps for restoring service.

Replication alone is not a replacement for backups because unwanted changes or deletions may also be replicated.

## 6. Monitoring

Administrators should monitor server availability, replication lag, storage capacity, backup completion, and database errors.

Alerts should be raised when replication stops or the secondary server falls behind beyond an acceptable threshold.

## 7. Conclusion

A primary database with a secondary replica and tested backups could improve SwiftTill's resilience. The configuration should be tested to confirm that records remain consistent and that recovery procedures work as expected.

**Implementation status:** This is a proposed plan. Replication has not yet been configured or tested.
