# A Simple Tmux Conf
快捷键前缀为 Ctrl + x
命令行模式为：
复制：shift +　mouse
快捷键帮助
```list-keys```
内置命令帮助
```list-commands```

## 会话操作
- 新建会话
```new-session -s <new-session-name>```
- 关闭会话
```kill-session -t <session-name>```
- 切换会话
```switch -t <session-name>```
- 重命名会话
```rename-session -t <old-session-name> <new-session-name>```
- 查看会话
```ls```

## 窗口操作
- 窗口列表：w
- 上一个窗口：p
- 下一个窗口：n
- 新建窗口
```new-window -n <window-name>```
-  重命名窗口
```rename-window <new-window-name>```
-  关闭窗口
```kill-window -t <window-name>```
- 切换窗口
```select-window -t <windos-name>```

## 窗格操作
- 时钟：t
- 缩放窗格：z
- 关闭窗格：x
- 分割窗格
左右分割：v
上下分割：b
- 光标
移动光标至上窗格：j
移动光标至下窗格：k
移动光标至左窗格：h
移动光标至右窗格：l

