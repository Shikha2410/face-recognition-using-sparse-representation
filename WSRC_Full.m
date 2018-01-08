function rate = WSRC_Full(fea,gnd)

% Partition Data
[trainData,testData,trainLabel,testLabel]=DataPartition(fea,gnd,10);

%Run WSRC
[rate predictlabel] = WSRC( trainData.' ,trainLabel.' ,testData.' , testLabel.' );
