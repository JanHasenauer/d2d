% Load models & data

arInit
arLoadModel('il13_jak2_stat5', 1);
arLoadData('MedB1_real_data', 1);
arParseModel;
arWriteCFiles;
arLink;

% load best fit parameter values
arLoadPars('BestFit');

arPlot;
arPrint;