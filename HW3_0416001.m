T = 1 ;
W0 = 2 * pi / T ;
t = -0.5 : 0.001 : 0.5;
b0 = -0.5;



%%%%%%%%%%% j = 1
b1 = 4*sin(1*pi/2) / (pi*pi);
ans1_1 = b1 * cos(1*W0*t)  ;
ans1_2 = b0*1 + ans1_1;

figure
subplot(211)
plot(t,ans1_1)
xlabel('t')
ylabel('B[1]*cos(1*w0*t)')
legend('j = 1');

subplot(212)
plot(t , ans1_2)
xlabel('t')
ylabel('x1(t)')
legend('j = 1');

%%%%%%%%%%% j = 3
b3 = 4 * sin(3*pi/2) / (pi*pi*3*3) * exp(j*pi/2*2);
ans3_1 = b3 * cos(3*W0*t) ;
ans3_2 = b0*1;
for n = 1: 3
    bk = 4*sin(n*pi/2) / (pi*pi*n*n) * exp(j*pi/2*(n-1));
    ans3_2 = ans3_2 + bk * cos(n*W0*t);
end

figure
subplot(211)
plot(t , ans3_1)
xlabel('t')
ylabel('B[3]*cos(3*w0*t)')
legend('j = 3');

subplot(212)
plot(t , ans3_2)
xlabel('t')
ylabel('x3(t)')
legend('j = 3');

%%%%%%%%%% j = 7
b7 = 4 * sin(7*pi/2) / (pi*pi*7*7) * exp(j*pi/2*6);
ans7_1 = b7 * cos(7*W0*t) ;
ans7_2 = b0*1;
for n = 1: 7
    bk = 4*sin(n*pi/2) / (pi*pi*n*n) * exp(j*pi/2*(n-1));
    ans7_2 = ans7_2 + bk * cos(n*W0*t);
end

figure
subplot(211)
plot(t , ans7_1)
xlabel('t')
ylabel('B[7]*cos(7*w0*t)')
legend('j = 7');

subplot(212)
plot(t , ans7_2)
xlabel('t')
ylabel('x7(t)')
legend('j = 7');

%%%%%%%%%% j = 29
b29 = 4 * sin(29*pi/2) / (pi*pi*29*29) * exp(j*pi/2*28);
ans29_1 = b29 * cos(29*W0*t) ;
ans29_2 = b0*1;
for n = 1: 29
    bk = 4*sin(n*pi/2) / (pi*pi*n*n) * exp(j*pi/2*(n-1));
    ans29_2 = ans29_2 + bk * cos(n*W0*t);
end

figure
subplot(211)
plot(t , ans29_1)
xlabel('t')
ylabel('B[29]*cos(29*w0*t)')
legend('j = 29');

subplot(212)
plot(t , ans29_2)
xlabel('t')
ylabel('x29(t)')
legend('j = 29');

%%%%%%%%%% j = 99
b99 = 4 * sin(99*pi/2) / (pi*pi*99*99) * exp(j*pi/98*98);
ans99_1 = b99 * cos(99*W0*t) ;
ans99_2 = b0*1;
for n = 1: 99
    bk = 4*sin(n*pi/2) / (pi*pi*n*n) * exp(j*pi/2*(n-1));
    ans99_2 = ans99_2 + bk * cos(n*W0*t);
end

figure
subplot(211)
plot(t , ans99_1)
xlabel('t')
ylabel('B[99]*cos(99*w0*t)')
legend('j = 99');
subplot(212)

plot(t , ans99_2)
xlabel('t')
ylabel('x99(t)')
legend('j = 99');