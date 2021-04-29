clear all; close all; clc;
data = load('C:\Users\NESS-PC\Desktop\ML- Homework\iris.txt'); 
X_train=data(:,1:4);
y_train=data(:,end);
d0=size(X_train,2);
d1=80;
d2=3;
eta=0.1;
[W1,b1,W2,b2]=mlp_init( d0,d1,d2 );
[W1_star,b1_star,W2_star,b2_star,loss_hist] = mlp_fit( X_train,y_train,W1,b1,W2,b2,eta);
y_pred=mlp_predict(X_train,W1_star,b1_star,W2_star,b2_star);
T=100*mean(y_pred==y_train);
fprintf('accuracy=%.2f \n', T);