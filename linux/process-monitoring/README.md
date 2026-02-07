Process Monitoring

This directory documents basic process monitoring techniques in Linux using command-line tools.

The focus is on observing system behavior, understanding resource usage, and building intuition for identifying abnormal activity.

---

Why Process Monitoring Matters

Every running program on a Linux system exists as a process.
Monitoring processes helps to:

- understand what is running on the system
- identify resource-intensive applications
- notice unexpected or long-running processes

This is a foundational skill for system administration and security analysis.

---

Tools Used

The following tools are used throughout this directory:

- ps
- top

They provide visibility into active processes and system resource usage.

---

Core Commands

List all running processes:
ps aux

View processes for a specific user:
ps -u username

Monitor processes in real time:
top

These commands offer both snapshot-based and live views of system activity.

---

Security Context

From a security perspective, process monitoring can reveal:

- unknown or suspicious processes
- abnormal CPU or memory usage
- processes that should not be running continuously

Initial detection often starts with visibility before deeper investigation.

---

Files in This Directory

- ps_top_notes.md  
  Practical observations and notes from hands-on monitoring

- process_examples.sh  
  Simple command examples demonstrating common process inspection tasks
