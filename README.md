# 🖥️ Homelab & Infrastructure

> *“Code that works, doesn't get touched — but systems that scale need structure.”*

Willkommen in meinem persönlichen **Homelab**-Repository! Hier bündle ich meine Setups, Docker-Konfigurationen und Automatisierungsskripte für Server-Infrastrukturen, Netzwerke und Backend-Dienste. 

Das Ziel dieses Repos ist es, saubere, wiederverwendbare und praxisnahe Vorlagen zu schaffen, die zeigen, wie moderne und schlanke Sysadmin-Arbeit aussieht.

---

## 📂 Struktur des Repositories

Das Repository ist modular aufgebaut, um Dienste sauber voneinander zu trennen:

```text
Homelab/
│
├── docker/                  # Docker-Compose-Vorlagen & Umgebungen
│   ├── compose/             # Einzelne Service-Stacks (Proxy, Monitoring, etc.)
│   └── .env.example         # Vorlage für Umgebungsvariablen
│
├── scripts/                 # Bash- & Automatisierungs-Skripte (Backups, Health-Checks)
│   └── ...
│
└── docs/                    # Dokumentation und Architektur-Notizen
