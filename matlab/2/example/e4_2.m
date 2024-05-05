l1=Link([pi/4,0,0,0,0],'modified')
l2=Link([pi/2,0.2,0.1,0,0],'modified')
l3=Link([pi/2,0.2,0.1,0,0],'modified')
robot=SerialLink([l1,l2,l3])
robot.display()
theta=[0 0 0]
robot.plot(theta)