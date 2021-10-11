load('Test_ClosedLoop40_22_10_0.txt')
x = Test_ClosedLoop40_22_10_0(:, 1) ; 
y = Test_ClosedLoop40_22_10_0(:, 3) ;
z = Test_ClosedLoop40_22_10_0(:, 2) ; 
plot(x,y, x, z)