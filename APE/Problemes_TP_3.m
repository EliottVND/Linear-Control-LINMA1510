% PROBLEME 1
% a = 0.75 ; 
% b = 1 ; 
% c = 0.25 ; 
% 
% tspan = [0 50] ; 
% x0 = [1 1] ; 
% [t, x] = ode45(@(t,x)lokta_volterra(x, a, b, c), tspan, x0) ; 
% plot (t, x)
% xlabel('Time t');
% ylabel('Populations');
% legend('Proies','Prédateurs')
% title('Populations des proies et prédateurs');
% %plot (x(:, 1), x(:,2)); 
% 
% function dt = lokta_volterra(x, a, b, c)
%     dt = [a*x(1) - b*x(2)*x(1) ; -c*x(2)+b*x(1)*x(2)] ; end



% PROBLEME 2
% x0 = [0.1,0.1,0.1,0.1] ; 
% x_equilibre = fsolve(@fun, x0)  
% g = 9.81 ; 
% a1 = 0.233 ; 
% a2 = a1   ;
% a3 = 0.127 ; 
% a4 = a3 ; 
% A1 = 50.3 ; 
% A2 = A1 ; 
% A3 = 28.3 ; 
% A4 = A3 ; 
% syms a b c d
% y1 = (-a1/A1)*sqrt(2*g*a)+(a3/A1)*sqrt(2*g*c) ; 
% y2 = (-a2/A2)*sqrt(2*g*b)+(a4/A2)*sqrt(2*g*d) ; 
% y3 = (-a3/A3)*sqrt(2*g*c) ; 
% y4 = (-a4/A4)*sqrt(2*g*d) ; 
% f = [y1 ; y2 ; y3 ; y4] ; 
% jacobian(f, [a b c d])
% 
% function y = fun(x) 
%     gamma_1 = 0.6 ; 
%     gamma_2 = gamma_1 ; 
%     g = 9.81 ; 
%     a1 = 0.233 ; 
%     a2 = a1   ;
%     a3 = 0.127 ; 
%     a4 = a3 ; 
%     A1 = 50.3 ; 
%     A2 = A1 ; 
%     A3 = 28.3 ; 
%     A4 = A3 ; 
%     y1 = (-a1/A1)*sqrt(2*g*x(1))+(a3/A1)*sqrt(2*g*x(3)) ; 
%     y2 = (-a2/A2)*sqrt(2*g*x(2))+(a4/A2)*sqrt(2*g*x(4)) ; 
%     y3 = (-a3/A3)*sqrt(2*g*x(3)) ; 
%     y4 = (-a4/A4)*sqrt(2*g*x(4)) ; 
%     f = [y1 ; y2 ; y3 ; y4] ; 
%     g1 = [gamma_1/A1 0] ; 
%     g2 = [0 gamma_2/A2] ; 
%     g3 = [0 (1-gamma_2)/A3] ; 
%     g4 = [(1-gamma_1)/A4 0]; 
%     g_x = [g1 ; g2 ;  g3 ; g4] ; 
%     u = [26.84 ; 26.84] ; 
%     y = f + g_x*u ; 
% end



% PROBLEME 3
A = [0 1 0 ; -0.007 -0.1 0.12 ; 0 0.07 -0.3] ; 
B = [0 ; -0.01 ; 0.07] ; 
C = [1 0 0] ; 
[den, num] = ss2tf(A, B, C, [0]) ; 
G = tf(den, num)
step(G)

    


