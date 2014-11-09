# Name

write-your-name

# How many points have you earned?

0/100

(Make your own calculation and replace the number 0 with the points you think you've earned.)

# How many hours have you spent on this?

fill-in-your-answer

# When did you first start working on this week's learning challenges?

fill-in-your-answer

# What is the most difficult part about this week's challenge?

fill-in-your-answer

# Graph Database I

## Checkpoints (5 points x 3 = 15 points)

### 1. (5 point)

![screenshot](https://www.dropbox.com/s/cjg7r4wuhs7mih0/Screenshot%202014-11-08%2014.02.17.png?dl=1)

### 2. (5 point)

![screenshot](https://www.dropbox.com/s/xujkdmlsl2omyft/Screenshot%202014-11-08%2014.03.51.png?dl=1)

### 3. (5 point)

![screenshot](https://www.dropbox.com/s/gswflq6mgvfexj9/Screenshot%202014-11-08%2014.06.01.png?dl=1)

# MongoDB IV

## Challenges (5 points x 4 = 20 points)

### 1. (5 point)

Count

![screenshot](https://www.dropbox.com/s/pm240wb9vudf8k9/Screenshot%202014-11-08%2017.00.37.png?dl=1)

FindOne

![screenshot](https://www.dropbox.com/s/ebqj1nxmp2buk8d/Screenshot%202014-11-08%2017.00.21.png?dl=1)


Query

![screenshot](https://www.dropbox.com/s/jj0zgikky8xfiom/Screenshot%202014-11-08%2017.02.21.png?dl=1)


### 2. (5 point)

Count

![screenshot](https://www.dropbox.com/s/k380ya8z1y0sff5/Screenshot%202014-11-08%2016.57.10.png?dl=1)

FindOne

![screenshot](https://www.dropbox.com/s/k380ya8z1y0sff5/Screenshot%202014-11-08%2016.57.10.png?dl=1)


Query

![screenshot](https://www.dropbox.com/s/pvc09zqftof17fy/Screenshot%202014-11-08%2017.03.37.png?dl=1)

### 3. (5 point)

Count

![screenshot](https://www.dropbox.com/s/o5xxwo1a66grzuj/Screenshot%202014-11-08%2017.42.21.png?dl=1)

FindOne

![screenshot](https://www.dropbox.com/s/wqful68s0t56sj1/Screenshot%202014-11-08%2017.42.43.png?dl=1)


Query

![screenshot](https://www.dropbox.com/s/fzpobns1hw7s591/Screenshot%202014-11-08%2017.44.33.png?dl=1)


### 4. (5 point)

Count

![screenshot](https://www.dropbox.com/s/j4140583fhzqr58/Screenshot%202014-11-09%2011.47.37.png?dl=1)

FindOne

![screenshot](https://www.dropbox.com/s/ywkrc6ugebyobd8/Screenshot%202014-11-09%2011.48.12.png?dl=1)

Query 1

```javascript
db.ebird.find({"OBSERVATION DATE" : "2004-11-20"}, {"LOCATION":1}).pretty()
```

![screenshot](https://www.dropbox.com/s/zggz4g8l13nujm2/Screenshot%202014-11-09%2011.55.40.png?dl=1)

Query 2

```javascript
db.ebird.distinct("LOCALITY", {"LOCATION.COUNTY" : "Boulder"})
```

![screenshot](https://www.dropbox.com/s/cenhucetrg9n1hw/Screenshot%202014-11-09%2012.09.04.png?dl=1)


# Machine Learning III

## Checkpoints (5 points x 2 = 10 points)

### 1. (5 point)

![screenshot](https://www.dropbox.com/s/xwcu3iigk0o82x4/Screenshot%202014-11-09%2012.44.55.png?dl=1)

### 2. (5 point)

![screenshot](https://www.dropbox.com/s/rhz8advevpfhbmq/Screenshot%202014-11-09%2012.48.04.png?dl=1)

## Challenges (5 points x 4 = 20 points)

### 1. (5 point)

Accuracy = {80.3279}

Features/Parameters

	%%%%%%%%% Choose feature source %%%%%%%%%%%
	add_accelerometer = true; % Adds accelerometer features
	add_gyroscope = true; % Adds gyroscope features
	add_magneticField = true; % Adds magnetic field features
	add_gravity = true; % Adds gravity features
	add_linearAcceleration = true; % Adds linear acceleration features
	add_orientation = true; % Adds azimuth, pich and roll features
	add_light = true; % Adds light value
	add_proximity = true; % Adds proximity value
	add_studentID = false; % Adds student ID
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	 
	%%%%%%%%% Choose machine learning classifier parameters %%%%%%%%%%%%%%%
	numTrees = {TODO}; % Try different number of trees for the Random Forest classifier
	sigma = {TODO}; % Try different values of sigma for the Support Vector Machine classifier
	dist = {TODO}; % Try different distributions = {'normal', 'kernel', 'mvmn' , 'mn'} for Naive Bayes classifier
	K = 1; % Try different values of K for the K-nearest Neighbor classifier
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

### 2. (5 point)

Accuracy = {70.4918}

Features/Parameters

	%%%%%%%%% Choose feature source %%%%%%%%%%%
	add_accelerometer = true; % Adds accelerometer features
	add_gyroscope = true; % Adds gyroscope features
	add_magneticField = true; % Adds magnetic field features
	add_gravity = true; % Adds gravity features
	add_linearAcceleration = true; % Adds linear acceleration features
	add_orientation = true; % Adds azimuth, pich and roll features
	add_light = true; % Adds light value
	add_proximity = true; % Adds proximity value
	add_studentID = false; % Adds student ID
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	 
	%%%%%%%%% Choose machine learning classifier parameters %%%%%%%%%%%%%%%
	numTrees = {TODO}; % Try different number of trees for the Random Forest classifier
	sigma = {TODO}; % Try different values of sigma for the Support Vector Machine classifier
	dist = kernel; % Try different distributions = {'normal', 'kernel', 'mvmn' , 'mn'} for Naive Bayes classifier
	K = {TODO}; % Try different values of K for the K-nearest Neighbor classifier
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

### 3. (5 point)

Accuracy = 86.3067

Features/Parameters

	%%%%%%%%% choose feature source %%%%%%%%%%%
	add_accelerometer = true; % adds accelerometer features
	add_gyroscope = true; % adds gyroscope features
	add_magneticfield = true; % adds magnetic field features
	add_gravity = true; % adds gravity features
	add_linearacceleration = true; % adds linear acceleration features
	add_orientation = true; % adds azimuth, pich and roll features
	add_light = true; % adds light value
	add_proximity = true; % adds proximity value
	add_studentid = false; % adds student id
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	 
	%%%%%%%%% choose machine learning classifier parameters %%%%%%%%%%%%%%%
	numtrees = {todo}; % try different number of trees for the random forest classifier
	sigma = 10; % try different values of sigma for the support vector machine classifier
	dist = normal; % try different distributions = {'normal', 'kernel', 'mvmn' , 'mn'} for naive bayes classifier
	k = {todo}; % try different values of k for the k-nearest neighbor classifier

### 4. (5 point)

Accuracy = 85.2459

Features/Parameters

	%%%%%%%%% choose feature source %%%%%%%%%%%
	add_accelerometer = true; % adds accelerometer features
	add_gyroscope = true; % adds gyroscope features
	add_magneticfield = true; % adds magnetic field features
	add_gravity = true; % adds gravity features
	add_linearacceleration = true; % adds linear acceleration features
	add_orientation = true; % adds azimuth, pich and roll features
	add_light = true; % adds light value
	add_proximity = true; % adds proximity value
	add_studentid = false; % adds student id
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	 
	%%%%%%%%% choose machine learning classifier parameters %%%%%%%%%%%%%%%
	numtrees = 6; % try different number of trees for the random forest classifier
	sigma = 10; % try different values of sigma for the support vector machine classifier
	dist = normal; % try different distributions = {'normal', 'kernel', 'mvmn' , 'mn'} for naive bayes classifier
	k = {todo}; % try different values of k for the k-nearest neighbor classifier


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
