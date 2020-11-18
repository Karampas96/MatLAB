# Optimierung mit MATLAB

## Einführung

Bei zahlreichen Problemen in Technik und Naturwissenschaften sind maximale Ergebnisse
und minimaler Aufwand gesucht. Dies sind typische Problemstellungen der Optimierung,
die für Ingenieure und Naturwissenschaftler zunehmend an Bedeutung gewinnt, so dass in
diesem Repository ein kurzer Einblick in die Problematik gegeben wird:

Es werden häufig auftretende Probleme vorgestellt, d.h. Extremwertprobleme, *lineare* und
*nichtlineare* Optimierungsprobleme.

Der Einsatz von *MATLAB-Funktionen* aus der Toolbox *OPTIMIZATION* zur Lösung von
*Optimierungsproblemen* wird beschrieben.

Da die Optimierung eine sehr umfangreiche Theorie ist, kann nicht auf Details eingegangen
werden.

## Probleme der Optimierung

*Praktische Optimierungsprobleme* sind folgendermassen charakterisiert:

Für ein Kriterium (*Optimierungskriterium*) ist ein kleinster (minimaler) bzw. grösster (maximaler) Wert gesucht, so dass konkret von *Minimierungs- bzw. Maximierungsproblemen* gesprochen wird.Meistens sind zusätzliche Beschränkungen zu berücksichtigen.

Die *mathematische Optimierung* (kurz: Optimierung) modelliert praktische Optimierungsprobleme unter Verwendung von Funktionen und ist folgendermassen *charakterisiert*:

* Das *Optimierungskriterium* wird als Zielfunktion bezeichnet und durch reelle Funktionen reeller Variablen gebildet.
* Zielfunktionen sind zu *minimieren* oder *maximieren*, d.h. es sind kleinste oder grösste Werte (d.h. *Minima* oder *Maxima*) zu berechnen, die allgemein als *Optima* bezeichnet werden.
* Werte der Variablen, für die die Zielfunktion ein Optimum (Minimum/Maximum) annimmt, heissen *Optimalpunkte* (*Minimal- bzw. Maximalpunkte*).
* Vorliegende *Beschränkungen* liefern Bedingungen für auftretende Variablen, die als *Nebenbedingungen* bezeichnet und durch Gleichungen und Ungleichungen beschrieben
werden.
* Je nach Form der Zielfunktion und Nebenbedingungen ergeben sich verschiedene Theorien und Berechnungsmethoden. Deshalb unterteilt sich die mathematische Optimierung
in eine Reihe von Gebieten, von denen drei wichtige vorgestellt werden.

Die *Berechnung* praktischer *Optimierungsprobleme* vollzieht sich in zwei Schritten:

1) Zuerst muss ein *mathematisches Optimierungsmodell* aufgestellt werden. Dies ist Aufgabe der Spezialisten des betreffenden Fachgebiets, die Variablen und Zielfunktion festlegen und vorliegende Beschränkungen in Form von Gleichungen und Ungleichungen
beschreiben.
2) Wenn ein mathematisches Optimierungsmodell vorliegt, tritt die *mathematische Optimierung* in Aktion, um Lösungen zu berechnen, wofür i.Allg. der Einsatz von Computern erforderlich ist, auf denen Programmsysteme wie MATLAB installiert sind.

***© Springer-Verlag Berlin Heidelberg 2010***

## [Wahlkampf-Optimierung](https://github.com/YodaCh96/MATLAB/blob/master/linear_optimization/WahlkampfOptimierung.m)

Ein Politiker möchte in seinem Wahlkreis gewinnen. Dazu benötigt er mindestens 50% der Stimmen in allen Gebieten seines Wahlkreises (Stadt, Vorstadt, Land)

* Einwohner Stadt = 100000
* Einwohner Vorstadt = 200000
* Einwohner Land = 50000

