%% Aufgabe 1.4 (Vitamin Produktion):
% Aus zwei Substanzen S1und S2 soll ein Vitaminpräparat hergestellt werden. 
% Der Gehalt an den Vitaminen A, B, C und D in 1000 I.E. (internationale Einheiten) 
% je g dieser Substanzen, der Mindestbedarf pro Tagin 1000 I.E. in dem herzustellenden 
% Präparat und die Kosten a) für S1und b) für S2 (in EUR/g) sind:
% 
% Gehalt in 1000 I.E. je g. S1      Gehalt in 1000 I.E. je g. S2         Mindestbedarf 
% in 1000 I.E. in g.
% 
% =============================================================================================
% 
% Vitamin A                                2                                        
% 1                                        16
% 
% Vitamin B                                1                                        
% 0                                        2
% 
% Vitamin C                                2                                        
% 3                                        32
% 
% Vitamin D                                2                                        
% 5                                        40
% 
% ==============================================================================================
% 
% S1                                        S2
% 
% Kosten (Eur/g)                        10                                            
% 8                
% 
% 
% 
% Das Präparat soll durch Mischung von S1 und S2 so hergestellt werden, dass 
% die angegebenen Mindestmengen darin enthalten sind und die Kosten minimal sind.
% 
% Wie muss gemischt werden? Wie hoch sind die minimalen Kosten?
% 
% Bei welchen Vitaminen ist der Mindest bedarf exakt eingehalten, bei welchen 
% wird er im Minimalpunkt ̈uberschritten?
%% Definition der Variablen
%% 
% * # S1 Substanz 1
% * # S2 Substanz 2

x1 = optimvar("S1", "LowerBound", 0, "Type","integer");
x2 = optimvar("S2", "LowerBound", 0, "Type","integer");
%% Definition des Optimierungsproblems mit Zielfunktion

optMix = optimproblem("ObjectiveSense","min");
optMix.Objective = 10*x1 + 8*x2;
%% Definition der Nebenbedingungen

optMix.Constraints.VitA = 2*x1 + 1*x2 >= 16;
optMix.Constraints.VitB = 1*x1 + 0*x2 >= 2;
optMix.Constraints.VitC = 2*x1 + 3*x2 >= 32;
optMix.Constraints.VitD = 2*x1 + 5*x2 >= 40;
%% Lösen

[solution, value] = solve(optMix);

% Nachrechnen
VitA = solution.S1 * 2 + solution.S2 * 1;
VitB = solution.S1 * 1 + solution.S2 * 0;
VitC = solution.S1 * 2 + solution.S2 * 3;
VitD = solution.S1 * 2 + solution.S2 * 5;

% Matrix Multiplikation
coeff = [2 1; 1 0; 2 3; 2 5];
vit = coeff*[solution.S1; solution.S2];