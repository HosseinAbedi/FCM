clear all
clc
addpath('fcm')
load('fcm/iris.mat')

c = 3;
metric = @euclidean;
X = iris(1:150,  1:4);
m = 1.5;
Max = 1000;
tol = 1e-3;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Data Normalization
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[nr nc] = size(X);
for i = 1:nc
   for j = 1:nr
     data(j, i) = (X(j, i)-std(X(:, i)))/mean(X(:, i));
   end
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Running the Algorithms
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%***************FCM************************
[prediction,v] = fcm(c, data, m, metric, Max, tol);
%v
%prediction
