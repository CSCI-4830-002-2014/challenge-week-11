# Name

Michael Aaron

# How many points have you earned?

93/100 [points docced from Mongo]

(Make your own calculation and replace the number 0 with the points you think you've earned.)

# How many hours have you spent on this?

4

# When did you first start working on this week's learning challenges?

6:00 pm

# What is the most difficult part about this week's challenge?

Wondering why this question is at the start instead of the end. My confusion is overwhelming

# Graph Database I

## Checkpoints (5 points x 3 = 15 points)

### 1. (5 point)

![screenshot](https://www.dropbox.com/s/ik9zyb9ydw2zw1s/Screenshot%202014-11-05%2018.21.29.png?dl=1)

### 2. (5 point)

![screenshot](https://www.dropbox.com/s/t7eqg952wjl5ns9/Screenshot%202014-11-07%2013.25.41.png?dl=1)

### 3. (5 point)

![screenshot](https://www.dropbox.com/s/u4rhpj00ibxf0b3/Screenshot%202014-11-07%2013.27.14.png?dl=1)

# MongoDB IV

## Challenges (5 points x 4 = 20 points)

### 1. (5 point)

find({type: "Review"}).count()

![screenshot](https://www.dropbox.com/s/p0d30u5a2z3maq0/Screenshot%202014-11-07%2014.26.17.png?dl=1)


### 2. (5 point)

The file is a huge bitch on windows and I don't want to install a VM due to harddrive concerns - I'll take the 5 point hit on this after spending like 2 hours trying to get the file to parse (the line endings are being a pain)

### 3. (5 point)

db.tist_data.Count()

![screenshot](https://www.dropbox.com/s/u3klppzhy0xkifo/Screenshot%202014-11-10%2013.06.01.png?dl=1)

FindOne
db.tist_data.findOne()
![screenshot](https://www.dropbox.com/s/p28qxvgl7h578sn/Screenshot%202014-11-10%2013.06.33.png?dl=1)


Query.find({Country: "IN"})

![screenshot](https://www.dropbox.com/s/p48uvo85bky0ksi/Screenshot%202014-11-10%2013.09.27.png?dl=1)


### 4. (5 point)

Count

![screenshot](screenshot.png)

FindOne

![screenshot](screenshot.png)

Query 1

![screenshot](screenshot.png)

Query 2

![screenshot](screenshot.png)


# Machine Learning III

## Checkpoints (5 points x 2 = 10 points)

### 1. (5 point)

![screenshot](https://www.dropbox.com/s/z897ewhdeyymdbi/Screenshot%202014-11-10%2014.05.15.png?dl=1ls)

### 2. (5 point)
Yes, accuracy increased with the change 
![screenshot](https://www.dropbox.com/s/pyy0uhqfrkpzcre/Screenshot%202014-11-10%2014.08.49.png?dl=1)

## Challenges (5 points x 4 = 20 points)

### 1. (5 point)

Accuracy = 82.4694

Features/Parameters %%%%%%%%% Choose feature source %%%%%%%%%%% add_accelerometer = false; % Adds accelerometer features add_gyroscope = false; % Adds gyroscope features add_magneticField = true; % Adds magnetic field features add_gravity = false; % Adds gravity features add_linearAcceleration = false; % Adds linear acceleration features add_orientation = false; % Adds azimuth, pich and roll features add_light = true; % Adds light value add_proximity = false; % Adds proximity value add_studentID = false; % Adds student ID %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%% Choose machine learning classifier parameters %%%%%%%%%%%%%%% numTrees = 1; % Try different number of trees for the Random Forest classifier sigma = 1; % Try different values of sigma for the Support Vector Machine classifier dist = 'normal'; % Try different distributions = {'normal', 'kernel', 'mvmn' , 'mn'} for Naive Bayes classifier K = 2; % Try different values of K for the K-nearest Neighbor classifier %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	 
### 2. (5 point)

Accuracy = {fill-in-your-best-number}

Accuracy = 68.756

Features/Parameters

%%%%%%%%% Choose feature source %%%%%%%%%%% add_accelerometer = true; % Adds accelerometer features add_gyroscope = true; % Adds gyroscope features add_magneticField = false; % Adds magnetic field features add_gravity = false; % Adds gravity features add_linearAcceleration = false; % Adds linear acceleration features add_orientation = false; % Adds azimuth, pich and roll features add_light = true; % Adds light value add_proximity = true; % Adds proximity value add_studentID = true; % Adds student ID %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%% Choose machine learning classifier parameters %%%%%%%%%%%%%%% numTrees = 1; % Try different number of trees for the Random Forest classifier sigma = 1; % Try different values of sigma for the Support Vector Machine classifier dist = 'normal'; % Try different distributions = {'normal', 'kernel', 'mvmn' , 'mn'} for Naive Bayes classifier K = 2; % Try different values of K for the K-nearest Neighbor classifier %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

### 3. (5 point)

Accuracy = 66.7823

Features/Parameters

	%%%%%%%%% Choose feature source %%%%%%%%%%%
	add_accelerometer = {TODO}; % Adds accelerometer features
	add_gyroscope = {TODO}; % Adds gyroscope features
	add_magneticField = {TODO}; % Adds magnetic field features
	add_gravity = {TODO}; % Adds gravity features
	add_linearAcceleration = {TODO}; % Adds linear acceleration features
	add_orientation = {TODO}; % Adds azimuth, pich and roll features
	add_light = {TODO}; % Adds light value
	add_proximity = {TODO}; % Adds proximity value
	add_studentID = {TODO}; % Adds student ID
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	 
	%%%%%%%%% Choose machine learning classifier parameters %%%%%%%%%%%%%%%
	numTrees = {TODO}; % Try different number of trees for the Random Forest classifier
	sigma = {TODO}; % Try different values of sigma for the Support Vector Machine classifier
	dist = {TODO}; % Try different distributions = {'normal', 'kernel', 'mvmn' , 'mn'} for Naive Bayes classifier
	K = {TODO}; % Try different values of K for the K-nearest Neighbor classifier
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

### 4. (5 point)

Accuracy = 79.6528

Features/Parameters

%%%%%%%%% Choose feature source %%%%%%%%%%% add_accelerometer = true; % Adds accelerometer features add_gyroscope = true; % Adds gyroscope features add_magneticField = false; % Adds magnetic field features add_gravity = false; % Adds gravity features add_linearAcceleration = false; % Adds linear acceleration features add_orientation = false; % Adds azimuth, pich and roll features add_light = true; % Adds light value add_proximity = true; % Adds proximity value add_studentID = true; % Adds student ID %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%% Choose machine learning classifier parameters %%%%%%%%%%%%%%% numTrees = 1; % Try different number of trees for the Random Forest classifier sigma = 10; % Try different values of sigma for the Support Vector Machine classifier dist = 'normal'; % Try different distributions = {'normal', 'kernel', 'mvmn' , 'mn'} for Naive Bayes classifier K = 2; % Try different values of K for the K-nearest Neighbor classifier %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


# D3 (VI) (5 points x 7 = 35 points)

### 1. (5 point)

![screenshot](screenshot.png)

### 2. (5 point)

![screenshot](screenshot.png)

### 3. (5 point)

![screenshot](screenshot.png)

### 4. (5 point)

![screenshot](screenshot.png)

### 5. (5 point)

![screenshot](screenshot.png)

### 6. (5 point)

![screenshot](screenshot.png)

### 7. (5 point)

![screenshot](screenshot.png)
