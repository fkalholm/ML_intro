clear all;
close all;
clc
data = load('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

med=0;
for i = 1:length(X(1,:))
  med(i)=mean(X(:,i));
  sav(i)=std(X(:,i));
end


for i=1:length(X(1,:))
  
X_norm(:,i) = (X(:,i)-med(i))./sav(i);
end
X_norm
mu = zeros(1, size(X, 2))
sav