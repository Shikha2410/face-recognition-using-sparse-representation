function W = SimilarityMatrix( trainData  , testData  , sigma )

if nargin < 3
    sigma = 0 ;
end

trainSize  = size( trainData  , 2 ) ;
testSize  = size( testData  , 2 ) ;

W = zeros( trainSize  , testSize  ) ; 
for j = 1 : testSize 
   for i = 1 : trainSize 
      W(i,j) = norm( trainData (:,i) - testData (:,j) ) ;
   end
end

W = exp( W / sigma ) ;  