C = [1; 2 ; 3; 3; 2; 1; 3; 2; 1]
% C =
% 
%      1
%      2
%      3
%      3
%      2
%      1
%      3
%      2
%      1
     
T = [1; 1 ; 3; 1; 2; 1; 3; 3; 1]
% 
% T =
% 
%      1
%      1
%      3
%      1
%      2
%      3
%      3
%      1

[err,CONF] = p2(C,T)
% 
% err =
% 
%     0.3333
% 
% 
% CONF =
% 
%      3     1     1
%      0     1     0
%      0     1     2
% 
% 


