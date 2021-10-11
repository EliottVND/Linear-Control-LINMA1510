function plot_openloop()

params = parameters();
[Ss30,A,B,D,G,H,C,Tr,Tv] = Labo1()

h=matlabFunction(ilaplace(G));
t=1:0.01:100;
plot(t,h(t))

end