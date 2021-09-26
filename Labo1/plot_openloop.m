function plot_openloop()

params = parameters();

h=matlabFunction(ilaplace());
t=1:0.01:100;
plot(t,h(t))

end