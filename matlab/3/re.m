mdl_puma560;
p560=SerialLink(p560)
%all theta=0 
fkine(p560,qz)
%
q=[0 -pi/4 -pi/4 0 pi/8 0]
T=fkine(p560,q)
%
qi=ikine(p560,T)


%mine 
q=[0 pi/4 -pi/4 0 pi/2 0]
T=fkine(p_m,q)
%inverse
qi=ikine(p_m,T)