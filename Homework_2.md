# Homework 2
Lian Di 1801212881
## Problem 1
* question 1
```Matlab
function closed_form_1()
M=csvread('climate_change_1.csv',1,0)
Y_train = M(1:284,11)
Y_test = M(285:308,11)
X_train = [ones(284,1),M(1:284,3:10)]
X_test = [ones(24,1),M(285:308,3:10)]
%regress
theta = (X_train' * X_train) ^ (-1) * X_train' * Y_train  
%get R2
e = Y_train - X_train * theta
RSS = e' * e
ESS = sum((X_train * theta-mean(Y_train)).^2)
TSS = sum((Y_train - mean(Y_train)).^2)
R2_train = ESS/TSS
%Test
e_test = Y_test - X_test * theta
RSS_test = e_test' * e_test
ESS_test = sum((X_test * theta-mean(Y_test)).^2)
TSS_test = sum((Y_test - mean(Y_test)).^2)
R2_test = ESS_test/TSS_testEnd
```
    question 2
Temp=
-124.594
+0.064205*MEI
+0.006457*CO2
+0.000124*CH4
-0.01653*N2O
-0.00663*CFC-11
+0.003808*CFC-12
+0.093141*TSI
-1.53761*Aerosols

Training set: R2 = 0.7509

Testing set: R2 = 0.2250
    question 3
| | P-value| 
| :-: | :-: |
|Intercept|1.43E-09|
|MEI|4.9E-20|
|CO2|0.005053|
|CH4|0.810146|
|N2O|0.054669|
|CFC-11|5.96E-05|
|CFC-12|0.00021|
|TSI|1.1E-09|
|Aerosols|5.41E-12|
