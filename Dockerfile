# 1. 基础镜像：官方Python轻量镜像
FROM python:3.10-slim

# 2. 设置容器内工作目录
WORKDIR /app

# 3. 复制依赖文件并安装依赖（优化缓存）
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. 复制全部项目代码到容器
COPY . .

# 5. 容器启动执行命令，运行Python程序
CMD ["python", "app.py"]
