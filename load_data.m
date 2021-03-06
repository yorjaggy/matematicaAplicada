%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: /Users/yorjaggy/Documents/git_repos/matematicaAplicada/data.xlsx
%    Worksheet: Data2.txt
%
% To extend the code for use with different selected data or a different
% spreadsheet, generate a function instead of a script.

% Auto-generated by MATLAB on 2017/04/07 21:03:16

%% Import the data
[~, ~, raw] = xlsread('/Users/yorjaggy/Documents/git_repos/matematicaAplicada/data.xlsx','Data2.txt');
raw = raw(2:end,:);

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Allocate imported array to column variable names
t = data(:,1);
y = data(:,2);

%% Clear temporary variables
clearvars data raw;