# 替换为支持 ARM64 的第三方镜像
FROM cloudnas/clouddrive2:latest-aarch64

# 若镜像基于 Alpine 系统，安装 jq 工具（保留原逻辑）
RUN apk add --no-cache jq

# 复制启动脚本（保留原逻辑）
COPY run.sh /run.sh
RUN chmod a+x /run.sh

# 创建数据目录并设置权限（保留原逻辑）
RUN mkdir -p /app/data && chmod 777 /app/data

# 启动命令（保留原逻辑）
CMD ["/run.sh"]
