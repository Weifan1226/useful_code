# tmux

tmux new -s mysession
tmux ls
tmux a -t mysession
tmux kill-session -t mysession

Ctrl+b d：断开当前会话
Ctrl+b %：左右分割窗口
Ctrl+b "：上下分割窗口
Ctrl+b o：切换窗口
Ctrl+b x：关闭当前窗口

Ctrl+b PgUp：向上滑动窗口
Ctrl+b PgDn：向下滑动窗口
Ctrl+b [：进入复制模式，可以使用方向键或者PageUp/PageDown滚动屏幕
q：退出复制模式
Ctrl+b ]：粘贴复制的内容

如何启动鼠标
vim ~/.tmux.conf
echo "set -g mouse on" > ~/.tmux.conf
tmux source-file ~/.tmux.conf

1. 进入到tmux命令窗口
2. ctr+b+","， 松开按“ " ”, 实现上下分屏
3. ctrl+b 激活控制台  松开按“：”进入到命令行模式。进入到命令行模式需要先分屏
4. 进入到命令行模式后  set -g mouse on 实现