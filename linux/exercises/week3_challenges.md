Linux Practice Challenges

This document records a set of practical Linux exercises completed to strengthen core system skills.

Each challenge includes the objective, commands used, and key takeaways.

---

Challenge 1: Restrict File Access

Objective:
Create a file that only the owner can read and write.

Commands used:
touch secret.txt
chmod 600 secret.txt

Result:
The file became inaccessible to group and other users.

Takeaway:
Explicit permission control is a simple but effective security measure.

---

Challenge 2: Inspect File Permissions and Ownership

Objective:
Verify file permissions and ownership before modifying access rules.

Commands used:
ls -l secret.txt

Result:
Permissions and ownership information were visible in a single command.

Takeaway:
Inspection should always come before modification.

---

Challenge 3: Filter Log Entries

Objective:
Extract failed authentication attempts from a log file.

Commands used:
grep "Failed" auth.log

Result:
Only relevant authentication failure entries were displayed.

Takeaway:
Filtering reduces noise and improves focus during analysis.

---

Challenge 4: Monitor Running Processes

Objective:
Identify processes consuming the most CPU resources.

Commands used:
ps aux --sort=-%cpu | head

Result:
High CPU usage processes were quickly identified.

Takeaway:
Sorting and filtering are essential when inspecting large outputs.

---

Challenge 5: Observe System Activity in Real Time

Objective:
Monitor system behavior as processes change.

Commands used:
top

Result:
Live updates provided better insight than static command output.

Takeaway:
Real-time monitoring reveals patterns that snapshots cannot.
