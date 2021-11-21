v = 0.085 ; 
k1 = 2 ; 
mu0 = 4.1 ; 
Ki = 0.5 ; 
Ks = 200 ;  
u = 500 ; 
Kp = 100 ; 
S = Ki*((mu0-v)/(2*v) + 1/(2*v) * sqrt((mu0-v)^2 - (2*v)^2 *Ks/Ki)) ; 
mu = mu0*S/(Ks + S + S*S/Ki) ; 
x = (u-S)/k1 ; 
% G = tf ([v, 0], [1, v*(1+Kp)+k1*mu*x, v*k1*mu*x])
G = tf ([v*mu*x], [1, v*+k1*mu*x, v*k1*mu*x+v*mu*x*Kp])
Tr = Kp*G/(1+Kp*G)
step(Tr)