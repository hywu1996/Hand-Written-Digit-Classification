function w = p6(X_Train,Y_Train, iterNum, wInit, alpha)
    n = size(X_Train, 1);
    w = wInit;
    X_Train = [ones(n , 1) X_Train];
    d = size(X_Train, 2);
    
    Y_Train(Y_Train~=1) = 0;

    for i=1:iterNum
        v = X_Train * w;  % atzi
        for j=1:numel(v)  % apply sigmoid function to each element
            v(j) = 1/(1 + exp(-v(j)));
        end
        
        for k=1:numel(Y_Train)   % subtract from labels Y_Train
            v(k) = Y_Train(k)-v(k);
        end
        v = repmat(v, 1, d).*X_Train; % multiply by corresponding example
        A = sum(v,1); % add up all the rows
        update = transpose(A);
        w = w + update.*alpha;
    end
    
end

