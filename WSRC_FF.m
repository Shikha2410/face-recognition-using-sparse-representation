function rate = WSRC_FF(fea, gnd, dim)

% Feature Extraction: Fisher Faces 
CombinedData = horzcat(gnd, fea) ;
FisherFaces = compute_mapping(CombinedData, 'LDA', dim);

% Partition Data
[trainDataFF,testDataFF,trainLabelFF,testLabelFF]=DataPartition(FisherFaces,gnd,10);

%Run WSRC
[rate predictlabelFF] = WSRC( trainDataFF.' ,trainLabelFF.' ,testDataFF.' , testLabelFF.' );