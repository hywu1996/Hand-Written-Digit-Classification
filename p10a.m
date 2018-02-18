function [net,valErr] = p10a(X_train,Y_train, H, regularizerWeight)
    net = patternnet(H);
    
    net.divideParam.testRatio = 0;
    net.divideParam.valRatio = 0.3;
    net.divideParam.trainRatio = 0.7;

    net.performParam.regularization = regularizerWeight;
    
        
    X = transpose(X_train);
    classes = max(Y_train);
    Y = zeros(classes, size(Y_train,1));
    for i=1:size(Y_train, 1)
        yi = zeros(classes, 1);
        yi(Y_train(i)) = 1;
        Y(:,i) = yi;
    end
    
    [net,tr] = train(net,X,Y);
    trueClass = Y_train(tr.valInd);
    x_valid = X(:,tr.valInd);
    
    [~,C] = max(net(x_valid));
    
    
    misclassified = sum(transpose(C)~=trueClass);
    total = size(trueClass, 1);
    
    valErr = misclassified/total;   
end