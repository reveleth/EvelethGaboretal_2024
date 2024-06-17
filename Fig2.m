clear
clc
close all


%% Set up the Import Options and import the data - Discharge
opts = spreadsheetImportOptions("NumVariables", 7);

% Specify sheet and range
opts.Sheet = "Q";
opts.DataRange = "B1:H20082";

% Specify column names and types
opts.VariableNames = ["CFS", "Year", "Month", "Day", "Hour", "Minute", "Second"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double"];

% Import the data
MaumeeRiverQ = readtable("/Users/gabor.40/Dropbox/Lake Erie Data/2023GRCPoster/MaumeeRiverQ.xlsx", opts, "UseExcel", false);

%% Set up the Import Options and import the data - Conductivity
opts = spreadsheetImportOptions("NumVariables", 6);

% Specify sheet and range
opts.Sheet = "Cond";
opts.DataRange = "E1:J14109";

% Specify column names and types
opts.VariableNames = ["Year", "Month", "Day", "Hour", "Min", "Cond"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double"];

% Import the data
MaumeeRiverC = readtable("/Users/gabor.40/Dropbox/Lake Erie Data/2023GRCPoster/MaumeeRiverQ.xlsx", opts, "UseExcel", false);


%% Clear temporary variables
clear opts

%% Clear temporary variables
clear opts
MTime=datetime(MaumeeRiverQ.Year,MaumeeRiverQ.Month,MaumeeRiverQ.Day,MaumeeRiverQ.Hour,MaumeeRiverQ.Minute,MaumeeRiverQ.Second);
figure(1)

p=plot(MTime, MaumeeRiverQ.CFS*0.0283)
p.LineWidth = 3;
p.Color = 'k';
ylabel('Discharge (cms)')
hold on
d1=plot(datetime([2022 2022],[6 6],[8 8]),[0 1000])
d1.LineWidth=2;
d1.LineStyle = ':'
d1.Color = 'k'
text(datetime(2022,6,10),850,'June 8')

d2=plot(datetime([2022 2022],[8 8],[2 2]),[0 1000])
d2.LineWidth=2;
d2.LineStyle = ':'
d2.Color = 'k'
text(datetime(2022,8,12),850,'August 2')

d3=plot(datetime([2022 2022],[10 10],[27 27]),[0 1000])
d3.LineWidth=2;
d3.LineStyle = ':'
d3.Color = 'k'
text(datetime(2022,10,0),850,'October 27')
datetick('x','mmm','keeplimits')
grid on


