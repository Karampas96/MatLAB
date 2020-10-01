# Wetterstation

## Ziele

* CSV Dateien importieren
* Datentyp Table
* Grundoperationen des Datentyps Table
* mehrere Datenreihen in einem Plot aufzeichnen

## Aufgabenstellung

#### Aufgabe 1

Importieren Sie den Datensatz **MET Office Weather Data.csv** in Matlab. Gehen Sie wie folgt vor:

* Speichern Sie die Datei lokal auf ihrem Rechner
* Öffnen Sie die Datei über diesen Button
* Erzeugen Sie ein Skript für das Lesen des Datensatzes und speichern Sie dieses Skript ab
* Dazu müssen Sie den Button **`Import Data`** verwenden
* Studieren Sie das Skript und ändern Sie den Namen der Matlab-Variablen, welche durch den Import erzeugt wird in **`weatherD`**
* Welche Matlab Funktion wird verwendet, um die Daten einzulesen?

#### Aufgabe 2

Führen Sie das erstellt Skript aus. Dadurch wird die Variable **`weatherD`** mit dem Typ Table erzeugt. Führen Sie den Befehl **`summary`** aus. Welche Informationen von Summary sind nicht hilfreich?

#### Aufgabe 3

Ergänzen Sie ihr Skript so, dass eine neue Variable **`wDfixed`** erzeugt wird, die nur noch gültigen Werte enthält. Wie viele Zeilen wurden aus der Tabelle entfernt?

#### Aufgabe 4

Erweitern Sie ihr Skript so, dass ihre Tabelle nach Jahr und Monat sortiert wird und erstellen Sie einen plot, welcher die Maximal-Temperatur über die Jahre anzeigt. Weshalb ist das Ergebnis nicht sinnvoll?

#### Aufgabe 5

Welche Wetterstation liefert die meisten Daten? Erstellen Sie eine neue Tabelle, welche ausschliesslich die Daten dieser Wetterstation beinhaltet.

#### Aufgabe 6

Erstellen Sie eine neue Tabelle, welche die durchschnittlichen Temperaturen pro Jahr enthält. Verwenden die Funktion **`groupsummary(..)`** und stellen Sie die durchschnittlichen Maximal-Temperaturen seit Messbeginn in einem Plot dar. Verwenden Sie die Funktion **`mean`** für die Berechnung.

#### Aufgabe 7

Führen Sie dieselbe Auswertung nochmals durch. Verwenden Sie diesmal aber die Funktion **`median`** und zeichnen Sie den Verlauf in derselben Grafik auf. Wählen Sie einen geeigneten Markierer, um die zwei Datenreihen zu unterscheiden.
Vergleichen Sie die Daten und kommentieren Sie. Entspricht die Grafik ihren Erwartungen?


#### Aufgabe 8

Welches ist die Messstation mit der der grössten mittleren Regenmenge pro Jahr, und welches ist die Messtation mit der kleinsten mittleren Regenmenge pro Jahr.

#### Aufgabe 9

Zeichen Sie eine Scatterplot, welcher dir Regenmenge und die Temperatur einer Messstation gegenüberstellt. Beschriften Sie das Diagramm mit Titel, X-Achse und Y-Achse

#### Aufgabe 10

Vergleichen Sie Maximal-Temperaturen dieser zwei Messstationen in einem Boxplot.

## Geforderte Lösungsbereiche

* Programmcode

## Verwendete MatLAB Funktionen / Plots

* summary
* rmmissing
* height
* sortrows
* groupsummary
* max
* min
* ismember
* union
* plot
* scatter
* boxplot
