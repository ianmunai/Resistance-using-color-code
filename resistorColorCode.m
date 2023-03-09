clear
clc
close all

% Resistor color code calculator in MATLAB

% Define color codes and their corresponding values
colors = {'black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'gray', 'white'};
tolerance = {'gold', 'silver', 'none'};
values = [0 1 2 3 4 5 6 7 8 9];
multiplier = [1 10 100 1e3 1e4 1e5 1e6 1e7 1e8];
tolerance_values = [0.05 0.1 0.2];

% Prompt user to input color bands
band1 = input('Enter color of first band: ', 's');
band2 = input('Enter color of second band: ', 's');
band3 = input('Enter color of third band: ', 's');
band4 = input('Enter color of fourth band: ', 's');

% Calculate resistance value
value = (values(find(strcmp(band1, colors))) * 10 + values(find(strcmp(band2, colors)))) * multiplier(find(strcmp(band3, colors)));
tolerance_value = tolerance_values(find(strcmp(band4, tolerance)));

% Display result
fprintf('Resistance value: %.2f ohms with a tolerance of +/- %.2f%%\n', value, tolerance_value * 100);
