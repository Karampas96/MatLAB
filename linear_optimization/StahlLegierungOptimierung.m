%% Stahllegierung
%% Definition der Variablen

x1 = optimvar("BT1", "Type","integer", "LowerBound",0, "UpperBound",1);
x2 = optimvar("BT2", "Type","integer", "LowerBound",0, "UpperBound",1);
x3 = optimvar("BT3", "Type","integer", "LowerBound",0, "UpperBound",1);
x4 = optimvar("BT4", "Type","integer", "LowerBound",0, "UpperBound",1);
x5 = optimvar("a1", "Type","continuous", "LowerBound",0);
x6 = optimvar("a2", "Type","continuous", "LowerBound",0);
x7 = optimvar("a3", "Type","continuous", "LowerBound",0);
x8 = optimvar("scrap", "Type","continuous", "LowerBound",0);

w1 = x1*5;
w2 = x2*3;
w3 = x3*4;
w4 = x4*6;

cost = w1*350 + w2*330 + w3*310 + w4*280 + x5*500 + x6*450 + x7*400 + x8*100;
carb = w1*0.05 + w2 * 0.04 + w3*0.05 + w4* 0.03 + x5*0.08 + x6*0.07 + x7*0.06 + x8*0.03;
mol = w1*0.03 + w2 * 0.03 + w3*0.04 + w4* 0.04 + x5*0.06 + x6*0.07 + x7*0.08 + x8*0.09;
totWeight = w1 + w2 + w3 + w4 + x5 + x6 + x7 + x8;
%% Optimierungsproblem
% Kosten sollen minimiert werden:

optBlend = optimproblem("ObjectiveSense", "min");
optBlend.Objective = cost;
%% Definition der Nebenbedingungen

optBlend.Constraints.totWeight = totWeight == 25;
optBlend.Constraints.totCarb = carb == totWeight*0.05;
optBlend.Constraints.totMoly = mol == totWeight * 0.05;
%% Lösen

[solution, cost] = solve(optBlend);