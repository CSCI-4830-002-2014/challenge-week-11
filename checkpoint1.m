clear all; close all;
%%%%%%%%%%%%%% Change path %%%%%%%%%%%%%%%%
filename_path = '/home/a/alts7394/Documents/MATLAB/challenge-week-11/raw_touch_data.csv';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%% Choose feature source %%%%%%%%%%%
add_accelerometer = false; % Adds accelerometer features
add_gyroscope = false; % Adds gyroscope features
add_magneticField = true; % Adds magnetic field features
add_gravity = false; % Adds gravity features
add_linearAcceleration = false; % Adds linear acceleration features
add_orientation = false; % Adds azimuth, pich and roll features
add_light = true; % Adds light value
add_proximity = false; % Adds proximity value
add_studentID = false; % Adds student ID
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%% Choose machine learning classifier parameters %%%%%%%%%%%%%%%
numTrees = 10; % Try different number of trees for the Random Forest classifier
sigma = 1; % Try different values of sigma for the Support Vector Machine classifier
dist = 'kernel'; % Try different distributions = {'normal', 'kernel', 'mvmn' , 'mn'} for Naive Bayes classifier
K = 20; % Try different values of K for the K-nearest Neighbor classifier
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Main code starts here (you don't need to change anything here)
data = csvread(filename_path,1,0);
numTouch = data(end,28);

feat = []; feat_acc = []; feat_gyr = []; feat_mg = []; feat_grav = []; feat_lacc = []; feat_or = []; feat_light = []; feat_prox = []; feat_sID = [];
for i = 1: numTouch
    temp = find(data(:,28) == i);
    if add_accelerometer == true
        feat_acc = compute3axialFeat(data(temp, [2 3 4]));
    end
    if add_gyroscope == true
        feat_gyr = compute3axialFeat(data(temp, [5 6 7]));
    end
    if add_magneticField == true
        feat_mf = compute3axialFeat(data(temp, [8 9 10]));
    end
    if add_gravity == true
        feat_grav = compute3axialFeat(data(temp, [11 12 13]));
    end
    if add_linearAcceleration == true
        feat_lacc = compute3axialFeat(data(temp, [14 15 16]));
    end
    if add_orientation == true
        feat_or = compute3axialFeat(data(temp, [21 22 23]));
    end
    if add_light == true
        feat_light = mean(data(temp,24));
    end
    if add_proximity == true
        feat_prox = mean(data(temp,25));
    end
    if add_studentID == true
        feat_sID = data(temp(1),26);
    end

        
    feat = [feat ; feat_acc feat_gyr feat_mg feat_grav feat_lacc feat_or feat_light feat_prox feat_sID];
    label(i) = data(temp(1),29);
end


% Divide data into training and test sets
temp = 1: numTouch;
temp=temp(randperm(length(temp))); % Shaffle data points
train = temp(1:round(0.50*length(temp))); % train samples (50% of data samples)
test = temp(round(0.50*length(temp))+1:end); % test samples (remaining 50% of data samples)

% Classify using K-nearest neighbor
%prediction = knnclassify(feat(test,:), feat(train, :), label(train), K);
%accuracyKNN = numel(find(prediction == label(test)'))/length(test)*100

% Classify using Naive Bayes
%NB = NaiveBayes.fit(feat(train,:),label(train),'Distribution', dist);
%prediction = NB.predict(feat(test,:));
%accuracyNB = numel(find(prediction == label(test)'))/length(test)*100

% Classify using SVM
%SVMstruct = svmtrain(feat(train,:), label(train), 'kernel_function','rbf','rbf_sigma',sigma); 
%prediction = svmclassify(SVMstruct, feat(test,:));
%accuracySVM = numel(find(prediction == label(test)'))/length(test)*100

% Classify using Random Forest
b = TreeBagger(numTrees,feat(train,:),label(train)');
prediction_cell = predict(b,feat(test,:));
for i = 1: length(prediction_cell)
    prediction(i) = str2num(prediction_cell{i});
end
accuracyRF = numel(find(prediction == label(test)'))/length(test)*100
