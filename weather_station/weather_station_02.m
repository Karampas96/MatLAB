%% Setup the Import Options and import the data

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
weatherD = readtable("C:\Users\Ioannis\Desktop\Github_Repos\MATLAB\Wetterstation\MET_Office_Weather_Data.csv", opts);

%% Clear temporary variables
clear opts
%% cleanup NaN

wDfixed = rmmissing(weatherD);
removedRows = height(weatherD) - height(wDfixed);

%% compute dataset of year 2020
data2020 = wDfixed(wDfixed.year==2020,:);
test = categories(data2020.station)

%% compute above/below median
aboveMedian = data2020(data2020.tmin > median(data2020.tmin),:)
%belowMedian = data2020(data2020.tmin <= median(data2020.tmin),:)
belowMedian = setdiff(data2020, aboveMedian)

%intersect(aboveMedian, belowMedian)

%% compute lower and upper quartile
upperQuartile = aboveMedian(aboveMedian.tmin <= median( aboveMedian.tmin ),:);
aboveUpperQ = setdiff(aboveMedian, upperQuartile);
lowerQuartile = belowMedian(belowMedian.tmin > median(belowMedian.tmin),:);
belowLowerQ = setdiff(belowMedian, lowerQuartile);

%% compute union of upper and lower quartile
box = union(upperQuartile, lowerQuartile);
%stations = categories(box.station);
stations = groupsummary(box, "station");

%% compute the same using the diffset operation
box2 = setdiff(setdiff(data2020, aboveUpperQ), belowLowerQ); 
all(box2.station == box.station)
