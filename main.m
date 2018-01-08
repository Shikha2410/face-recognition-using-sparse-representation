load YaleB_32x32.mat;

% Normalizng Face Matrix 
fea=normc(fea);

% Change dimesions value if requred
eigenFacesDim = 30;
fisherFacesDim = 5;

%rate   = WSRC_Full(fea,gnd);
rateEF = WSRC_EF(fea, gnd, eigenFacesDim);
rateFF = WSRC_FF(fea, gnd, fisherFacesDim);

%X = ['Accuracy with no reduction', num2str(rate)];
Y = ['Accuracy with eigen faces & Dimension ', num2str(eigenFacesDim),' = ',num2str(rateEF)];
Z = ['Accuracy with fisher faces & Dimension ',num2str(fisherFacesDim),' = ',num2str(rateFF)];

%disp(X)
disp(Y)
disp(Z)
