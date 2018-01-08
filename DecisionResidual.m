function [accuracy predictlabel] = DecisionResidual( trainData ,trainLabel ,testData , testLabel , Coeff_Test )

testSize = size(testData,2) ;
classCount = length( unique(trainLabel) ) ;

R = zeros( classCount , testSize ) ;
for k = 1 : classCount
    index = find( trainLabel ~= k ) ;
    delta_Coeff = Coeff_Test ;
    delta_Coeff( index , : ) = 0 ;
    temR = testData - trainData * delta_Coeff ;   
    for i = 1 : testSize
        index = find( trainLabel ~= k ) ;
        delta_Coeff = Coeff_Test ;
        delta_Coeff( index , : ) = 0 ;
        R(k,i) = norm( temR(:,i) )^2/ norm(delta_Coeff(:,i));
    end
end
[Rmin predictlabel] = min( R ) ;    % find the minimum residual
accuracy = length( find( predictlabel == testLabel ) ) / testSize ;  % Recognition rate


