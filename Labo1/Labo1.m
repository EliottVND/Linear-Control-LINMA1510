function [Ss30,A,B,D,G,H,C,Tr,Tv] = Labo1()
params = parameters();

%Calcul de Ss30 : 
Ss30 = params('u0')/sqrt(2*params('g')*params('h3')); %cm2

%Calculs de A, B, D : 
A = -(Ss30/params('Sr'))*sqrt(2*params('g'))*(1/(2*sqrt(params('h3')))); %1/s
B = 1/params('Sr'); %1/cm2
D = (-1/params('Sr'))*sqrt(2*params('g')*params('h3')); %1/cm.s

% BOUCLE OUVERTE
G = tf([B], [1, -A]);
H = tf([D],[1, -A]);

% BOUCLE FERMEE

C = tf([params('Kp'), params('Ki')*params('Kp')], [1, 0]);

Tr = (C*G)/(1+C*G);
Tv = (H)/(1+C*G);

end
