
## 一、文件与目录操作（最高频）

### 1. 查看与定位

pwd                 # 当前路径
ls                  # 列出文件
ls -l               # 详细列表（权限 / 用户 / 大小 / 时间）
ls -lh              # 人类可读大小（KB/MB/GB）
ls -a               # 显示隐藏文件（.env、.git）
ls -alh             # 常用组合（含隐藏文件 + 可读大小）

2. 进入目录
cd dir
cd ..               # 返回上一级
cd ~                # 回到用户主目录
cd -                # 回到上一次目录（很爽）

3. 创建
mkdir data
mkdir -p a/b/c
touch test.txt

4. 删除（⚠️ 无回收站）
rm file.txt
rm -r dir
rm -rf dir           # 谨慎
rm -ri dir           # 推荐（逐个确认）

5. 移动 / 重命名
mv a.txt b.txt
mv a.txt /tmp/


6. 复制
cp a.txt b.txt
cp -r dir1 dir2


二、文件内容查看（日志 / 配置）
cat file.txt 
less file.txt        # 强烈推荐
head file.txt        # 前 10 行
tail file.txt        # 后 10 行
tail -f app.log      # 实时日志

三、搜索与查找

1. 查文件
find . -name "*.py"      # 查找 .py 文件
find ./data -type f -name "*.jsonl" # 查找 ./data 目录下的 .jsonl 文件

2. 查内容
grep "error" app.log
grep -n "Milvus" *.py
grep -R "embedding" .


四、权限与用户
ls -l
chmod +x run.sh
chmod 755 run.sh
whoami
id

五、进程与服务

ps aux | grep python  # 查看 python 进程
top                  # 查看系统进程
htop                 # 若已安装
kill PID              # 杀死进程
kill -9 PID           # 强制杀死进程
nohup python app.py > app.log 2>&1 &  # 后台运行

六、网络相关（服务端必会）
ping google.com          # 查看 google.com 的网络连接
curl http://localhost:8000  # 查看 localhost:8000 的网页
curl -X POST http://localhost:8000/health  # 发送 POST 请求
ss -tulnp | grep 8000  # 查看 8000 端口
netstat -tulnp | grep 8000  # 查看 8000 端口
lsof -i:8000              # 查看 8000 端口
ip addr                   # 查看 IP 地址
hostname -I               # 查看 IP 地址


七、磁盘与资源
df -h                     # 查看磁盘使用情况
du -sh *                  # 查看当前目录大小
du -h --max-depth=1 | sort -h
du -h --max-depth=1 | sort -hr | head -20 # 查看前 20 个最大的目录

free -h                   # 查看内存使用情况


八、环境变量
export KEY=value          # 设置环境变量
echo $KEY
env
~/.bashrc                # 用户配置文件
~/.zshrc                # 用户配置文件


九、APT 包管理器
sudo apt update # 更新“可安装软件列表”，不会升级系统

3. 安装软件
sudo apt install git
sudo apt install curl wget
sudo apt install htop net-tools
sudo apt install -y git     # 自动确认

4. 升级软件
sudo apt upgrade            # 升级已安装包

5. 删除软件
sudo apt remove git
sudo apt purge git          # 连配置一起删

6. 清理垃圾
sudo apt autoremove
sudo apt clean
7. 搜索软件
apt search docker
apt show git


十、开发者高频组合命令
查端口占用
lsof -i:8000

查日志错误
grep -R "ERROR" logs/

解压
tar -xvf file.tar
tar -xzvf file.tar.gz
unzip file.zip
