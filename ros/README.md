# ROS安装的一些问题 
## 建议阅读全文后再进行安装，尽量在一个终端内执行所有的安装操作
## 执行`sudo apt install ros-kinetic-desktop-full`出现`unmet dependencies`的问题
#### **前言**
  - 在每次你尝试安装之前都要根据添加对应的**ROS软件源**和**密钥**
  - ros软件源
  ```shell
  sudo sh -c '. /etc/lsb-release && echo "deb http://mirrors.ustc.edu.cn/ros/ubuntu/ $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/ros-latest.list'
  ```
  - 密钥
  ```shell
    sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
  ```
### 软件版本问题
- 安装的软件不同的ubuntu版本有不同的软件名称
  - `ros-kinetic-desktop-full` 是`16.04`的
  - `ros-noetic-desktop-full`是`20.04`的
  - 其他的去网上查吧
### 源的问题
  - 更换为清华源，具体直接vim /etc/apt/sources.list
  - 把所有的有高亮的东西都注释
  - 然后添加如下内容(**注意，先不要添加，看一下这段文字后面的提示**)
```shell
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ trusty-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ trusty-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ trusty-security main restricted universe multiverse
```
- **提示：这里focal是我的Ubuntu(20.04)的版本代号，你需要根据你的Ubuntu版本把这里所有的focal字眼改为你的版本代号**
  - 这个命令可以看
  ```shell
  lsb_release -a
  ```
  - 显示出来应该类似这样
  ```shell
    No LSB modules are available.
    Distributor ID:	Ubuntu
    Description:	Ubuntu 20.04.6 LTS
    Release:	20.04
    Codename:	focal
  ```
  - codename 就是你的代号了
  - **你替换的时候注意是替换所有focal字样，包括`focal-security`这种也要替换`focal`**
### **网络问题**
  - 如果你用的是校园网的话，别用那个`eduroam`，尽量用`sdu_net`，`endurom`在用国内源的时候我经常出问题
## 执行`sudo rosdep init`出现`command not found`问题
#### 前言
- 一般是少了包`python3-rosdep2`导致的
### 解决
#### 检查你的系统python版本
- 你可以直接终端运行`python`来看
- 如果是`2.x`
  ```shell
  sudo apt install python2-rosdep2
  ```
- 如果是`3.x`
  ```3.x
  sudo apt install python3-rosdep2
  ```
## 执行`sudo rosdep init`出现`404`,`readtime out`  ... ...
#### 前言
- 网络问题，具体直接配置以下`hosts`文件
## 解决
- 打开hosts文件
    ```shell
    sudo vim /etc/hosts
    ```
- 添加以下内容(如果还是不行的话取网上查其他替代的IP，看哪个可以`ping`通就用那个)
    ```shell
    185.199.108.133 raw.githubusercontent.com
    ```
## 执行`rosdep update`出现`404`,`readtime out`  ... ...
- 和`sudo rosdep init`一样