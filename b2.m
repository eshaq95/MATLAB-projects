clear
clc
dt = 0.03;
Nr = 20;
a = 0;
b = 0.5*pi;
kappa = 0.1;
dr = (b-a)/(Nr-1);
r = a:dr:b;
N1 = 5;
T_analytical = analytical_solution(0,r,N1);
t = 0:dt:4;
for time = dt:dt:4
    T(1) = exp(-kappa*time);
    T(Nr) = time;
    T_analytical = [T_analytical;analytical_solution(time,r,N1)];
end 
figure(1)
surf(r,t,T_analytical,'edgecolor','none');
xlabel('r');
ylabel('t');
zlabel('T(x,t)');

figure(2)
[C,uval] = contour(r,t,T_analytical);
clabel(C,uval);
title('Coursework2 numerical contour')
xlabel('x');
ylabel('t');

