function rate = WSRC_EF(fea, gnd, dim)

% Feature Extraction: Eigen Faces 
EigenFaces = compute_mapping(fea, 'PCA', dim);

% Partition Data
[trainDataEF,testDataEF,trainLabelEF,testLabelEF]=DataPartition(EigenFaces,gnd,10);

%Run WSRC
[rate predictlabelEF] = WSRC( trainDataEF.' ,trainLabelEF.' ,testDataEF.' , testLabelEF.' );
