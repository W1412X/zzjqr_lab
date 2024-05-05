%原始坐标系
F_ori=[0.527 -0.574 0.628 5; 0.369 0.819 0.439 3; -0.766 0 0.643 8; 0 0 0 1]
%平移矩阵
transl_m=transl(0,10,5)
%平移
F_fin=transl_m * F_ori
%画最初的坐标系
trplot(F_ori,'frame','A','color','b')
%设置显示的3d坐标范围
axis([5 15 5 15 5 15])
view(3)
hold on
%展示动画
tranimate(F_ori,F_fin,'frame','B','color','r')
