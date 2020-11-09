%% *Studiums-Aufwand-Optimierung*
% 
% 
% Ein Studentin möchte ihren Aufwand optimieren um eine möglichst gute Durchschnittsnote 
% zu erzielen.
% 
% Sie belegt die Fächer Informatik, Mathematik und Physik. In jedem der drei 
% Fächer muss die Note 4 geschrieben werden, um den Kurs abzuschliessen.
% 
% Da ihr nicht alle Fächer gleich gut liegen, überlegt Sie sich, wieviele Stunden 
% sie in jedem fach aufwenden muss, um 0.1 Notenpunkte besser zu werden und kommt 
% zu diesem Ergebnis:
%% 
% * Informatik: 2.5 h
% * Mathematik: 4 h
% * Phyisk: 2 h
%% 
% Informatik und Mathematik haben ein doppeltes Notengewicht. Die Physiknote 
% zählt einfach.
% 
% Die Prüfung findet in 8 Wochen statt. D.h sie hat maximal 400h Zeit zum Lernen.
%% Variablen:

x1 = optimvar("ti", "LowerBound", 0);
x2 = optimvar("tm", "LowerBound", 0);
x3 = optimvar("tp", "LowerBound", 0);
effInf = 2.5/0.1;
effMath = 4/0.1;
effPhys = 2/0.1;
%% Problem:

bestEffort = optimproblem("ObjectiveSense","max");
bestEffort.Objective = (x1/effInf*2 + x2/effMath*2 + x3/effPhys)/5;
%% Constraints:

bestEffort.Constraints.MinInf = x1/effInf  >= 4.0;
bestEffort.Constraints.MinMath = x2/effMath >= 4.0;
bestEffort.Constraints.MinPhys = x3/effPhys >= 4.0;
bestEffort.Constraints.EffInf = 6 >= x1/effInf;
bestEffort.Constraints.EffMath = 6 >= x2/effMath;
bestEffort.Constraints.EffPhys = 6 >= x3/effPhys;
bestEffort.Constraints.MaxTime = x1 + x2 + x3 <= 400;
%% Solve:

[effort, grade] = solve(bestEffort);
gradeInf = effort.ti/effInf;
gradephys = effort.tp/effPhys;
gradeMath = effort.tm/effMath;