Das möchte er durch einen geschickten Wahlkamp erreichen. Durch eine Studie weiss kennt er die Wirkung der Wahlkampfausgaben für jedes Wahlthema genau. 100'000.- Werbeausgaben bringen pro Wahlkampfthema in den verschiedenen Gebeiten diese Anzahl Wählerstimmen (in Taused).

|Thema|Stadt|Vorstadt|Land|
|:-|:-:|:-:|:-:|
|Strassenbau|-2|5|3|
|Sicherheit|8|2|-5|
|Landwirtschaftsubv.|0|0|10|
|Mineralölsteuer|10|0|-2|

a) Wie erreicht der Politiker sein Ziel, 50% der Stimmen in jedem Wahlkreis mit möglichst wenig Kosten?
b) Wie erreicht der Politiker sein Zeil, 50% aller Stimmen egal aus welchem Wahlkreis mit möglichst wenig Kosten?

## [Vitamin Produktion Optimierung](https://github.com/YodaCh96/MATLAB/blob/master/linear_optimization/VitaminProduktionOptimierung.m)

Aus zwei Substanzen S1und S2 soll ein Vitaminpräparat hergestellt werden. Der Gehalt an den Vitaminen A, B, C und D in 1000 I.E. (internationale Einheiten) je g dieser Substanzen, der Mindestbedarf pro Tagin 1000 I.E. in dem herzustellenden Präparat und die Kosten a) für S1und b) für S2 (in EUR/g) sind:

||Gehalt in 1000 I.E. je g. S1|Gehalt in 1000 I.E. je g. S2|Mindestbedarf in 1000 I.E. in g.|
|:-|:-:|:-:|:-:|
|Vitamin A|2|1|16|
|Vitamin B|1|0|2|
|Vitamin C|2|3|32|
|Vitamin D|2|5|40|
|Kosten (Eur/g)|10|8|

Das Präparat soll durch Mischung von S1 und S2 so hergestellt werden, dass die angegebenen Mindestmengen darin enthalten sind und die Kosten minimal sind.
Wie muss gemischt werden? Wie hoch sind die minimalen Kosten?
Bei welchen Vitaminen ist der Mindest bedarf exakt eingehalten, bei welchen wird er im Minimalpunkt ̈uberschritten?

## [Studiums-Aufwand Optimierung](https://github.com/YodaCh96/MATLAB/blob/master/linear_optimization/StudiumsAufwandOptimierung.m)

Ein Studentin möchte ihren Aufwand optimieren um eine möglichst gute Durchschnittsnote zu erzielen.
Sie belegt die Fächer Informatik, Mathematik und Physik. In jedem der drei Fächer muss die Note 4 geschrieben werden, um den Kurs abzuschliessen.
Da ihr nicht alle Fächer gleich gut liegen, überlegt Sie sich, wieviele Stunden sie in jedem fach aufwenden muss, um 0.1 Notenpunkte besser zu werden und kommt zu diesem Ergebnis:

* Informatik: 2.5 h
* Mathematik: 4 h
* Phyisk: 2 h

Informatik und Mathematik haben ein doppeltes Notengewicht. Die Physiknote zählt einfach.
Die Prüfung findet in 8 Wochen statt. D.h sie hat maximal 400h Zeit zum Lernen.

## [Anstellungsoptimierung](https://github.com/YodaCh96/MATLAB/blob/master/linear_optimization/AnstellungsOptimierung.m)

Ein Montagewerk beschäftigt gelernte Arbeiter und Lehrlinge. Ein störungsfreier Ablauf erfordert, dass mindestens 120 Arbeitsplätze besetzt sind; andererseits sind maximal 150 Arbeitsplätze verfügbar. Mindestens ein Fünftel aller stellen sind durch Lehrlinge zu besetzen; die Anzahl der Lehrlinge soll aber mindestens um 20 kleiner sein, als die Anzahl gelernter Arbeiter.

