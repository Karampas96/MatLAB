%% fitlm Anwendungen
% Die nachfolgenden Beispiele sollen verwendet werden, um die Verwendung von 
% fitlm zu üben. Die Beispiele stammen aus ganz unterschiedlichen Anwendungsgebieten. 
% Sie geben einen kleinen Einblick in die vielfältigen Einsatzmöglichkeiten dieser 
% Methode.
%% Energieverbrauch für das Heizen von Wasser
% In einem Schüler-Praktikum wurde diese Messsung gemacht um die spezifische 
% Wärmekapazität des Wassers zu bestimmen. (Leider sind die Einheiten nicht überliefert 
% :-( 
% 
% _*fitlm_daten\EnergieH2oTemp.csv*_
% 
% Machen Sie eine Analyse mit fitlm

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 2);

% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = [ "Energy", "Temperature"];
opts.VariableTypes = ["double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
H2O_Heizen = readtable("C:\Users\Ioannis\Desktop\GitHub\MATLAB\linear_regression\data\EnergieH2oTemp.csv", opts);

scatter(H2O_Heizen.Energy, H2O_Heizen.Temperature);

fit = fitlm(H2O_Heizen.Energy, H2O_Heizen.Temperature);

plot(fit);
plotResiduals(fit,"probability");
plotResiduals(fit,"fitted");
%% Laufgeschwindigkeit vs. Herzfrequenz
% In einem Fittnesstest wurden nachfolgende Daten aufgezeichnet: _*fitlm_daten\Conconi.csv*_

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 3);

% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["Row", "Speed", "Puls"];
opts.VariableTypes = ["int16", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
conconi = readtable("C:\Users\Ioannis\Desktop\GitHub\MATLAB\linear_regression\data\Conconi.csv", opts);

scatter(conconi.Speed, conconi.Puls);

fitC = fitlm(conconi.Speed, conconi.Puls);

plotResiduals(fitC,"probability");
plotResiduals(fitC, "fitted");
plot(fitC);
%% Zusammenhang Alter zu Preis bei Antiken Uhren

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 3);

% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["Observation", "Alter", "Preis"];
opts.VariableTypes = ["int16", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
antikeUhren = readtable("C:\Users\Ioannis\Desktop\GitHub\MATLAB\linear_regression\data\antikeUhren.csv", opts);

scatter(antikeUhren.Alter, antikeUhren.Preis);

fitAU = fitlm(antikeUhren, "Preis~Alter")

plot(fitAU);
plotResiduals(fitAU,"probability");
plotResiduals(fitAU,"fitted");
%% Zusammenhang Temperatur-Differenz Aussen/Innen zu Verbrauch

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 3);

% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["Observation", "temp", "verbrauch"];
opts.VariableTypes = ["int16", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
TempVsUsage = readtable("C:\Users\Ioannis\Desktop\GitHub\MATLAB\linear_regression\data\gas.csv", opts);
scatter(TempVsUsage.temp, TempVsUsage.verbrauch);

fitTU = fitlm(TempVsUsage, "verbrauch~temp")

plot(fitTU);
plotResiduals(fitTU,"probability");
% Wodurch wird der Benzin-Verbrauch von Autos pro 100 km beeinflusst?
% Welche Prediktoren scheinen Ihnen glaubhaft? Versuchen Sie aus. 

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 12);

% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["Observation", "L_100km", "hubraum", "cyl", "ps", "drat", "wt", "qsec", "vs", "am", "gear", "carb"];
opts.VariableTypes = ["int16", "double", "double","double", "double", "double", "double", "double", "categorical","categorical","categorical","categorical"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
HpVsFuel = readtable("C:\Users\Ioannis\Desktop\GitHub\MATLAB\linear_regression\data\ps_benzin.csv", opts);

scatter(HpVsFuel.hubraum, HpVsFuel.L_100km);
scatter(HpVsFuel.hubraum, HpVsFuel.ps);
scatter(HpVsFuel.cyl, HpVsFuel.L_100km);
scatter(HpVsFuel.ps, HpVsFuel.L_100km);
scatter(HpVsFuel.carb, HpVsFuel.L_100km);

fitFuel = fitlm(HpVsFuel,"L_100km~hubraum")

plot(fitFuel);
plotResiduals(fitFuel,"probability");
%% Ozongehalt im Zusammenhang mit Sonneneinstrahlung, Temperatur und Wind

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 7);

% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["Observation", "Ozone", "Solar_R", "Wind", "Temp", "Month", "Day"];
opts.VariableTypes = ["int16", "double", "double", "double", "double", "categorical", "int16"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, ["Ozone", "Solar_R"], "EmptyFieldRule", "auto");

% Import the data
airquality = readtable("C:\Users\Ioannis\Desktop\GitHub\MATLAB\linear_regression\data\airquality.csv", opts);

model = fitlm([airquality.Temp, airquality.Wind, airquality.Solar_R], airquality.Ozone)

plot(model);
plotResiduals(model,"probability");