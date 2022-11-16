L15_o = tf( [1], [1, 1, 0] )
rlocus(L15_o) %generate a complementary root-locus plot with an automatically chosen 
grid

L15_0 = tf( [1], [1, 1, 0, 0] )
rlocus(L15_0) %generate a complementary root-locus plot with an automatically chosen 
grid

L15_5 = tf( [1], [1, 1.5, 0.5, 0] )
rlocus(L15_5) %generate a complementary root-locus plot with an automatically chosen 
grid

L15_1 = tf( [1], [1, 2, 1, 0] )
rlocus(L15_1) %generate a complementary root-locus plot with an automatically chosen 
grid

L15_2 = tf( [1], [1, 3, 2, 0] )
rlocus(L15_2) %generate a complementary root-locus plot with an automatically chosen 
grid