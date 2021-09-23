h3 = 28 %cm
u0 = 30 %ml/s
g = 981 %cm/s2
Sr = 43 %cm2

%Calcul de Ss30 : 
Ss30 = u0/sqrt(2*g*h3) %cm2

%Calculs de A, B, D : 
A = -(Ss30/Sr)*sqrt(2*g)*(1/(2*sqrt(h3))) %1/s
B = 1/Sr %1/cm2
D = (-1/Sr)*sqrt(2*g*h3) %1/cm.s

% BOUCLE OUVERTE
G = tf([B], [1, -A])
H = tf([D],[1, -A])

% BOUCLE FERMEE
Kp = 3 
Ki = 2
C = tf([Kp, Ki*Kp], [1, 0])

Tr = (C*G)/(1+C*G)
Tv = (H)/(1+C*G)
