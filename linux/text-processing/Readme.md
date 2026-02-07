Process Monitoring

This directory focuses on monitoring running processes in a Linux system using basic command-line tools.

Process monitoring is essential for understanding system behavior, performance issues, and abnormal activity.

---

Why Process Monitoring Matters

Every running program on a Linux system is a process.
Observing processes helps to:

- identify resource-heavy applications
- detect unexpected or suspicious activity
- understand how the system behaves under load

---

Tools Covered

The following commands are used in this section:

- ps
- top

These tools provide visibility into active processes and resource usage.

---

Using ps

The ps command shows a snapshot of currently running processes.

Example:
ps aux

This output includes:
- process owner
- process ID (PID)
- CPU and memory usage
- command used to start the process

---

Using top

The top command provides a real-time view of system activity.

Example:
top

It allows continuous monitoring of:
- CPU usage
- memory consumption
- process priority and runtime

This is useful for spotting abnormal behavior as it happens.

---

Security Context

From a security perspective, process monitoring can help detect:

- unknown or unexpected processes
- processes consuming unusual resources
- long-running tasks that should not exist

Basic visibility is often the first step before deeper investigation.

---

Files in This Directory

- ps_top_notes.md  
  Observations and notes from hands-on process monitoring
