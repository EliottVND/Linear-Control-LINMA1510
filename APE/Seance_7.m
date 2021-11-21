% Exercice 1

k = 3 ; 
tau = 90 ;

% td = 10; 
% Tr = tf([1], [td, 1])
% [y, t] = step(Tr) ; 
% plot (t, y, '-', t, 0.95*ones(size(t)), '--')

% td1 = 1; 
% td2 = 10 ; 
% Tr = tf([td1, 1], [td2, 1])
% [y, t] = step(Tr) ; 
% plot (t, y, '-', t, 0.95*ones(size(t)), '--')

td1 = 0.29 ; 
td2 = 1.72 ; 
td3 = 10 ; 
Tr = tf([td1, 1], [td2*td3, td2 + td3, 1])  
[y, t] = step(Tr) ; 
plot (t, y, '-', t, 0.95*ones(size(t)), '--')







