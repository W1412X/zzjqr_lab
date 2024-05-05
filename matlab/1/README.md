# 山东大学机器人实验  第三章 3.4实训部分
> 最新更新在Github
>  - [Github地址](https://github.com/W1412X/zzjqr_lab)
>  - 吐槽Matlab在Ubuntu里是真的难用感觉
>  - [**Ubuntu配置Matlab的一些问题**](https://blog.csdn.net/m0_73802120/article/details/138317818)
## 2.6
```matlab
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
```

## 2.7
```matlab
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
```

## 2.9
```matlab
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
```

## 2.11
```matlab
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
```