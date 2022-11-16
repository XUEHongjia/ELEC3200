z=-1; %vector of zeros
p=[0,-5,-10]; %vector of poles
k=1; %gain (not the var iable gain K)
L=zpk(z,p,k) %form the transfer function of the system
rlocus(L) %generate a complementary root-locus plot with an automatically chosen 
