function params=parameters()
h3 = 22.1; %cm
u0 = 40; %ml/s
g = 981; %cm/s2
Sr = 43; %cm2

Kp = 10;
Ki = 0.1;

params= containers.Map({'h3','u0','g','Sr','Kp','Ki'},[h3,u0,g,Sr,Kp,Ki]);

end