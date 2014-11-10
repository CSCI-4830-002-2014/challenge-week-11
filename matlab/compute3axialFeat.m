function feat = compute3axialFeat(data)

X = data(:,1); % X axis
Y = data(:,2); % Y axis
Z = data(:,3); % Z axis
XYZ = sqrt((X.^2+Y.^2+Z.^2)); 

% Compute mean, standard deviation, max and min features
feat = [mean(X) mean(Y) mean(Z) mean(XYZ) std(X) std(Y) std(Z) std(XYZ) max(X) max(Y) max(Z) max(XYZ) min(X) min(Y) min(Z) min(XYZ) ];

end