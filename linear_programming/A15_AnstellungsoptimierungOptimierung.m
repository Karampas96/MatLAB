%% Aufgabe 15
%% Definition der Variablen
%% 
% * # Ausgelernte = x1
% * # Lernende = x2

x1 = optimvar("Angestellter", "LowerBound",0, "Type","integer");
x2 = optimvar("Lernende", "LowerBound",0, "Type","integer");
%% Definition des Optimierungsproblems mit Zielfunktion

optAng = optimproblem("ObjectiveSense","min");
optAng.Objective = x1*4500 + x2*1000;
%% Definition der Nebenbedingungen

optAng.Constraints.MinAP = x1 + x2 >= 120;
optAng.Constraints.MaxAP = x1 + x2 <= 150;
optAng.Constraints.MinL = x2 + 20 <= x1;
optAng.Constraints.MinL2 = x2 >= (x1+x2)/5;
%% Lösen

[solution, value] = solve(optAng);