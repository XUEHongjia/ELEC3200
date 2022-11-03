L = tf( 2000, [1,30,275,750,0] );
T = feedback(L,1);
ltiview( 'step', T );