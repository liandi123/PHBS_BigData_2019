
M=csvread('climate_change_1.csv',1,0)
Y_train = M(1:284,11)
Y_test = M(285:308,11)
X_train = [ones(284,1),M(1:284,3:10)]
X_test = [ones(24,1),M(285:308,3:10)]
theta = (X_train' * X_train) ^ (-1) * X_train' * Y_train  
e = Y_train - X_train * theta
RSS = e' * e
ESS = sum((X_train * theta-mean(Y_train)).^2)
TSS = sum((Y_train - mean(Y_train)).^2)
R2_train = ESS/TSS

e_test = Y_test - X_test * theta
RSS_test = e_test' * e_test
ESS_test = sum((X_test * theta-mean(Y_test)).^2)
TSS_test = sum((Y_test - mean(Y_test)).^2)
R2_test = ESS_test/TSS_test


M_2=csvread('climate_change_2.csv',1,0)
Y_2 = M_2(:,12)
X_2 = [ones(308,1),M_2(:,3:11)]
theta_2 = (X_2' * X_2) ^ (-1) * X_2' * Y_2
e_2 = Y_2 - X_2 * theta_2
RSS_2 = e_2' * e_2
TSS_2 = sum((Y_2 - mean(Y_2)).^2)
ESS_2 = sum((X_2 * theta_2-mean(Y_2)).^2)
R2_2 = ESS_2/TSS_2