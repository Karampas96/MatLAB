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
