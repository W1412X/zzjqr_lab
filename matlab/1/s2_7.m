%
p_ori=[2;3;4]
rp_matrix=rotx(pi/2)
p_final=rp_matrix*p_ori
rf_matrix=trotx(pi/2)
%
view(3)
f_ori=transl(0,0,0)
f_final=f_ori*rf_matrix
trplot(f_ori,'frame','A','color','b')
hold on
axis([0 5 -5 5 0 5])
plot3(p_ori(1),p_ori(2),p_ori(3),'x','Color','b')
hold on
tranimate(f_ori,f_final,'frame','A','color','r')
plot3(p_final(1),p_final(2),p_final(3),'x','Color','r')
