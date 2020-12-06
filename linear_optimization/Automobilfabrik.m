%% 
% Eine Automobilfabrik produziert einen Kleinwagen K, einen Mittelklassewagen 
% M und einen Transporter T. Für die tägliche Produktion müssen folgende Bedingungen 
% beachtet werden:
% 
% a) Täglich werden 1000 Einheiten hergestellt.
% 
% b) Es müssen mindestens 80 K, 200 M und 40 T produziert werden.
% 
% c) Personenwagen können nicht mehr als 900 hergestellt werden..
% 
% d) Die Zahl der K muss mindestens so gross sein, wie die der T.
% 
% Gewinn für K: 800.-, für M: 1100.-, für T: 900.-

K = optimvar("Kleinwagen", "LowerBound", 80);
M = optimvar("Mittelklassewagen", "LowerBound", 200);
T = optimvar("Transporter", "LowerBound", 40);

opt = optimproblem("ObjectiveSense", "max");
opt.Objective = 800*K + 1100*M + 900*T;

opt.Constraints.anzahl = K + M + T == 1000;
opt.Constraints.countK = K >= T;
opt.Constraints.PW = K + M <= 900;

[solution, Gewinn] = solve(opt);