a) Wie viele Arbeiter kann das Werk maximal beschäftigen?
b) Wie viele Lehrlinge kann das Werk maximal beschäftigen?
c) Ein Arbeiter verdient 4'500 Franken im Monat, ein Lehrling 1'000 Franken.

Wie viele Arbeiter und Lehrlinge wird die Firma einstellen, wenn die Lohnsumme möglichst klein sein soll?

## [Produktionsoptimierung](https://github.com/YodaCh96/MATLAB/blob/master/linear_optimization/ProduktionsOptimierung.m)
	
Ein Spielwarenfabrik stellt Dreiräder (D), Roller (R) und Fahrräder (F) her. Der Reingewinn beträgt 10 Fr. für D, 15 Fr. für R und 40 Fr. für F (immer pro Stück). Bestimme den grössten Gewinn, wenn infolge der Nachfrage und der Produktionsbedingungen folgende Einschränkungen zu beachten sind:

a) In einem Monat werden insgesamt 800 Stück hergestellt.
b) Monatlich sind mindestens 200 D und 200 R zu produzieren.
c) Es dürfen monatlich höchstens 400 D und 500 R hergestellt werden, zusammen aber nicht weniger als 500.

## [Belagsoptimierung](https://github.com/YodaCh96/MATLAB/blob/master/linear_optimization/BelagsOptimierung.m)

Die Bodenfläche eines Schulhauses beträgt 8000 m2 und soll mit zwei Sorten Belag ausgestattet werden. Die erste Sorte kostet Fr. 20.-/ m2, die zweite Sorte Fr. 30.-/ m2.  Die Reinigungskosten pro Jahr sind bei der zweiten Sorte nur halb so gross, wie bei der ersten Sorte,  bei der sie Fr. 3.-/m2 ausmachen.
Wie ist die Auswahl zu treffen, wenn Fr. 180'000.- bis 210'000.- für die Gesamtkosten eingeplant sind,  und die Reinigungskosten möglichst klein gehalten werden sollen?

## Kartoffeln und Zuckerrüben Optimierung

Ein Landwirt möchte 90 ha Land mit Kartoffeln und Zuckerrüben bebauen. Kartoffeln erfordern einen Arbeitsaufwand von 3 Tagen je ha und einen Kapitalaufwand von 400 EUR je ha. Zuckerrüben erfordern 4 Tage je ha und 200 EUR je ha. Wegen der Bodenqualität müssen mindestens 50 ha Zuckerrüben angebaut werden. Für die Bewirtschaftung der 90 ha stehen maximal 360 Arbeitstage und maximal 24.000  EUR zur Verfügung.

Gesucht: optimales Anbauverhältnis zwischen Zuckerrüben und Kartoffeln

## Stahllegierung Optimierung

Man möchte 25 Tonnen Stahl mischen welcher eine bestimmte chemische Zusammammensetzung hat. Der neu produzierte Stahl soll 5% Kohlenstoff und 5%Molybdän enthalten.

Dazu stehen verschieden Rohstoffe zur Verfügung:

||Gewicht|Kolenstoff %|Molybdän %|$ / Tonne|
|:-|:-:|:-:|:-:|:-:|
|Barren Typ 1|5|5|3|350|
|Barren Typ 2|3|4|3|330|
|Barren Typ 3|4|5|4|310|
|Barren Typ 4|6|3|4|280|
|Legierung 1|beliebig|8|6|500|
|Legierung 2|beliebig|7|7|450|
|Legierung 3|beliebig|6|8|400|
|Schrott|beliebig|3|9|400|

Für die Produktion können nur ganze Barren verwendet werden. Es steht pro Barren-Typ nur ein Barren zur Verfügung. Legierungen und Schrott können in beliebiger Menge verwendet werden.

Wie muss die Mischung gewählt werden, um den gewünschten Stahl mit mögichts geringen Kosten erzeugen zu können?