load A1

[X,T] = p1(X_test,Y_test,4,9);
[X_t,T_t] = p1(X_train,Y_train,4,9);

feat = size(X_t,2);
wInit = ones(feat+1,1);
iterNum = 30;
alpha = 0.1;

w = p6(X_t,T_t,iterNum,wInit,alpha);
C_train = p4(w,X_t);
fprintf("Training Error:");
[err,~] = p2(C_train,T_t)

fprintf("\n\nTesting Error:");
C = p4(w,X0);
[err,CONF] = p2(C,T)