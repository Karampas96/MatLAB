%% Belagsoptimierung
%% Definition der Variablen

A = optimvar("Belag_A", "LowerBound", 0, "Type", "continuous");
B = optimvar("Belag_B", "LowerBound", 0, "Type", "continuous");

unterhaltA = 3 * A;
unterhaltB = B * 1.5;
%% Optimerungsproblem

bestMaintenance = optimproblem("ObjectiveSense", "min");
bestMaintenance.Objective = unterhaltA + unterhaltB;
%% Definition der Nebenbedingungen

bestMaintenance.Constraints.Area = A + B == 8000;
bestMaintenance.Constraints.AnschaffungsUntereGrenze = 20 * A + 30 * B >= 180000;
bestMaintenance.Constraints.AnschaffungsObereGrenze = 20 * A + 30 * B <= 210000;
%% Lösen

[solution, value] = solve(bestMaintenance);
% Nachrechnen
initialCost = solution.Belag_A * 20 + solution.Belag_B * 30;
coveredArea = solution.Belag_A + solution.Belag_B;