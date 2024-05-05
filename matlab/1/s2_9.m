f_ori=transl(0,0,0)
p_ori=[7;3;1;1]
%rotate 90 around z
f_fin=troty(pi/2)*transl(4,-3,7)*trotz(pi/2)*f_ori 
p_fin=troty(pi/2)*transl(4,-3,7)*trotz(pi/2)*p_ori
view(3)
trplot(f_ori,'frame','A','color','b')
hold on
plot3(p_ori(1),p_ori(2),p_ori(3),'x','Color','b')
axis([-14 14 -1 5 -10 10])
f_1=trotz(pi/2)*f_ori 
tranimate(f_ori,f_1,'frame','B','color','r')
hold on
f_2=transl(4,-3,7)*trotz(pi/2)*f_ori
tranimate(f_1,f_2,'frame','C','color','b')
hold on
tranimate(f_2,f_fin,'frame','C','color','r')
hold on
plot3(p_fin(1),p_fin(2),p_fin(3),'x','Color','r')
hold on