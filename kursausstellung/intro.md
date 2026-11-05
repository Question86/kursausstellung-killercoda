# Kursausstellung automatisch starten

Klicke auf **START**. Das Szenario richtet den Ubuntu-Host, die virtuelle CirrOS-Maschine `nordlicht-a` und die vollstaendige Kursausstellung automatisch ein. **Kein Terminalbefehl und kein Upload erforderlich.**

Warte im Terminal auf **FERTIG**. Erst nach erfolgreichem Hash-Abgleich aller 19 Webdateien wird Erfolg gemeldet.

## Ausstellung oeffnen

[Zur Kursausstellung]({{TRAFFIC_HOST1_8081}})

[Traffic / Ports oeffnen]({{TRAFFIC_SELECTOR}})

Der Weg ist: Ubuntu-Port 8081 → lokale Weiterleitung 8080 → CirrOS-Gast → BusyBox-Webserver → HTML/JavaScript-Dateien. Die Website wird vom Gast ausgeliefert, nicht von einem Windows-PC.

Der Szenario-Tab muss offen bleiben. Nach Ablauf der Sitzung dieses Szenario erneut starten; der Link zur laufenden Website wird dabei neu erzeugt. Es wird keine dauerhafte Maschine gebucht und kein kostenpflichtiges Upgrade ausgewaehlt.

Nur oeffentliche Unterrichtsinhalte verwenden. Killercoda-Sitzungs-URLs sind ungeschuetzt und koennen Zugriff auf die Uebungsumgebung ermoeglichen: [Anbieterinformation](https://killercoda.com/security).
