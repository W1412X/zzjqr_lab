# 一些问题
- 最开始执行`catkin_make`的时候出现了`Configuring incomplete, errors occurred!`的问题(**如果是用的老师给的镜像和文件应该就没这个问题**)
  - 刚开始给AI说是python版本的问题
  - 因为我使用pyenv做全局的python版本管理，然后我用的是`3.11.5`的
  - 后来我就换`3.8.10`，这下报错更多了，大概是因为之前安装ROS的时候用的是`3.11.5`，一些文件就在`3.11.5`环境下
  - 后来仔细看了一下报错，貌似和第一次不一样，是缺了个包（我缺的是`catkin_pkg`），使用`pip`下载后就OK了
- 还有一个问题就是我的`python`版本是`3.x`的，然后貌似`3.x`运行会卡住，所以我就没用那个包，后面实验应该也不一定非要用`python`感觉
- 贴一个不加`ros`包的`python`代码
```python
#!~/.pyenv/shims/python
print("hello ros python")
```