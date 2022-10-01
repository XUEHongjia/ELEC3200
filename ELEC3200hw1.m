A = [ -1.7860, 15.9674, -1.6930, 13.1487;
-1.1773, -15.2644, -1.3548, -14.5145;
3.3427, -6.8798, 3.4513, -3.5889;
1.5017, 16.7058, 1.1717, 13.4250 ];

B = [ -0.9618
1.3011;
0.1081;
1.1984 ];

C = [ 29.8608, 35.9450, 29.4689, 17.7162 ];

D = 0;

%Q1
sys = ss(A,B,C,D);

%Q2
sys2 = tf(sys);

%Q3
sys3 = zpk(sys);

%Q4
num = sys2.Numerator;
den = sys2.Denominator;
sys4 = tf(num,den);
[A4, B4, C4, D4] = ssdata(sys4);

%Q5
sys5 = ss( sys2 )

%testing 
[y1,t1] = impulse(sys);
[y4,t4] = impulse(sys4);
[y5,t5] = impulse(sys5);
dif14 = (y4-y1)'*(y4-y1);
dif15 = (y5-y1)'*(y5-y1);

clear t1 t4 t5
