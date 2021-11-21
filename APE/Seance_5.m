
% Exercice 2

% A = [0 1 ; 0.48 -1.95] ; 
% B = [0  ; 0.49] ; 
% C = [1 0] ; 
% 
% K = place (A, B, [-1 -2])
% 
% [num_g, den_g] = ss2tf(A, B, C, 0) ; 
% G = tf(num_g, den_g) ; 
% [num_g_eq, den_g_eq] = ss2tf(A-B*K, B, C, 0) ; 
% G_eq = tf(num_g_eq, den_g_eq) ; 
% %pzmap(G_eq, G)
% %step(G_eq)
% 
% % Exercice 5
% Aeq = [0 1 0 ; 0.48 -1.95 0 ; -1 0 0] ; 
% Beq = [0 ; 0.49 ; 0] ; 
% Ueq = [0 ; 0 ; 1] ; %ATTENTION : Ueq = [ 0 ; 0 ; 1] pas [0 ; 1]
% Deq = [0 0] ; 
% Ceq = [1 0 0] ; 
% K = place (Aeq, Beq, [-2 -3 -4])
% [num_g, den_g] = ss2tf(Aeq, Beq, Ceq, 0) ; 
% G = tf(num_g, den_g) ; 
% [num_g_eq, den_g_eq] = ss2tf(Aeq-Beq*K, Ueq, Ceq, 0) ; %ATTENTION : bien prendre Ueq
% G_eq = tf(num_g_eq, den_g_eq) ; 
% pzmap(G_eq, G) ; 
% [yo, to] = step(G, 20) ;  % ATTENTION :  bien [y t] et pas [t y]
% [y, t] = step(G_eq, 20) ;  % On peut rajouter la limite en x jusqu'où on veut aller
% plot(to, yo, '--', t, y) ; 
% legend('boucle ouverte', 'boucle fermée')
% xlim([0, 20])
% ylim([0 1.5])
% xlabel('Time [s]')
% ylabel('Amplitude')
% title('Step response')

% Exercice 3

% A = [1.0944 -0.17 ; -0.5897 0] ; 
% B = [0.085  ; 0] ; 
% C = [0 1] ;
% 
% K = place (A, B, [-1 -2])
% 
% [num_g, den_g] = ss2tf(A, B, C, 0) ; 
% G = tf(num_g, den_g) ; 
% [num_g_eq, den_g_eq] = ss2tf(A-B*K, B, C, 0) ; 
% G_eq = tf(num_g_eq, den_g_eq) ; 
% pzmap(G_eq, G)
% step(G, G_eq)

% Exercice 5
Aeq = [1.0944 -0.17 0 ; -0.5897 0 0 ; 0 -1 0] ; 
Beq = [0.085  ; 0 ; 0] ; 
Ueq = [0 ; 0 ; 1] ; %ATTENTION : Ueq = [ 0 ; 0 ; 1] pas [0 ; 1]
Deq = [481.9104 ; -240.9552 ; 0] ; 
Ceq = [0 1 0] ; 
K = place (Aeq, Beq, [-1 -1/2 -2])
[num_g, den_g] = ss2tf(Aeq, Beq, Ceq, 0) ; 
G = tf(num_g, den_g) ; 
[num_g_eq, den_g_eq] = ss2tf(Aeq-Beq*K, Ueq, Ceq, 0) ; %ATTENTION : bien prendre Ueq
G_eq = tf(num_g_eq, den_g_eq) ; 
pzmap(G_eq, G) ; 
[yo, to] = step(G, 20) ;  % ATTENTION :  bien [y t] et pas [t y]
[y, t] = step(G_eq, 20) ;  % On peut rajouter la limite en x jusqu'où on veut aller
plot(to, yo, '--', t, y) ; 
legend('boucle ouverte', 'boucle fermée')
xlim([0, 20])
ylim([-0.6 1.2])
xlabel('Time [s]')
ylabel('Amplitude')
title('Step response')





