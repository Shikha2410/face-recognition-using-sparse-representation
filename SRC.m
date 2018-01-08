function [rate predictlabel] = SRC( trainData ,trainLabel ,testData , testLabel )

trainSize = size( trainData , 2 ) ; 
testSize = size( testData , 2 ) ;

% normalize 
for i = 1 : trainSize
    trainData(:,i) = trainData(:,i) / norm( trainData(:,i) ) ;
end

for i = 1 : testSize
    testData(:,i) = testData(:,i) / norm( testData(:,i) ) ;
end

sigma = 0;
W = SimilarityMatrix( trainData , testData , sigma ) ;

% classify
param.lambda = 0.0001 ;
param.mode = 1 ;       % penalized formulation
param.verbose = false ;
A = mexLassoWeighted( testData , trainData , W , param ) ;
[rate predictlabel] = DecisionResidual( trainData ,trainLabel ,testData , testLabel , A ) ;
