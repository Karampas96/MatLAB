%% *Studiums-Aufwand Optimierung*
%% Definition der Variablen

x1 = optimvar("ti", "LowerBound", 0);
x2 = optimvar("tm", "LowerBound", 0);
x3 = optimvar("tp", "LowerBound", 0);
effInf = 2.5 / 0.1;
effMath = 4 / 0.1;
effPhys = 2 / 0.1;
%% Optimierungsproblem

bestEffort = optimproblem("ObjectiveSense", "max");
bestEffort.Objective = (x1 / effInf * 2 + x2 / effMath * 2 + x3 / effPhys) / 5;
%% Definition der Nebenbedingungen

bestEffort.Constraints.MinInf = x1 / effInf  >= 4.0;
bestEffort.Constraints.MinMath = x2 / effMath >= 4.0;
bestEffort.Constraints.MinPhys = x3 / effPhys >= 4.0;
bestEffort.Constraints.EffInf = 6 >= x1 / effInf;
bestEffort.Constraints.EffMath = 6 >= x2 / effMath;
bestEffort.Constraints.EffPhys = 6 >= x3 / effPhys;
bestEffort.Constraints.MaxTime = x1 + x2 + x3 <= 400;
%% Lösen

[effort, grade] = solve(bestEffort);
gradeInf = effort.ti / effInf;
gradephys = effort.tp / effPhys;
gradeMath = effort.tm / effMath;