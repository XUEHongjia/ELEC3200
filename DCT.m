A = [ 170,153,153,153,170,153,153,153;
170,153,170,187,170,153,170,153;
170,153,170,170,204,187,221,204;
187,153,187,187,204,187,238,221;
170,187,170,153,187,187,170,153;
187,170,187,153,204,170,170,153;
204,187,153,153,136,136,136,136;
205,187,153,153,153,153,153,119 ];
Q = dct(A,[],1);
R = dct(Q,[],2);
R = floor(R);
a = sqrt(2);
B = zeros(8,8);
C = zeros(8,8);

B1 = zeros(8,8);
C1 = zeros(8,8);
for m = 1:8 
    for n = 1:8
        for i = 1:8
            B(m,n) = B(m,n) + A( m, i )*cos( (pi/8)*(n-1)*(i-1+0.5) );
        end
    end
end

B = B/2;
for i = 1:8
    B(i,1) = B(i,1)/a;
end
B = floor(B);

for m = 1:8 
    for n = 1:8
        for i = 1:8
            C(m,n) = C(m,n) + B( i, n )*cos( (pi/8)*(m-1)*(i-1+0.5) );
        end
    end
end

C = C/2;
for i = 1:8
    C(1,i) = C(1,i)/a;
end
C = floor(C);


% without floor operation in the middle
for m = 1:8 
    for n = 1:8
        for i = 1:8
            B1(m,n) = B1(m,n) + A( m, i )*cos( (pi/8)*(n-1)*(i-1+0.5) );
        end
    end
end

B1 = B1/2;
for i = 1:8
    B1(i,1) = B1(i,1)/a;
end


for m = 1:8 
    for n = 1:8
        for i = 1:8
            C1(m,n) = C1(m,n) + B1( i, n )*cos( (pi/8)*(m-1)*(i-1+0.5) );
        end
    end
end

C1 = C1/2;
for i = 1:8
    C1(1,i) = C1(1,i)/a;
end
C1 = floor(C1);