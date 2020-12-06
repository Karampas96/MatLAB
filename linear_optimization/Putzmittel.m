%% 
% Ein Unternehmen benötigt wöchentlich mindestens 2000 Liter Putzmittel A und 
% 2250 l Putzmittel B. Bei einem Grosshändler erhält man Packungen, die 20 l A 
% und 50 l B enthalten. Bei einem zweiten Grosshändler bestehen die Packungen 
% aus 40 l A und 15 l B. In beiden Fällen kostet A 60 Rp/l und B 40 Rp/l. Wie 
% viele Packungen müssen wöchentlich bei jedem Händler eingekauft werden, wenn 
% sich möglichst geringe Kosten ergeben sollen?

A = optimvar("Putzmittel_A", "Type","integer");
B = optimvar("Putzmittel_B", "Type","integer");
Packung_A = optimvar("Packung_A");
Packung_B = optimvar("Packung_B");

opt = optimproblem("ObjectiveSense", "min");
opt.Objective = 32*Packung_A + 30*Packung_B;

opt.Constraints.PutzmittelA = Packung_A*20 + Packung_B*40 >= 2000;
opt.Constraints.PutzmittelB = Packung_A*50 + Packung_B*15  >= 2250;

[solution, Kosten] = solve(opt);