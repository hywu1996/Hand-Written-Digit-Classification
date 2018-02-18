load A1
classes = max(Y_train);
feat = size(X_train,2)+1;
alpha = 0.01;
iter = 100;

WInit = randn(classes,feat);
W = p9(X_train,Y_train,iter,WInit,alpha);

C = p7(W,X_train);
[trainErr,~] = p2(C,Y_train);
fprintf("Training Error:");
trainErr


C = p7(W,X_test);
[testErr,CONF] = p2(C,Y_test);
fprintf("Test Error:");
testErr

fprintf("Confusion Matrix:");
CONF