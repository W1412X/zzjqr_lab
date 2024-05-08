# 按照实验步骤
## ROS service
### `rosservice call clear`
- 执行前
![](./resource/1.png)
- 执行后
![](./resource/2.png)
### `rosservice call spawn` 
- 执行`rosservice call spawn| rossrv show`
![](./resource/3.png)
- `call spawn`
![](./resource/4.png)
## `rosparam`
### `rosparam list`
![](./resource/5.png)
### `roparam get / set`
> 这里出了一个问题就是颜色不改变，我是指定服务的具体名称成功了
```shell
rosparam set /turtlesim/background_r 150
```
![](./resource/6.png)

### `rosparam dump` and `rosparam load`
![](./resource/7.png)