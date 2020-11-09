%% Aufgabe:
% 
% 
% Ein Politiker möchte in seinem Wahlkreis gewinnen. Dazu benötigt er mindestens 
% 50% der Stimmen in allen Gebieten seines Wahlkreises (Stadt, Vorstadt, Land)
%% 
% * Einwohner Stadt = 100000
% * Einwohner Vorstadt = 200000
% * Einwohner Land = 50000
%% 
% Das möchte er durch einen geschickten Wahlkamp erreichen. Durch eine Studie 
% weiss kennt er die Wirkung der Wahlkampfausgaben für jedes Wahlthema genau. 
% 100'000.- Werbeausgaben bringen pro Wahlkampfthema in den verschiedenen Gebeiten 
% diese Anzahl Wählerstimmen (in Taused)
% 
% Thema                             Stadt            Vorstadt        Land
% 
% ============================================
% 
% Strassenbau                        -2                    5                
% 3
% 
% Sicherheit                             8                     2               
% -5
% 
% Landwirtschaftsubv.              0                    0               10
% 
% Mineralölsteuer                    10                    0                
% -2
% 
% 
% 
% a) Wie erreicht der Politiker sein Ziel, 50% der Stimmen in jedem Wahlkreis 
% mit möglichst wenig Kosten?
% 
% b) Wie erreicht der Politiker sein Zeil, 50% aller Stimmen egal aus welchem 
% Wahlkreis mit möglichst wenig Kosten?
%% Definition der Variablen
%% 
% * x1 # Strassenbau
% * x2 # Sicherheit
% * x3 # Subventionen
% * x4 # Taxes

x1 = optimvar("strassenbau", "LowerBound",0);
x2 = optimvar("sicherheit", "LowerBound",0);
x3 = optimvar("subvention", "LowerBound", 0);
x4 = optimvar("taxes", "LowerBound",0);
%% Definition des Optimierungsproblems mit Zielfunktion

optCampaign1 = optimproblem("ObjectiveSense", "min"); % problemstellung a)
optCampaign1.Objective = x1 + x2 + x3 + x4;

optCampaign2 = optimproblem("ObjectiveSense", "min"); % problemstellung b)
optCampaign2.Objective = x1 + x2 + x3 + x4;
%% Definition der Nebenbedingungen

% Problemstellung a)
optCampaign1.Constraints.City = -2*x1 + 8*x2 + 10*x4                 >= 50;
optCampaign1.Constraints.Suburb = 5*x1 + 2*x2                        >= 100;
optCampaign1.Constraints.Country = 3*x1 + -5*x2+ 10*x3 -2*x4         >= 25;
%% optCampaign2.Constraints.total =  -2*x1 + 8*x2 + 10*x4 + 5*x1 + 2*x2 + 3*x1 + -5*x2+ 10*x3 -2*x4 >= 175;

% Problemstellung b)
optCampaign2.Constraints.City = -2*x1 + 8*x2 + 10*x4                 <= 100;
optCampaign2.Constraints.Suburb = 5*x1 + 2*x2                        <= 200;
optCampaign2.Constraints.Country = 3*x1 + -5*x2+ 10*x3 -2*x4         <= 50;
%% Lösen

[solution1, cost1] = solve(optCampaign1); %aufgabe a)

coeff = [-2 8 0 10; 5 2 0 0; 3 -5 10 -2];
res1 = [solution1.strassenbau; solution1.sicherheit; solution1.subvention; solution1.taxes];
check1 = coeff*res1;

[solution2, cost2] = solve(optCampaign2); %aufgabe b)

res2 = [solution2.strassenbau; solution2.sicherheit; solution2.subvention; solution2.taxes];
check2 = coeff*res2;