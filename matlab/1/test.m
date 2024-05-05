clc;
clear;
close('all')
T1=troty(60);
T2=transl(4,0,3);
T=T1*T2;
p1=[2;4;3;1];
Ap1=T*p1;
Tr=inv(T);
Bp1=Tr*p1;
T0=transl(0,0,0);
trplot(T0,'frame','A','color','b')
axis([-5 5 -5 5 -5 5])
hold on
view(3)
plot3(1,1,1,'x')
tranimate(T0,T,'frame','B','color','r')