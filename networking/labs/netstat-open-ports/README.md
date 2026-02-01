Title
Identifying open ports and services using netstat

Goal
To identify listening ports on the system and understand which services are associated with them.

Tools
- netstat
- Linux terminal

Steps
1. Ran netstat -tuln to list listening TCP and UDP ports.
2. Ran sudo netstat -tulnp to identify services and process IDs.
3. Analyzed common ports and their exposure level.

Result
- Observed multiple listening ports on the local system.
- Identified services running on localhost:
  - TCP 631 (CUPS printing service)
  - TCP 5432 (PostgreSQL database)
  - TCP/UDP 53 (systemd-resolved DNS)
  - UDP 5353 (Avahi mDNS service)
- Most services were bound to localhost (127.0.0.1), reducing external exposure.

What I learned
- Services listen on specific ports to provide functionality.
- Binding services to localhost limits attack surface.
- Identifying open ports is a key step in system security assessment.
- netstat helps map ports to running processes.
