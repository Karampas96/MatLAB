%% 
% Eine Herdfabrik fabriziert drei Typen: Induktionsherde I, Elektroherde E und 
% Gasherde G. Der Gewinn beträgt 300.- / 200.- / 150.- pro Herd. Infolge der Nachfrage, 
% Kapazität und betriebstechnischen Notwendigkeiten sind folgende Bedingungen 
% einzuhalten:
%% 
% * Die Gesamtstückzahl beträgt 500 wöchentlich.
% * Die Produktion muss wöchentlich mindestens 60 I, 80 E und 80 G umfassen.
% * Es müssen mindestens doppelt so viele I wie E hergestellt werden.

I = optimvar("Induktionsherde", "LowerBound", 60);
E = optimvar("Elektroherde", "LowerBound", 80);
G = optimvar("Gasherde", "LowerBound", 80);

opt = optimproblem("ObjectiveSense", "max");
opt.Objective = 300*I + 200*E + 150*G;

opt.Constraints.Production = I + E + G == 500;
opt.Constraints.min2IE = 2*I >= E;

[solution, Gewinn] = solve(opt);