function plot_openloop()

params = parameters();
[Ss30,A,B,D,G,H,C,Tr,Tv] = Labo1()

tspan = [0 300];
y0 = 0;
[t,y] = ode45(@(t,y) (1/params('Sr'))*params('u0') - (1/params('Sr')*Ss30*sqrt(2*params('g')*y)), tspan, y0);
plot (t, y) ; 
hold on ; 

[y, t] = step(params('h3')*G) ; 
plot (t, y)

legend('ODE45', 'OL')
hold off
end