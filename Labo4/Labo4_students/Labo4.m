% First Experiment : Critère ITAE

K = 0.25 ; 
tau = 1.5 ; 
teta = 1.2 ; 
s = tf('s') ; 
G = K*exp(-teta*s)/(tau*s + 1) ;
plot(simout_T, simout_OL(:, 1), color = 'r')
hold on ;
step(G)
hold off

% Controller PI
% A = 1.03 ; 
% B = -0.165 ; 
% Y = A + B * (teta/tau) ; 
% Kp = Y/K ;
% ti = tau/Y ;
% C = tf([Kp*ti Kp], [ti 0]) ; 
% Tr = C*G/(1 + C*G) ; 
% [y, t] = step(Tr) ; 
%plot (t, y, '-', t, 0.95*ones(size(t)), '--', t, ones(size(t)), '--')  

% Controller PID
% A = 0.796 ; 
% B = -0.1465 ; 
% Y = A + B * (teta/tau) ; 
% Kp = Y/K ; 
% ti = tau/Y ; 
% td = tau*Y ; 
% C = tf(Kp*[ti*td ti 1], [ti 0]) ; 
% Tr = C*G/(1 + C*G) ; 
% [y, t] = step(Tr) ; 
% plot (t, y, '-', t, 0.95*ones(size(t)), '--', t, ones(size(t)), '--')


% Second Experiment : Ziegler-Nichols

K = 0.25 ; 
tau = 1.5 ; 
teta = 1.2 ; 
s = tf('s') ; 
G = K*exp(-teta*s)/(tau*s + 1) ;
plot(simout_T, simout_OL(:, 1), color = 'r')
hold on ;
[y, t] = step(G) ; 
p = 0.1 ; 
a = 0.1 ; 
plot (t, p*t-a, '--')
ylim([-0.3, 0.5])
xlim([0, 15])
hold off

tau = 1 ; 
a = 0.1 ; 

% Controller P
Kp = 1/a 
% Controller PI
Kp = 0.9/a 
ti = 3*tau
% Controller PID
Kp = 1.2/a
ti = 2*tau
td = tau/2


















