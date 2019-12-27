M=csvread('climate_change_1.csv',1,0);
Y = M(1:284,11);
X = [ones(284,1),M(1:284,3:10)];

n = size(X,2)
m = size(X,1)
theta = [-100;0;0;0;0;0;0;0;-1];
temp = zeros(n,1);
k = 0;%iteration times
alpha = 0.00001 %learning rate
while true
    for j = 1:n
        theta(j) = theta(j) - (alpha*sum((X*theta-Y).*X(:,j))/m)
    end
    k = k+1
    if 1/2*( norm(Y - X*theta) )^2 < 0.001 || k>2000
        break;
    end
end