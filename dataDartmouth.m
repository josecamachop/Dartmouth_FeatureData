%% Dartmouth feature data
% Not for share
%
% coded by: Jose Camacho (josecamacho@ugr.es)
% last modification: 05/Jun/2023
%
% Copyright (C) 2023  University of Granada, Granada
% 
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.

%% Data
%
% x: [2548 x 92] feature data
% xlog_2cent: [2548 x 92] log transformed feature data, double centered
% obs_l: [1 x 2548] observation label (timestamp)
% var_l: [1 x 92] feature label
% classy: [2548 x 4] classes for the observations: year, quarter, week, workday/weekend. 

clc
clear
load matlab/DartmouthFeature

% Write to excel
filename = 'excel/DartmouthFeature.xlsx';
Tx = array2table(x,'RowNames',obs_l,'VariableNames',var_l);
writetable(Tx,filename,'WriteRowNames',true,'Sheet','X','Range','A1','FileType','spreadsheet');

Ty = array2table(xlog_2cent,'RowNames',obs_l,'VariableNames',var_l);
writetable(Ty,filename,'WriteRowNames',true,'Sheet','Xlog_2cent','Range','A1','FileType','spreadsheet');

Tcl = array2table(classy,'RowNames',obs_l,'VariableNames',{'Year', 'Quarter', 'Week', 'WorkdayWeekend'});
writetable(Tcl,filename,'WriteRowNames',true,'Sheet','Test X','Range','A1','FileType','spreadsheet');


% Write to csv
filename = 'csv/DartmouthFeature.X.csv';
writetable(Tx,filename,'WriteRowNames',true,'FileType','text');

filename = 'csv/DartmouthFeature.Xlog_2cent.csv';
writetable(Ty,filename,'WriteRowNames',true,'FileType','text');

filename = 'csv/DartmouthFeature.Class.csv';
writetable(Tcl,filename,'WriteRowNames',true,'FileType','text');


