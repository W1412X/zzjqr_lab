# 山东大学机器人实验  第6章 6.4实训部分
> 最新更新在Github
>  - [Github地址](https://github.com/W1412X/zzjqr_lab)
>  - 吐槽Matlab在Ubuntu里是真的难用感觉
>  - [**Ubuntu配置Matlab的一些问题**](https://blog.csdn.net/m0_73802120/article/details/138317818)
## 一些概念
### 关节角度插值
- 为了使机器人按照预期从一个位置过渡到另一个位置，对其关节角度进行插值计算，就是插进去几个状态。
## 关节空间轨迹规划
- 给定末端执行器的初始位置p1,目标位置p2
- 利用运动学反解求得初始的关节角度q1,目标的关节角度q2
- 在q1和q2之间利用五次多项式进行插值得到
  - `q` 关节角度配置序列
  - `qd` 关节角速度配置序列
  - `qdd` 关节速度配置序列
- `robot.jacob0(q(i,:))` 计算关节角度配置为q(i,:)时的雅可比矩阵
  - 这里`q(i,:)`其实就是对应的上一步生成的关节的配置，表示的是运动的第`i`步的关节的角度配置
  - 每一列对应一个关节，每一行分别为沿`x,y,z`的线速度和绕`x,y,z`的角速度
- `robot.jacob0(q(i,:))*qd(i,:)`就是对应的末端执行器的角速度(每一行的前三个)，线速度(后三个)
- 然后就根据对应的`x,y,z`分量计算对应的**角速度**和**线速度**
## 笛卡尔空间轨迹规划
- 参数的含义是一样的，但是除了`qd`,`qdd`计算和关节空间轨迹规划不一样
  - 具体他是根据两个时间节点之间`q`的变化计算`qd`,然后根据两个时间节点`qd`的变化计算`qdd`