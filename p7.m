function C = p7(W,X)
    [n,~] = size(X);
    X = [ones(n , 1) X];
    C = zeros(n, 1);
    
    for i=1:n
        Wxi = W*transpose(X(i,:));
        C(i) = find(Wxi==max(Wxi));
    end
    
end 