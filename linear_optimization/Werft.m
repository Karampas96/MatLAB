%% 
% Eine Werft stellt Motorboote und Segelboote her. An einem Motorboot verdient 
% sie 4000.-, an einem Segelboot 1000.-. Die Produktionszahlen sind aus technischen 
% Gründen und wegen der Nachfrage durch gewisse Bedingungen eingeschränkt:
%% 
% * Die Anzahl der Boote darf in einem Jahr 50 nicht überschreiten.
% * Jährlich werden mindestens 20 Segelboote mehr gebraucht als Motorboote.

x = optimvar("Motorboote");
y = optimvar("Segelboote");

opt = optimproblem("ObjectiveSense", "max");
opt.Objective = 4000*x + 1000*y;

opt.Constraints.anzahl = x + y <= 50;
opt.Constraints.gebrauch = y >= x + 20;

[solution, Gewinn] = solve(opt);