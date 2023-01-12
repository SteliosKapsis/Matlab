%load dataset
load carbig
%create table
cartable = table(Acceleration, Cylinders, Displacement, Horsepower, Model_Year, MPG, Weight, Origin);
%split dataset 80% and 20%
PD = 0.80;
cv = cvpartition(size(cartable,1),'HoldOut',PD);
Cartrain = cartable(cv.training,:);
Cartest = cartable(cv.test,:);

%% three different classification models
%% test1
yfit = Narrow_Neural_Network_Car.predictFcn(Cartest)

%% test2
yfit = Medium_Neural_Network_Car.predictFcn(Cartest)

%% test3
yfit = KNN_Car.predictFcn(Cartest)