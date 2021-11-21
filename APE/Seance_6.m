% EXERCICE 1

% A = [0 1 ; 0.48 -1.95] ; 
% B = [0  ; 0.49] ; 
% C = [1 0] ; 
% Q = transpose(C)*C ;
% for i=-4:0
%     alpha = 10^i ; 
%     R = alpha ; 
%     K = lqr(A, B, Q, R) ; 
%     [num, denum] = ss2tf(A-B*K, B, C, 0) ; 
%     G = tf(num, denum) ; 
%     pole(G)
%     step(G)
% end

% EXERCICE 2

% A = [1.0944 -0.17 ; -0.5897 0] ; 
% B = [0.085  ; 0] ; 
% C = [0 1] ;
% Q = [5 0 ; 0 1] ; 
% R = 1 ; 
% K = lqr(A, B, Q, R) ; 
% [num, denum] = ss2tf(A-B*K, B, C, 0) ; 
% G = tf(num, denum) ; 
% pole(G)

% EXERCICE 3

% A = [0 1 ;0 -1] ; 
% B = [0 ; 1] ; 
% C = [1 0] ; 
% alpha = 4 ; 
% Q = transpose(C)*C ; 
% R = alpha ; 
% K = lqr(A, B, Q, R) 
% [num, denum] = ss2tf(A-B*K, B, C, 0) ; 
% G = tf(num, denum) ; 
% pole(G)

% PROBLEME 1 

% Aaug = [0 1 0 ; 0.48 -1.95 0 ; 1 0 0] ; 
% Baug = [0  ; 0.49 ; 0] ; 
% Caug = [1 0 0] ; 
% R_q = transpose([1 0 0]) ; 
% Q = transpose(Caug)*Caug + transpose(R_q)*R_q
% R = 1 ; 
% K = lqr(Aaug, Baug, Q, R)

Aaug = [1.0944 -0.17 0 ; -0.5897 0 0 ; 0 1 0] ; 
Baug = [0.085  ; 0 ; 0] ; 
Caug = [0 1 0] ;
R_q = transpose([0 1 0])
Q = [5 0 0 ; 0 1 0 ; 0 0 0] + transpose(R_q)*R_q ; 
R = 1 ; 
K = lqr(Aaug, Baug, Q, R)





