function w = p5(X_train,Y_train, iterNum)
    [n , d] = size(X_train);
    w = randn(d+1, 1);
    bestErr = p2( p4(w, X_train), Y_train);
    
    for i=2:iterNum
        w_test = randn(d+1, 1);
        testErr = p2( p4(w_test, X_train), Y_train);
        if testErr < bestErr
            w = w_test;
            bestErr = testErr;
        end
    end
end