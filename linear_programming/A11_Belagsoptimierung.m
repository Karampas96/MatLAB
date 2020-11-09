%% Belagsoptimierung:
% 
% 
% Aufgabe 11 aus <http://sos-mathe.ch/g/g3/g35/aufg_g35.html http://sos-mathe.ch/g/g3/g35/aufg_g35.html>
% 
% Die Bodenfläche eines Schulhauses beträgt 8000 m2 und soll mit zwei Sorten 
% Belag ausgestattet werden. Die erste Sorte kostet Fr. 20.-/ m2, die zweite Sorte 
% Fr. 30.-/ m2.  Die Reinigungskosten pro Jahr sind bei der zweiten Sorte nur 
% halb so gross, wie bei der ersten Sorte,  bei der sie Fr. 3.-/m2 ausmachen.
% 
% Wie ist die Auswahl zu treffen, wenn Fr. 180'000.- bis 210'000.- für die Gesamtkosten 
% eingeplant sind,  und die Reinigungskosten möglichst klein gehalten werden sollen?
%% Definition der Variablen
%% 
% * A = # Fläche Belag A
% * B = # Fläche Belag B
%% Variablen:

A = optimvar("Belag_A", "LowerBound", 0, "Type","continuous");
B = optimvar("Belag_B", "LowerBound", 0, "Type","continuous");

unterhaltA = 3*A;
unterhaltB = B*1.5;
%% Problem:

bestMaintenance = optimproblem("ObjectiveSense","min");
bestMaintenance.Objective = unterhaltA + unterhaltB;
%% Constraints:

bestMaintenance.Constraints.Area = A + B == 8000;
bestMaintenance.Constraints.AnschaffungsUntereGrenze = 20*A + 30*B >= 180000;
bestMaintenance.Constraints.AnschaffungsObereGrenze = 20*A + 30*B <= 210000;
%% Solve:

[solution, value] = solve(bestMaintenance);
% Nachrechnen
initialCost = solution.Belag_A * 20 + solution.Belag_B*30;
coveredArea = solution.Belag_A + solution.Belag_B;