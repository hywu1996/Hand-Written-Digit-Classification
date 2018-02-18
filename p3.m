function C = p3(X_train, Y_train, X_test,k) 
    % X train: training samples
    % Y_train: true class of training samples
    % X_test: test samples
    
    totalSamples = size(X_train, 1);
    combinedSamples = X_train;
    trueClass = Y_train;
    newSample = X_test;
    C = zeros(size(X_test, 1), 1);
    
    for i=1:size(X_test, 1)  
        testMatrix = repmat(newSample(i,:),totalSamples,1);
        absDiff = abs(combinedSamples-testMatrix);
        absDiff = absDiff.^2;
        dist = sum(absDiff,2);
        [~,I] = sort(dist);
        neighborsInd = I(1:k);
        neighbors = trueClass(neighborsInd);
        class = mode(neighbors);
        C(i) = class;
    end
    
end





