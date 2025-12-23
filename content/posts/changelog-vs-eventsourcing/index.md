+++
title = "Comparing Change Logs and Event Sourcing: Choosing the Right Approach for Your System"
date = 2024-10-01
tags = ["architecture", "event-sourcing", "audit-log", "system-design"]
categories = ["Architecture"]
description = "A practical comparison of change logs and event sourcing patterns, with guidance on choosing the right approach based on your system's needs."

[cover]
  image = "header.webp"
  relative = true
+++

**Introduction**

In the ever-evolving landscape of software development, tracking changes to data is a fundamental requirement. Whether for auditing, debugging, compliance, or analytics, maintaining a history of changes enhances transparency and accountability within a system. Two prevalent approaches to capturing these changes are **storing a change log** and **using event sourcing**. While they share common goals, they differ significantly in implementation and suitability depending on the system's needs.

This blog post delves into the similarities and differences between change logs and event sourcing, assesses their applicability through practical examples, and provides guidance on choosing the right approach for your system.

---

## Understanding Change Logs and Event Sourcing

### What is a Change Log?

A **change log** is a supplementary record that tracks modifications made to data entities within a system. It typically records the *end result* of state changes, capturing snapshots or deltas after the fact. The primary focus remains on the current state of the data, with the change log serving as an append-only history for reference. Change logs are often used in CRUD (Create, Read, Update, Delete) systems to support auditing and compliance requirements without altering the core architecture.

### What is Event Sourcing?

**Event sourcing** is an architectural pattern where all changes to application state are stored as a sequence of events. Instead of persisting just the end state, every state-changing action is recorded as an immutable event that represents a meaningful action within the domain (e.g., "OrderPlaced", "ProductShipped"). The current state of an entity is not stored directly but is derived by replaying these events from the beginning. Event sourcing is often used in conjunction with CQRS (Command Query Responsibility Segregation) and domain-driven design.

---

## Similarities Between Change Logs and Event Sourcing

1. **Historical Record Keeping**: Both methods aim to maintain a history of changes, providing a chronological record of how data has evolved over time.

2. **Audit Trails**: They offer audit trails that help in tracking who made changes, what changes were made, and when they occurred, which is crucial for compliance and debugging.

3. **State Reconstruction**: Both approaches can facilitate reconstructing an entity's state at a given point in time, although the mechanisms differ.

4. **Support for Temporal Queries**: They allow querying the state of data as of a particular timestamp, enabling historical analysis and reporting.

---

## Key Differences Between Change Logs and Event Sourcing

### 1. Primary Data Storage vs. Supplementary Log

- **Change Log**: The system updates the entity state directly, and the change log acts as a supplementary record. The primary data is mutable, focusing on the current state.

- **Event Sourcing**: Events are the primary source of truth. The system's state is derived by replaying the sequence of immutable events, making the events themselves central to the architecture.

### 2. Granularity and Intent of Data

- **Change Log**: Records changes at the data level (e.g., field X changed from A to B) without necessarily capturing the business intent behind the change.

- **Event Sourcing**: Captures business-level events that signify meaningful actions within the domain, preserving the *why* behind each change.

### 3. System Design Paradigm

- **Change Log**: Fits within traditional CRUD systems and doesn't fundamentally alter the system's architecture.

- **Event Sourcing**: Requires a shift in design, emphasizing immutability and modeling state changes as a series of events.

### 4. State Reconstruction Mechanism

- **Change Log**: Reconstruction can be complex and inefficient, as it may involve reversing changes or applying deltas in reverse order.

- **Event Sourcing**: Designed for efficient state reconstruction by replaying events in order, enabling deterministic rebuilding of state.

### 5. Immutability and Consistency

- **Change Log**: The change log is often append-only, but the primary data is mutable, which can lead to inconsistencies if not managed carefully.

- **Event Sourcing**: Events are immutable, providing strong consistency guarantees in state reconstruction.

### 6. Complexity and Overhead

- **Change Log**: Simpler to implement, requiring additional tables or logging mechanisms without altering core operations.

- **Event Sourcing**: More complex, necessitating careful design to handle event versioning, ordering, and migration challenges.

### 7. Scalability and Performance

- **Change Log**: Generally doesn't impact core operations; the primary focus remains on current state operations.

