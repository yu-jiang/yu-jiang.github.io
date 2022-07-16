% This is a simple example to illustrate how the algorithm in "Computational
% adaptive optimal control for continuous-time linear systems with
% completely 1known dynamics," by Yu Jiang and Zhong-Ping Jiang
% Automatica, 2012.
function []=second_order_example()

global A B K
clc

A=[0 1;-1 -3];
B=[0;.6];
Q=eye(2);
R=1;
K=[1,0]; % initial control policy


Dxx=[];XX=[];XU=[];

x0=[1;2]; %initial condition

N=10; % number of iterations
T=1;  % length of each learning time interval
for i=1:10
    i
    [t,X]=ode45(@mysys,[(i-1)*T,i*T],[x0;kron(x0',x0')';kron(x0,zeros(1,1))]);
    Dxx=[Dxx;kron(X(end,1:2),X(end,1:2))-kron(X(1,1:2),X(1,1:2))];
    XX=[XX;X(end,2+1:2+2^2)-X(1,2+1:2+2^2)];
    XU=[XU;X(end,2+2^2+1:end)-X(1,2+2^2+1:end)];
    x0=X(end,1:2)';
end


%Dxx=processing_Dxx(Dxx);
Dxx=Dxx(:,[1,2,4]);


for i=1:10
    QK=Q+K'*R*K;
    Y=-XX*QK(:);
    X2=XX*kron(eye(2),K');
    X=[Dxx,-X2-XU];
    pp=inv(X'*X)*X'*Y;
    P=[pp(1) pp(2)/2; pp(2)/2 pp(3)]
    K=inv(R)*pp(end-1:end)'/2
end

disp('The idea values are:')
[K0,P0]=lqr(A,B,Q,R)
end

% System subfunction
function dX=mysys(t,X)
global A B K
x=X(1:2);
u=-K*x+0.1*sin(10*t);
dx=A*x+B*u;
dxx=kron(x',x')';
dux=kron(x',u')';
dX=[dx;
    dxx;
    dux];
end

