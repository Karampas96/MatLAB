%% 
% Ein Landwirt möchte 90 ha Land mit Kartoffeln und Zuckerrüben bebauen. Kartoffeln 
% erfordern einen Arbeitsaufwand von 3 Tagen je ha und einen Kapitalaufwand von 
% 400 EUR je ha. Zuckerrüben erfordern 4 Tage je ha und 200 EUR je ha. 
% 
% Wegen der Bodenqualität müssen mindestens 50 ha Zuckerrüben angebaut werden. 
% Für die Bewirtschaftung der 90 ha stehen maximal 360 Arbeitstage und maximal 
% 24.000  EUR zur Verfügung.
% 
% a) Welche Aufteilung des Landes muss gewaehlt werden, wenn 1 ha Kartoffeln 
% einen Gewinn von 450 EUR und 1 ha Zuckerrueben einen Gewinn von 150 EUR bringen 
% und der Gewinn maximal werden soll?
% 
% x1 = # ha Kartoffeln, x2 = # ha Zuckerrüben

x1 = optimvar("Kartoffeln", "LowerBound", 0);
x2 = optimvar("Zuckerrueben", "LowerBound", 50);

zkRel = optimproblem("ObjectiveSense", "maximize");
zkRel.Objective = 450*x1 + 150*x2;

zkRel.Constraints.area = x1 + x2 <= 90;
zkRel.Constraints.cap = x1*400 + x2*200 <= 24000;
zkRel.Constraints.time = x1*3 + x2*4 <= 360;

[solution, Gewinn] = solve(zkRel);

Tagen = solution.Kartoffeln*3 + solution.Zuckerrueben*4;
Ausgaben = solution.Kartoffeln*400 + solution.Zuckerrueben*200;
Kartoffeln = solution.Kartoffeln;
Zuckerrueben = solution.Zuckerrueben;
Netto = (24000 - Ausgaben) + Gewinn;