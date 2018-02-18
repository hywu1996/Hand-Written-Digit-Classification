function W = p8(X_train, Y_train, iterNum, WInit,alpha)
    [n,~] = size(X_train);
    X_train = [ones(n , 1) X_train];
    [~,d] = size(X_train);
    m = size(Y_train, 1);
    W = WInit;
    classes = max(Y_train);
    
    for i=1:iterNum
        for j=1:m
            x_row = X_train(j,:);
            
            Wxi = W*transpose(x_row);
            c = find(Wxi==max(Wxi));
            
            if c~=Y_train(j)
                loss = zeros(classes, d);
                loss(Y_train(j),:) = x_row;
                loss(c,:) = -(x_row);
                W = W + alpha*loss;
            end
            
        end
    end
    
end