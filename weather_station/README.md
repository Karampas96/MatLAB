# Wetterstation

## Ziele

* CSV Dateien importieren
* Datentyp Table
* Grundoperationen des Datentyps Table
* mehrere Datenreihen in einem Plot aufzeichnen
* kennen die Basisrechenregeln der Mengenlehre
* können mit diesen Rechenregeln Terme umformen und unter Umständen vereinfachen
* können diese Regeln auf den Matlab Datentyp Table anwenden

## Aufgabenstellung

#### Aufgabe 1.1

Importieren Sie den Datensatz **MET Office Weather Data.csv** in Matlab. Gehen Sie wie folgt vor:

* Speichern Sie die Datei lokal auf ihrem Rechner
* Öffnen Sie die Datei über diesen Button
* Erzeugen Sie ein Skript für das Lesen des Datensatzes und speichern Sie dieses Skript ab
* Dazu müssen Sie den Button **`Import Data`** verwenden
* Studieren Sie das Skript und ändern Sie den Namen der Matlab-Variablen, welche durch den Import erzeugt wird in **`weatherD`**
* Welche Matlab Funktion wird verwendet, um die Daten einzulesen?

#### Aufgabe 1.2

Führen Sie das erstellt Skript aus. Dadurch wird die Variable **`weatherD`** mit dem Typ Table erzeugt. Führen Sie den Befehl **`summary`** aus. Welche Informationen von Summary sind nicht hilfreich?

#### Aufgabe 1.3

Ergänzen Sie ihr Skript so, dass eine neue Variable **`wDfixed`** erzeugt wird, die nur noch gültigen Werte enthält. Wie viele Zeilen wurden aus der Tabelle entfernt?

#### Aufgabe 1.4

Erweitern Sie ihr Skript so, dass ihre Tabelle nach Jahr und Monat sortiert wird und erstellen Sie einen plot, welcher die Maximal-Temperatur über die Jahre anzeigt. Weshalb ist das Ergebnis nicht sinnvoll?

#### Aufgabe 1.5

Welche Wetterstation liefert die meisten Daten? Erstellen Sie eine neue Tabelle, welche ausschliesslich die Daten dieser Wetterstation beinhaltet.

#### Aufgabe 1.6

Erstellen Sie eine neue Tabelle, welche die durchschnittlichen Temperaturen pro Jahr enthält. Verwenden die Funktion **`groupsummary(..)`** und stellen Sie die durchschnittlichen Maximal-Temperaturen seit Messbeginn in einem Plot dar. Verwenden Sie die Funktion **`mean`** für die Berechnung.

#### Aufgabe 1.7

Führen Sie dieselbe Auswertung nochmals durch. Verwenden Sie diesmal aber die Funktion **`median`** und zeichnen Sie den Verlauf in derselben Grafik auf. Wählen Sie einen geeigneten Markierer, um die zwei Datenreihen zu unterscheiden.
Vergleichen Sie die Daten und kommentieren Sie. Entspricht die Grafik ihren Erwartungen?


#### Aufgabe 1.8

Welches ist die Messstation mit der der grössten mittleren Regenmenge pro Jahr, und welches ist die Messtation mit der kleinsten mittleren Regenmenge pro Jahr.

#### Aufgabe 1.9

Zeichen Sie eine Scatterplot, welcher dir Regenmenge und die Temperatur einer Messstation gegenüberstellt. Beschriften Sie das Diagramm mit Titel, X-Achse und Y-Achse

#### Aufgabe 1.10

Vergleichen Sie Maximal-Temperaturen dieser zwei Messstationen in einem Boxplot.

#### Aufgabe 2.1

Umformen von Termen:

1. A &cup; (A &cap; B)
2. A &cap; (A &cup; B)
3. B \ (B &cup; C)
4. B \ (B &cap; C)
5. A &cup; (B \ (C &cap; A))
6. A \ ((B &cup; C) &cap; (A &cup; C))

#### Aufgabe 2.2

Wir verwenden für diese Übung denselben Datentype wie in Übung 1 (**`MET_Office_Weather_Data.csv`**). Wir betrachten aber nur die Daten des Jahres 2020. 

Wir verwenden die Rechenregeln, um diejnigen Datensätze zu selektieren, die bezülgich **`tmin`** innerhalb der 25% Quartile liegen. 

![Quartile](../images/quartile.PNG)

1. Erstellen von Teilmengen:
   1. Konstruieren Sie die Teilmenge der Daten des Jahres 2020 und halten Sie diese Menge in der Variable data2020 fest (entfernen Sie ungültige Werte) 
   2. Bilden Sie die Teilmenge aboveMedian, welche alle Daten enthält, mit tmin > median(tmin). Bilden Sie die Teilmenge belowMedian, welche alle Daten enthält, mit tmin <= median(tmin)
   3. Wiederholen Sie dieses Verfahren für diese zwei Teilmengen und definieren sie jeweils zwei neue Namen für diese Teilmengen
2. Welche Wetterstationen haben ein tmin, welches zwischen unterem und oberem Quartil ist? – Das sind sollten 50% aller Datenätze sein. Prüfen Sie.
3. Schreiben Sie die Mengenoperationen, die Sie ausgeführt haben als Formel auf.
4. Welchem Bereich entspricht diese Menge in einem Boxplot?
