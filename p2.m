function [err,CONF] = p2(C,T)
    m = max([max(T); max(C)]);
    err = numel(find(C~=T))/numel(C);
    CONF = zeros(m,m);

    CONF = CONF + accumarray([T,C],1,size(CONF));
end