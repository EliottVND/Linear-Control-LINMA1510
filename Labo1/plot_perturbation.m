function plot_perturbation()

tspan = [0:1:50];



params = parameters();
[Ss30,A,B,D,G,H,C,Tr,Tv] = Labo1()
pzmap(Tv)

V = Ss30;

if (params('Ki') == 0)
    y = ((D*V)/(A-params('Kp')*B))*exp((A-params('Kp')*B)*tspan)...
        +(D*V)/(params('Kp')*B-A);
else
    a = 0.5*(params('Kp')*B-A);
    omega = sqrt(params('Ki')*params('Kp')*B-a^2);
    k = D*V/omega;
    y = k*exp(-a*tspan).*sin(omega*tspan);
end

plot(tspan,y);
grid;
legend('y(t)')
title('Evolution of water level in the tank with time','FontSize', 12)
xlabel('time [s]','FontSize', 12) 
ylabel('water level [cm]','FontSize', 12) 

end