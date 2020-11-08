%% Prüfung 1
%% Aufgabe 3:
% 1) Lesen Sie die Daten der Datei "*MET Office Weather Data .csv*" in die Matlab 
% Variable _*data*_ ein.

opts = delimitedTextImportOptions("NumVariables", 8);

% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["year", "month", "tmax", "tmin", "af", "rain", "sun", "station"];
opts.VariableTypes = ["int16", "int8", "double", "double", "categorical", "double", "double", "categorical"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, ["af", "station"], "EmptyFieldRule", "auto");

% Import the data
data = readtable("C:\Users\Ioannis\Desktop\Github_Repos\MATLAB\Wetterstation\MET_Office_Weather_Data.csv", opts);

% Clear temporary variables
clear opts
%% 
% 2) Bereiten Sie diese Variable so auf, dass Sie mit den Daten _*rain*_, _*sun*_, 
% _*tmin*_, _*tmax*_ rechnen können.

data = rmmissing(data);
%% 
% 3) Entfernen Sie die Spalte _*af*_ aus den Daten.

data = data(:,{'year', 'month', 'station', 'tmin','tmax','rain','sun'});
%% 
% 4) Bestimmen Sie die Wetterstation, welche die grösste Summe an Niederschlag 
% pro Monat hat (über die gesamte Messzeit).

stationSummaryMonth = groupsummary(data, {'station','month'}, {'median', 'mean', 'sum' }, {'rain','sun','tmin','tmax'});
[maxVal, idx] = max( stationSummaryMonth.sum_rain );
%% 
% 5) Bestimmen Sie die Datenmenge, welche nur die Jahresdaten dieser, in *Teilaufgabe 
% 4.* bestimmten Wetterstation beinhalten.

stationSummaryYear = groupsummary(data, {'station','year'}, {'median', 'mean' ,'sum' }, {'rain','sun','tmin','tmax'});
maxRainStation = stationSummaryMonth(idx,'station').station;

maxRainStationYearData = stationSummaryYear(stationSummaryYear.station==maxRainStation,:);
%% 
% 6) Erstellen Sie ein kombiniertes Diagramm, mit _zwei Unterdiagrammen_, welche 
% untereinander stehen. Alle Diagramme beziehen sich auf die Datenmenge aus *Aufgabe 
% 5*.
%% 
% * Das erste Unterdiagramm soll den Temperaturverlauf von Messbeginn bis Messende 
% für die daten median_tmin und median_tmax darstellen.  Das Diagramm soll einen 
% Titel, Achsenbeschriftungen sowie eine Legende haben.
% * Das zweite Unterdiagramm soll die Sonnenscheindauer (*mdian_sun*) und die 
% mittlere Regenmenge (*median_rain*) über die gesamte Messperiode darstellen. 
% Achtung: die Sonnenscheindauer und die Regenmenge haben unterschiedliche Einheiten 
% und dürfen nicht auf derselben y-Achse dargestellt werden! Das Diagramm soll 
% einen _*Titel*_, _*Achsenbeschriftungen*_ sowie eine _*Legende*_ haben.

tiledlayout(2,1);

l1 = nexttile;
plot(l1, maxRainStationYearData.year,maxRainStationYearData.median_tmin);
hold on;
plot(l1, maxRainStationYearData.year,maxRainStationYearData.median_tmax);
hold off;
title(l1,"Temperature development" );
xlabel(l1,"observation period (years)");
ylabel(l1,"temperature (degree C)");
legend(l1,"median tmin", "median tmax");

l2 = nexttile;
yyaxis left;
plot(l2, maxRainStationYearData.year, maxRainStationYearData.median_sun);
ylabel(l2, "sun shine duration (h)");
yyaxis right
plot(l2, maxRainStationYearData.year, maxRainStationYearData.median_rain);
ylabel(l2,"rain fall (inch)");

title(l2, "Sun and rain");
xlabel(l2, "observation period (years)");

legend(l2, "sun shine", "rain fall");