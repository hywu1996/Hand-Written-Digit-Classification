function [X_out,Y_out] = p1(X,Y,l1,l2)
    B = find(Y == l1 | Y == l2);
    Y_out = Y(B);    
    if l1>l2
        Y_out(Y_out==l1)=2;
        Y_out(Y_out==l2)=1;
    else
        Y_out(Y_out==l1)=1;
        Y_out(Y_out==l2)=2;
    end
    
    X_out = X(B,:);
end