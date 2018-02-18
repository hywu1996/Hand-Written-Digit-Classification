function W = p9(X_Train,Y_Train, iterNum, WInit, alpha )
    n = size(X_Train, 1);
    W = WInit;
    X_Train = [ones(n , 1) X_Train];
    
    classes = size(W, 1);
    
    for i=1:iterNum
        for j=1:n
            xi = X_Train(j,:);
            yi = zeros(classes, 1);
            yi(Y_Train(j)) = 1;
            Wxi=W*transpose(xi);
            softMax = Wxi;
            for k=1:numel(Wxi)
                softMax(k) = exp(Wxi(k))/sum(exp(Wxi));
            end
            
            W = W + alpha*((yi-softMax)*xi);
        end
    end
end