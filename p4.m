function C = p4(w,X)
    bias = w(1);
    C = zeros(size(X, 1), 1);
    
    X_size = size(X,1);
    w_size = size(w,1);
    
    for i=1:X_size
        score = bias;
        for j=2:w_size
            score = score + X(i,j-1) * w(j);
        end % j
        if score > 0
            C(i) = 1;
        else
            C(i) = 2;
        end % endif
    end % i 
        
end % p4


% function C = p4(w,X)
%     C = zeros([size(X,1),1]);
%     for n = 1:size(X,1)
%         c_val = w(1);
%         for d = 1:(size(w,1) - 1)
%             c_val = c_val + X(n,d)*w(d+1);
%         end
%         if c_val < 0
%             C(n) = 2;
%         else
%             C(n) = 1;
%         end
%     end
% end