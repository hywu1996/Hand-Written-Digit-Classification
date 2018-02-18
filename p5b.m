load A1

[X,T] = p1(X_test,Y_test,4,9);
[X_training,T_training] = p1(X_train,Y_train,4,9);

fprintf("Iterations = 100\n");
w = p5(X_training,T_training,100);
C = p4(w,X_training);
fprintf("Training Error:");
[testErr,~] = p2(C,T_training)
fprintf("Testing Error:");
C = p4(w,X);
[testErr,~] = p2(C,T)

fprintf("\n\nIterations = 1000\n");
w = p5(X_training,T_training,1000);
C = p4(w,X_training);
fprintf("Training Error:");
[testErr,~] = p2(C,T_training)
fprintf("Testing Error:");
C = p4(w,X);
[testErr,~] = p2(C,T)

fprintf("\n\nIterations = 10000\n");
w = p5(X_training,T_training,10000);
C = p4(w,X_training);
fprintf("Training Error:");
[testErr,~] = p2(C,T_training)
fprintf("Testing Error:");
C = p4(w,X);
[testErr,~] = p2(C,T)

