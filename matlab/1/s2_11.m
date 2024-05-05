view(3)
f_ori=transl(0,0,0)
p_ori=[1;5;;4;1]
%
trplot(f_ori,'frame','A','color','b')
axis([-5 5 -5 5 -5 5])
hold on 
plot3(p_ori(1),p_ori(2),p_ori(3),'x','Color','b')
hold on
% rotate 90 around x
p_1=trotx(pi/2)*p_ori 
f_1=trotx(pi/2)*f_ori
tranimate(f_ori,f_1,'frame','B','color','r')
hold on 
% translate 
p_2=trotx(pi/2)*transl(0,0,3)*p_ori
f_2=trotx(pi/2)*transl(0,0,3)*f_ori
tranimate(f_1,f_2,'frame','C','color','b')
% rotate 90 around z
p_3=trotz(pi/2)*trotx(pi/2)*transl(0,0,3)*p_ori
f_3=trotz(pi/2)*(trotx(pi/2)*transl(0,0,3))*f_ori
tranimate(f_2,f_3,'frame','D','color','r')
% translate
p_fin=trotz(pi/2)*(trotx(pi/2)*transl(0,0,3))*transl(0,5,0)*p_ori 
f_fin=trotz(pi/2)*(trotx(pi/2)*transl(0,0,3))*transl(0,5,0)*f_ori 
tranimate(f_3,f_fin,'frame','E','color','b')
plot3(p_fin(1),p_fin(2),p_fin(3),'x','Color','r')