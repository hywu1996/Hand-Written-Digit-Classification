function [err,CONF] = p10b(X_test,Y_test,net)
    [~,C] = max(net(transpose(X_test)));
    C = transpose(C);
    T = Y_test;
    
    [err,CONF] = p2(C, T);
    
end