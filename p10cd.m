load A1

H = [100];                % 10c
regularizerWeight = 0.8;  % 10c

H = [88,21];                % 10d
regStrength = 0.7;          % 10d

[net,trainErr] = p10a(X_train,Y_train, H, regStrength);
fprintf("Training Error:");
trainErr

[testErr,CONF] = p10b(X_test,Y_test,net);
fprintf("Test Error:");
testErr

fprintf("Confusion Matrix:");
CONF

