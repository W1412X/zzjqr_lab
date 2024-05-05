ml1=Link([0,0.4967,0,0,0],'modified');
ml2=Link([-pi/2,-0.18804,0.2,3*pi/2,0],'modified');
ml3=Link([0,0.17248,0.79876,0,0],'modified');
ml4=Link([0,0.98557,0.25126,3*pi/2,0],'modified');
ml5=Link([0,0,0,pi/2,0],'modified');
ml6=Link([0,0,0,pi/2,0],'modified');
robot=SerialLink([ml1,ml2,ml3,ml4,ml5,ml6],'name','Fanuc M20ia');
p1=[
0.617222144 0.465154659 -0.634561241 -0.254420286 
-0.727874557
]