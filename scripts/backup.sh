#!/bin/bash

# ==========================================
# OMLabs - Simple Homelab Backup Script
# ==========================================

# Konfiguration
BACKUP_DIR="/var/backups/homelab"
DATE=$(date +"%Y%m%d_%H%M%S")
TARGET_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

# Sicherstellen, dass das Backup-Verzeichnis existiert
mkdir -p "$BACKUP_DIR"

echo "[*] Starte Homelab-Backup am $(date)..."

# Beispiel: Sichern eines Ordners (z. B. Docker-Konfigurationen)
# Passe den Pfad an, wenn deine Konfigurationen woanders liegen (z.B. /opt/docker)
if [ -d "./docker" ]; then
    tar -czf "$TARGET_FILE" ./docker
    echo "[+] Backup erfolgreich erstellt: $TARGET_FILE"
else
    echo "[-] Warnung: ./docker Verzeichnis nicht gefunden, überspringe..."
fi

# Alte Backups aufräumen (älter als 7 Tage)
find "$BACKUP_DIR" -type f -name "*.tar.gz" -mtime +7 -exec rm {} \;
echo "[*] Alte Backups (> 7 Tage) bereinigt."
echo "[✓] Backup-Prozess abgeschlossen."
