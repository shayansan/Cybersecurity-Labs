Notes on Process Monitoring (ps and top)

These notes summarize practical observations made while using ps and top to inspect running processes on a Linux system.

The goal is to build understanding through observation rather than memorizing command output.

---

Observation 1: ps Provides a Snapshot

The ps command shows the state of processes at a single moment in time.

Running ps repeatedly may produce different results, especially on active systems.
This makes ps useful for inspection, but not suitable for continuous monitoring.

---

Observation 2: top Shows Real-Time Behavior

Unlike ps, top continuously updates process information.

It helps identify:
- processes that gradually increase resource usage
- sudden CPU spikes
- memory pressure over time

Watching how values change often reveals more than static output.

---

Observation 3: High Resource Usage Is Context-Dependent

A process using high CPU or memory is not automatically a problem.

Some processes are expected to consume resources temporarily.
Understanding normal system behavior is essential before assuming malicious activity.

---

Observation 4: Process Names Can Be Misleading

Process names do not always clearly describe what the process is doing.

Further investigation may be required to:
- identify the parent process
- inspect execution paths
- correlate with logs or system activity

---

Observation 5: Monitoring Is an Entry Point

Process monitoring provides visibility, not conclusions.

It often serves as the first step before:
- log analysis
- file inspection
- deeper system investigation

---

Takeaway

Effective process monitoring combines visibility, context, and follow-up analysis.
Tools like ps and top are simple, but powerful when used thoughtfully.
