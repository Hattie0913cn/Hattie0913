# 1. 基础镜像：官方Python轻量镜像
FROM python:3.10-slim

# 2. 设置容器内工作目录
WORKDIR /app

# 把刚才写的 app.py 复制到镜像里
COPY app.py .

# 暴露 8080 端口
EXPOSE 8080

# 启动命令
CMD ["python", "app.py"]
