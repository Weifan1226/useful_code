curl -LsSf https://astral.sh/uv/install.sh | sh

echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

uv --version

echo 'export UV_INDEX_URL=https://mirrors.aliyun.com/pypi/simple' >> ~/.bashrc
# echo 'export UV_INDEX_URL=https://pypi.tuna.tsinghua.edu.cn/simple' >> ~/.bashrc

source ~/.bashrc  

export UV_DEFAULT_INDEX="https://mirrors.aliyun.com/pypi/simple"

#创建虚拟环境
uv venv .venv

#指定 Python 版本：
uv venv -p 3.10 .venv

# 指定 Python 路径：
uv venv -p /usr/bin/python3.10 .venv

# 删除虚拟环境（彻底清理）
rm -rf .venv

# 安装单个包（pip 等价）
uv pip install torch

# 指定版本：
uv pip install vllm==0.5.4

# 卸载包
uv pip uninstall vllm

# 查看已安装依赖
uv pip list

# 查看某个包信息
uv pip show vllm

# 查看依赖树（debug 神器）
uv pip tree

# 生成 lock 文件
uv pip compile pyproject.toml -o uv.lock

# 按 lock 文件安装（可复现）
uv pip sync uv.lock
