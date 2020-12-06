%% 
% Auf einer Geflügelfarm werden Hühner, Enten und Gänse gehalten, und zwar insgesamt 
% 1200 Tiere. Wegen der Verwertung von Abfällen sollten es mindestens 40 Enten 
% und 40 Gänse, wegen der Nachfrage aber nicht mehr als 150 Enten und 100 Gänse 
% sein. Wegen des zur Verfügung stehenden Platzes darf die Anzahl von Gänsen und 
% Enten zusammen 200 nicht überschreiten. Wann ergibt sich der grösste Gewinn, 
% wenn ein Huhn 2.-, eine Gans 8.- und eine Ente 6.- einbringt?

H = optimvar("Huehner");
E = optimvar("Enten", "LowerBound", 40, "UpperBound", 150);
G = optimvar("Gaense", "LowerBound", 40, "UpperBound", 100);

opt = optimproblem("ObjectiveSense", "max");
opt.Objective = 2*H + 8*G + 6*E;

opt.Constraints.animals = H + E + G == 1200;
opt.Constraints.total = G + E <= 200;

[solution, Gewinn] = solve(opt);