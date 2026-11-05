# Kurswoche zum Anfassen auf Killercoda

[VM und Ausstellung automatisch starten](https://killercoda.com/question86/scenario/kursausstellung)

1. Szenario oeffnen und bei Killercoda anmelden, falls erforderlich.
2. Die Einrichtung beginnt automatisch. START zeigt die dauerhafte Anleitung.
3. Nach der Einrichtung auf **Zur Kursausstellung** klicken. Ein Terminalbefehl oder Upload ist nicht erforderlich. Ein anfaengliches 502 waehrend der Einrichtung verschwindet nach Abschluss; dann die Ausstellungsseite neu laden.

Der Ubuntu-Host installiert QEMU und startet den CirrOS-Gast `nordlicht-a` mit 1 vCPU und 512 MB RAM. Der Gast liefert die vollstaendige Ausstellung per BusyBox-Webserver aus; der Host stellt sie ueber Port 8081 bereit. Das eingebettete Paket enthaelt 19 gepruefte Dateien.

Die Einrichtung laeuft ueber den nativen Background-Hook unabhaengig davon, ob das eingebettete Browser-Terminal bereits geladen ist. Das Setup meldet FERTIG erst nach erfolgreichem SHA-256-Abgleich aller 19 Dateien ueber den Gast-Webserver. Dieser automatische Start wurde am 05.11.2026 in einer frischen Killercoda-Umgebung beobachtet; die Ausstellung und das Quiz wurden danach in einem unabhaengigen Browser geoeffnet.

Lass den Szenario-Tab offen. Nach Ablauf der Sitzung denselben Szenario-Link erneut oeffnen. Die neue Umgebung richtet VM und Ausstellung wieder ein; ihr Ausstellungslink aendert sich. Es wird keine dauerhafte VM angelegt.

Der Windows-Starter benoetigt die Datei `scenario-url.txt` mit obigem Szenario-Link neben der EXE. Die ausdruecklich getrennte lokale Vorschau ist kein VM-Deployment.

Offizielle Schnittstellen: [Szenario-Beispiele](https://github.com/killercoda/scenario-examples), [Creator-Einrichtung](https://killercoda.com/creators/get-started).
