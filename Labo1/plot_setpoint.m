function plot_setpoint()

tspan = [0:1:50];

params = parameters();
[Ss30,A,B,D,G,H,C,Tr,Tv] = Labo1();

y = params('u0')*(1-exp(-params('Kp')*B*tspan));

plot(tspan,y);
grid;
legend('y(t)')
title('Evolution of water level in the tank with time','FontSize', 12)
xlabel('time [s]','FontSize', 12) 
ylabel('water level [cm]','FontSize', 12) 

end