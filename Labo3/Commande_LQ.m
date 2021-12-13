K = 2.17 ;
tau = 1.38 ; 
G = tf([K], [tau, 1])  
[Ag, Bg, Cg, Dg] = tf2ss([K], [tau, 1]) ;

A = [0 1 ; 0 Ag]
B = [0 ; Bg]
C = [0 Cg]

Aaug = [0 1 0 ; 0 Ag 0 ; 0 Cg 0]
Baug = [0 ; Bg ; 0]
Caug = [0 Cg 0]
[num, den] = ss2tf(Aaug, Baug, Caug, 0) ; 
Gequ = tf(num, den)
R_q = transpose([0 Cg 0])
Qx =  [5 0 0 ; 0 1 0 ; 0 0 1] % x = [position, vitesse, q]
R = 1 ; 
K = lqr(Aaug, Baug, Qx, R)  % = [k0, k1, ki]

