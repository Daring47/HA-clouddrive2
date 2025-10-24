# 优先尝试官方ARM64镜像（若存在）
# 若官方无aarch64标签，可替换为支持ARM64的第三方镜像或自行构建
FROM cloudrive2/cloudrive2:latest-aarch64

# 若官方镜像基于Alpine系统（ARM设备常用），安装jq工具
RUN apk add --no-cache jq

# 复制启动脚本
COPY run.sh /run.sh
RUN chmod a+x /run.sh

# 创建数据目录并设置权限（适配HAOS的权限机制）
RUN mkdir -p /app/data && chmod 777 /app/data

# 启动命令
CMD ["/run.sh"]