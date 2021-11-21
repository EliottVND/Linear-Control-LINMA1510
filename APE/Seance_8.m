% Exercice 1

% a = 1 ; 
% G = tf([1 1], [1 2 a]) ; 
% C = tf([1], [1 0]) ; 
% CG = C*G ; 
% %rlocus(CG) ; 
% %r
% Kc = 1e1 ; 
% C = tf([Kc], [1 0]) ;  
% CG = C*G ;
% Tr = CG/(1+CG) ; 
% [y, t] = step(Tr) ; 
% plot (t, y, '-', t, 0.95*ones(size(t)), '--', t, ones(size(t)), '--')



% Exercice 2 - 3

% Kc = 10 ; 
% a = -3 ;
% C = tf([Kc], [1 0]) ;  
% G = tf([1 1], [1 2 a]) ; 
% %margin(C*G)
% nyquist(C*G)

% Problème 1

A = [-7.217 0 ; 5 -10.3] ; 
B = [9.52 ; -0.233] ; 
C = [0 1] ; 
Kc = 5 ; 
ti = 0.1 ; 
[numg, deng] = ss2tf(A, B, C, 0) ; 
G = tf(numg, deng) ; 
C = tf([Kc*ti Kc], [ti 0]) ; 
% Tr = C*G/(1 + C*G) ; 
% [y, t] = step(Tr) ; 
% plot (t, y, '-', t, 0.95*ones(size(t)), '--', t, 1.05*ones(size(t)), '--')
Aaug = [-7.217 0  0 ; 5 -10.3 0 ; 0 -1 0] ; 
Baug = [9.52 ; -0.233; 1] ; 
beta = 0.1 ; 
alpha = 20 ; 
Caug = [0 1 0] ; 
R = beta ; 
R_q = transpose([0 -1 0])
Qx = transpose(Caug)*Caug + alpha*transpose(R_q)*R_q 
K = lqr(Aaug, Baug, Qx, R) 

A-B*K(1:2)
B*K(3)

A_test = [-139.6156 -125.7607 134.6331 ; 8.2404   -7.2220 -3.2951 ; 0 -1 0]
[numg, deng] = ss2tf(A_test, [0 ; 0 ; 1], Caug, 0) ; 
Gaug = tf(numg, deng) ; 
[y, t] = step(Gaug) ; 
plot (t, y, '-', t, 0.95*ones(size(t)), '--', t, ones(size(t)), '--')








