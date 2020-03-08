t=-3:0.05:3;
L=length(t);
x=zeros(1,L);
p1=find(t==-2);
p2=find(t==0);
p3=find(t==2);
% Con incremento elgido -2, 0 y2
% en la base de tiempo
x(p1:p2)= t(p1:p2)/2+1;
x(p2:p3)= 1;
subplot(2,3,1);plot(t,x)
title('Senal de x(t)')
% Segunada base de timepo
t1=t+3;
x1=x;
t_aux=0.05:0.05:3; 
L3=length(t_aux);
x_aux=zeros(1,L3);
x1=[x_aux x];
t1=[t max(t)+t_aux];
subplot(2,3,2);plot(t1,x1)
title('Senal dezplazada 3 seg')
% Tercera base de tiempo
t2=t/2;
x2=x;
subplot(2,3,3);plot(t2,x2)
title('Senal comprimida  la mitad')
% tercera base tiempo invertida
t3=-t;
x3=x;
final=length(t3);
t3=t3(final:-1:1);
x3=x3(final:-1:1);
subplot(2,3,4);plot(t3,x3)
title('Senal reflejada')
Lextra = length(t1)-length(t);
t=t1;
x=[x zeros(1,Lextra)];
t4=t;
x4=x+x1;
subplot(2,3,5);plot(t4,x4)
title('Senal sumada')
t5=-3:0.05:3;
L5=length(t5);
x5=zeros(1,L5);
p1=find(t==-1);
p2=find(t==0);
p3=find(t==1);
p4=find(t==2);
x5(p1:p2)=t5(p1:p2);
x5(p2:p3)=2;
x5(p3:p4)=1;
subplot(2,3,6);plot(t5,x5)
title('Senal de x(t)')

