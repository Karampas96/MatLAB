# Lineare Regression mit MATLAB

## Von Daten zu Wissen

### Zufallsdaten: Normalverteilung

* Erzeugen Sie einen Vector `v` mit 100 Datenelemente mit randn und zeichnen Sie ein Histrogramm.
* Erzeugen Sie einen Vector `v` mit 100000 Datenelement mit randn und zeichnen Sie ein Histogramm. Wie unterscheiden Sie die zwei Histogramme?
* Berenchnen Sie den Mittelwert sowie die Standardabweichung von v.
* Führen Sie die Transformationen `v1 = v*2 + 5`, `v2 = v*0.5 - 3` aus und zeichnen Sie ein Diagramm, welches sowohl das Histrogramm von `v` und `v1`, `v2` darstellt. Achten Sie darauf, dass in allen Histogrammen dieselbe Anzahl bins verwendet wird! (histogram(v, 100)). Bestimmen Sie den Mittelwert sowie die Standardabweichung der zufallsvariablen `v1` und `v2`. Was stellen Sie fest bezgl. der obigen Transformationen? Was bewirkt die Standardabweicung?

### Korrelation

* Zeichenen Sie einen Scatterplot von `v` und `v1` und im selben Diagramm von `v` und `v2`. Entspricht das Diagramm ihren Erwartungen?
* Definieren Sie einen weiteren vector `v3` mit gleich vielen Datenelement wie `v`. Verwenden Sie ebenfalls randn und zeichnen Sie einen Scatterplot von `v` und `v3`. Entspricht das Diagramm ihren Erwartungen?
* Ein Mass, wie stark zwei Variablen voneinander "abhängen" ist der sogenannte Korrellationskoeffizient. Berechnen Sie den Korrellationskoeffizient zwischen `V` und `V2` sowie zwischen `V` und `V3` (Funktion corrcoef(x,y)).
* In der Praxis wird man in der Regel weder vollkommen korrelierte noch vollkommen unkorrelierte Daten haben. Um eine solche Situation zu simulieren erstellen wir einen Vektor `v4` mit `[1:100]` sowie einen Vektor `v5` mit `v5 = 4 + v4*.3 + randn(1,100).*2` und einen Vektor `v6` mit `v6 = 3 - v4 * 0.75 + randn(1,100).*2`. Zeichen Sie je einen Scatterplot mit diesen Daten.
* Berechnen Sie die Correlationscoeffizienten zwischen `v4` und `v6` sowie zwischen `v4` und `v5`. Was bedeutet ein negativer Korrellationscoeffizient?
* Berechnen Sie mit der Funktion `fitlm(v4, v6)` eine regressionsgerade. weisen sie das Ergebnis einer Variablen `model` zu. Schauen Sie sich im Workspace diese Variable an insbesonder das Property `Coefficients`. In der Spalte `Estimate` finden wir die berechneten Schätzwerte für die Schnittstelle mit der `y Achse` bei `x = 0` (=Intercept) sowie die Steigung der Geraden (=x1).Zeichen Sie eine Scatterplot mit den Variablen `v4` und `v6`. Zeichnen Sie in demselben Diagramm eine Gerade mit `y = Intercept + x1*x`. Wie passt das?
* Geben Sie die Variable model in einem Diagramm aus `(plot(model))`.
* Lesen sie die Datei Geburten_Stoerche.csv ein und berechnen Sie den den Korrellationskoeffizienten sowie ein modell mit `fitlm`. Was ist ihr Kommentar?
