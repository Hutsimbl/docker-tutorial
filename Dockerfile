# Die Instruction FROM wählt das Basis Image, das im folgenden erweitert wird
FROM ubuntu:22.04

# ENV definiert eine Umgebungsvariable, die nur im Container verfügbar ist
ENV PRINTTEXT="Hallo DIGIZ"

# WORKDIR setzt das Arbeitsverzeichnis für alle weiteren Befehle (ähnlich dem cd Befehl)
WORKDIR /code

# COPY kopiert eine Datei vom Host System in das Dateisystem des Containers. COPY <src> <dest>
COPY hello-world.sh hello-world.sh

# ENTRYPOINT definiert den Befehl der beim Starten des Containers ausgeführt wird.
# Wenn der auszuführende Befehl abgeschlossen ist stoppt der Container automatisch
ENTRYPOINT [ "/bin/bash", "hello-world.sh" ]
