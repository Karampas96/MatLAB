%% Wahlkampf Optimierung
%% Definition der Variablen

x1 = optimvar("strassenbau", "LowerBound",0);
x2 = optimvar("sicherheit", "LowerBound",0);
x3 = optimvar("subvention", "LowerBound", 0);
x4 = optimvar("taxes", "LowerBound",0);
%% Optimierungsproblem

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