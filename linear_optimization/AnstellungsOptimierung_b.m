%% Anstellungsoptimierung
%% Definition der Variablen

x1 = optimvar("Angestellter", "LowerBound", 0, "Type", "integer");
x2 = optimvar("Lernende", "LowerBound", 0, "Type", "integer");
%% Optimierungsproblem

optAng = optimproblem("ObjectiveSense", "max");
optAng.Objective = x2;
%% Definition der Nebenbedingungen

optAng.Constraints.MinAP = x1 + x2 >= 120;
optAng.Constraints.MaxAP = x1 + x2 <= 150;
optAng.Constraints.MinL = x2 + 20 <= x1;
optAng.Constraints.MinL2 = x2 >= (x1 + x2) / 5;
%% Lösen

[solution, value] = solve(optAng);
Lernende = solution.Lernende