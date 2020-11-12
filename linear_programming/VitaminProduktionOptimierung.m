%% Vitamin Produktion Optimierung
%% Definition der Variablen

x1 = optimvar("S1", "LowerBound", 0, "Type", "integer");
x2 = optimvar("S2", "LowerBound", 0, "Type", "integer");
%% Optimierungsproblem

optMix = optimproblem("ObjectiveSense", "min");
optMix.Objective = 10 * x1 + 8 * x2;
%% Definition der Nebenbedingungen

optMix.Constraints.VitA = 2 * x1 + 1 * x2 >= 16;
optMix.Constraints.VitB = 1 * x1 + 0 * x2 >= 2;
optMix.Constraints.VitC = 2 * x1 + 3 * x2 >= 32;
optMix.Constraints.VitD = 2 * x1 + 5 * x2 >= 40;
%% Lösen

[solution, value] = solve(optMix);

% Nachrechnen
VitA = solution.S1 * 2 + solution.S2 * 1;
VitB = solution.S1 * 1 + solution.S2 * 0;
VitC = solution.S1 * 2 + solution.S2 * 3;
VitD = solution.S1 * 2 + solution.S2 * 5;

% Matrix Multiplikation
coeff = [2 1; 1 0; 2 3; 2 5];
vit = coeff * [solution.S1; solution.S2];