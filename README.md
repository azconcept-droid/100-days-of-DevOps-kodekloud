# 100 Days of DevOps — KodeKloud

A hands-on learning repository documenting my journey through the [KodeKloud](https://kodekloud.com) 100 Days of DevOps challenge. Each day covers a real-world scenario-based lab exercise, progressing from Linux fundamentals through Git, Docker, and Kubernetes.

**Status:** Day 62 of 100 — currently in the Kubernetes phase.

---

## Progression

| Phase | Days | Topics |
|-------|------|--------|
| **Linux & System Administration** | 1–20 | User management, SELinux, cron jobs, SSH, Ansible, MariaDB, Bash scripting, Tomcat, HTTPD, iptables, Nginx, PostgreSQL, LAMP stack, PHP-FPM |
| **Git & Version Control** | 21–34 | Bare repos, clone, fork, branches, remotes, revert, cherry-pick, pull requests, reset, stash, rebase, merge conflicts, git hooks |
| **Docker & Containerization** | 35–47 | Docker installation, containers, images, commit, Dockerfiles, custom networks, port mapping, docker-compose, multi-container apps |
| **Kubernetes & Orchestration** | 48–62 | Pods, deployments, resource limits, rolling updates/rollbacks, ConfigMaps, shared volumes, sidecar pattern, services, monitoring (Grafana), PersistentVolumes, init containers, Secrets |

---

## Technologies & Tools

- **Linux:** Bash, cron, iptables, SELinux, systemd
- **Web Servers:** Apache HTTPD, Nginx, Tomcat, PHP-FPM
- **Databases:** MariaDB/MySQL, PostgreSQL, Redis
- **Version Control:** Git, Gitea
- **Configuration Management:** Ansible
- **Containerization:** Docker, docker-compose
- **Orchestration:** Kubernetes (pods, deployments, services, PVs/PVCs, ConfigMaps, Secrets)
- **Monitoring:** Grafana

---

## Repository Structure

```
.
├── day-1/                  # Each day is self-contained
│   ├── README.md           #   Task description & scenario
│   ├── command.sh          #   Commands used to solve the task
│   └── *.conf / *.sql      #   Supporting config files
├── day-2/
│   └── ...
├── ...
├── day-62/
├── LICENSE                 # MIT License
└── README.md
```

Every `day-N/` directory includes a README describing the KodeKloud scenario (typically set in a fictional datacenter environment) along with the scripts, configs, and manifests used to complete it.

---

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/100-days-of-DevOps-kodekloud.git
   ```
2. Browse any `day-N/` directory to see the task and solution.
3. Each day's README explains the scenario independently — no dependencies between days.

---

## License

MIT License — see [LICENSE](LICENSE) for details.

---

## Author

**Yahaya Azeez Adebayo**
