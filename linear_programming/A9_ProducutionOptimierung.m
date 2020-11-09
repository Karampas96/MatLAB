%% Aufgabe 9
%% Definition der Variablen
%% 
% * # Dreiräder = x1
% * # Roller = x2
% * # Fahrräder = x4

x1 = optimvar("Dreiraeder","LowerBound",200, "UpperBound", 400, "Type","integer");
x2 = optimvar("Roller", "LowerBound",200, "UpperBound", 500,"Type","integer");
x3 = optimvar("Fahrraeder", "LowerBound",0,"Type","integer");
%% Definition des Optimierungsproblems mit Zielfunktion

optimalProd = optimproblem("ObjectiveSense","max");
optimalProd.Objective = x1*10 + x2*15 + x3*40;

%% Definition der Nebenbedingungen

optimalProd.Constraints.ProductionSum = x1 + x2 +x3 == 800;
optimalProd.Constraints.MinProduction_X1_X2 = x1 + x2 >= 500;
%% Lösen

[solution, value] = solve(optimalProd);