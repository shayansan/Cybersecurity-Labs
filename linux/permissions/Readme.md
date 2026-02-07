Permissions and Ownership

This directory covers Linux file permissions and ownership concepts, with practical examples using chmod and chown.

Understanding permissions is essential for system security, as misconfigured access rights are a common cause of privilege abuse and data exposure.

---

Concept Overview

In Linux, every file and directory has:
- an owner
- a group
- permission rules for owner, group, and others

Permissions define who can read, write, or execute a file.

r = read
w = write
x = execute

---

Permission Model

Permissions are represented in two main forms:

Symbolic:
- rwx
- rw-
- r--

Numeric:
- 7 = rwx
- 6 = rw-
- 5 = r-x
- 4 = r--

Example:
chmod 600 file.txt
Only the owner can read and write the file.

its base and important rule is that x= 1 , r = 4 , w= 2 in permission numbers.

---

Ownership

Each file belongs to a user and a group.

Changing ownership:
chown user file.txt
chown user:group file.txt

Ownership directly affects how permission rules are applied.

---

Security Relevance

Incorrect permissions can:
- expose sensitive files
- allow unauthorized modification
- enable privilege escalation

Restricting access is a basic but critical defensive control in Linux systems.

---

Examples

Practical command examples are available in:
permission_examples.sh

Additional notes and observations are documented in:
notes.md

