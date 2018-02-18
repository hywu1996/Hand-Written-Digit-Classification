load A1

C = p3(X_train,Y_train,X_test,1);
fprintf("k=1");
[err,~] = p2(C,Y_test)

C = p3(X_train,Y_train,X_test,3);
fprintf("k=3");
[err,~] = p2(C,Y_test)

C = p3(X_train,Y_train,X_test,5);
fprintf("k=5");
[err,~] = p2(C,Y_test)

C = p3(X_train,Y_train,X_test,7);
fprintf("k=7");
[err,~] = p2(C,Y_test)


C = p3(X_train,Y_train,X_test,5);
fprintf("k=5 : Confusion Matrix");
[~,CONF] = p2(C,Y_test)