- **Event Sourcing**: Can introduce performance overhead, especially when rebuilding state from numerous events; techniques like snapshotting are used to mitigate this.

### 8. Error Handling and Compensation

- **Change Log**: Errors are handled at the data level, and compensating actions may be less straightforward.

- **Event Sourcing**: Supports sophisticated error handling through compensating events, preserving history while correcting mistakes.

### 9. Use Cases and Applicability

- **Change Log**: Suitable for systems where auditing is necessary, but the complexity of event sourcing isn't justified.

- **Event Sourcing**: Ideal for complex domains where understanding the sequence of business events is critical, such as financial systems requiring precise transaction histories.

---

## Practical Examples and Assessments

### When the Process Matters: Event Sourcing in Compute-Intensive Systems

Consider a **Git-like version control system**, where the integrity and consistency of data are paramount. In such a system, computing a hash of the repository state is essential for verifying the correctness and ensuring that the history has not been tampered with.

- **Why Event Sourcing is Preferred**:
  - **Consistent Replay**: Event sourcing ensures that each commit (event) is processed in a specific order, allowing the system to accurately reconstruct the repository by replaying events.
  - **Immutable History**: Since events are immutable, the system maintains a reliable audit trail of all changes.
  - **Critical Computations**: The process of computing hashes is compute-intensive and must be consistently applied to verify the correctness of the repository state.

### When the End Result Suffices: Change Logs in I/O-Heavy Systems

Now, consider a **customer loyalty program**, where the primary operation involves adjusting a customer's score based on their activities.

- **Why a Change Log Suffices**:
  - **Focus on Final State**: The primary goal is to reflect the updated score, and the process leading to that change is less critical.
  - **Compute-Light Operations**: Adjusting scores is a straightforward operation that doesn't require complex computations or replaying of events.
  - **Efficiency**: Maintaining a change log allows for simple recording of each adjustment without the overhead of managing a sequence of events.

### Assessment

The choice between storing a change log and using event sourcing hinges on whether the emphasis is on the *process* of state changes or the *end result*.

- **Event Sourcing is Appropriate When**:
  - The process of applying events is critical to the system's correctness.
  - Operations are compute-intensive and require consistent application.
  - There is a need for a detailed history to understand the *why* behind changes.
  - The domain is complex, and replaying events is necessary for state reconstruction.

- **Change Logs are Appropriate When**:
  - The primary concern is recording the end result of state changes.
  - Operations are compute-light, and the overhead of event sourcing isn't justified.
  - Simplicity and efficiency are prioritized over the ability to replay events.
  - The system doesn't require a detailed reconstruction of state through events.

---

## Factors to Consider When Choosing an Approach

1. **Complexity of Business Logic**: Systems with complex business rules may benefit from event sourcing to capture the intent behind each change.

2. **Performance Requirements**: If performance is a concern and operations are simple, a change log may be more efficient.

3. **Need for Auditing and Compliance**: Both approaches support auditing, but event sourcing provides a more detailed history.

4. **Team Expertise**: Implementing event sourcing requires familiarity with event-driven architectures and may involve a steeper learning curve.

5. **Future Scalability**: Consider how the system might evolve; event sourcing can offer flexibility but at the cost of increased complexity.

---

## Conclusion

Both storing a change log and using event sourcing are valuable techniques for tracking changes within a software system. They share the common goal of preserving history but differ significantly in their approach and implications for system design.

- **Change Logs** are ideal for systems where the primary need is to record the end result of changes. They offer simplicity and efficiency, making them suitable for applications with straightforward operations.

- **Event Sourcing** is suited to systems where the process of state changes is critical. It provides a robust framework for handling complex business logic, ensuring consistency through immutable events.

**Choosing the right approach depends on your system's specific needs**. Evaluate the importance of the change process versus the end result, the computational requirements, performance considerations, and your team's expertise. By carefully assessing these factors, you can select the approach that best aligns with your project's goals and constraints.

---

**References**

- Evans, E. (2003). *Domain-Driven Design: Tackling Complexity in the Heart of Software*. Addison-Wesley.
- Fowler, M. (2005). *Event Sourcing*. martinfowler.com.
- Newman, S. (2015). *Building Microservices*. O'Reilly Media.