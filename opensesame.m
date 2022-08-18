clear all;
addpath(genpath('C:\Users\dillo\Documents\MATLAB\v2p6\tdmsSubfunctions'));
filePath = 'C:\Users\dillo\Desktop\shg data\2022\03-03-2022\32r\1000ms\100\test.tdms';

% og = struct; 
% og.fullPathsKeep = {'/''Data''/''Trigger'''};

%data = TDMS_getStruct(filePath,4,{'GET_DATA_OPTION','getsubset','OBJECTS_GET',og});
% params = {'GET_DATA_OPTION','getnone'};
% tempOutput = TDMS_readTDMSFile(filePath,params{:});
% [output,nav] = TDMS_dataToGroupChanStruct_v2(tempOutput);
my_tdms_struct = TDMS_getStruct(filePath);
% writetable(struct2table(my_tdms_struct.Untitled.Untitled.data), 'somefile.txt');
Q = my_tdms_struct.Untitled.Untitled.data;
R = Q.';
R(1,:) = [];
R(1025:1054,:) = [];
writematrix(R, 'C:\Users\dillo\Desktop\shg data\2022\03-03-2022\32r\1000ms\100\Sheet1.txt');