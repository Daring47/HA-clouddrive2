# 基于 Home Assistant 官方 aarch64 基础镜像
FROM homeassistant/aarch64-base:latest

# 安装依赖（如 jq，按需添加）
RUN apk add --no-cache jq

# 下载并解压 CloudDrive2 官方 aarch64 二进制包
WORKDIR /app
RUN curl -L -o clouddrive2.tar.gz https://www.clouddrive2.com/download?arch=aarch64&platform=linux \
    && tar -zxvf clouddrive2.tar.gz \
    && rm clouddrive2.tar.gz

# 复制启动脚本（若有）
COPY run.sh /run.sh
RUN chmod a+x /run.sh

# 创建数据目录并设置权限
RUN mkdir -p /app/data && chmod 777 /app/data

# 启动命令
CMD ["/run.sh"]
