z=-1; %vector of zeros
p=[0,-5,-10]; %vector of poles
k=1; %gain (not the var iable gain K)
L=zpk(z,p,k) %form the transfer function of the system
rlocus(L) %generate a complementary root-locus plot with an automatically chosen 
grid

L2 = tf( [10, 0], [1, 2, 0, 10] )
rlocus(L2)
grid

p = [ 1, 25, 200, 5 ];
r = roots(p)
L3 = tf( [1, 30, 200], [-1, -25, -200, -5] )
rlocus(L3)
grid

L53 = tf( [1], [1, 8, 24, 32, 1] )
rlocus(L53)