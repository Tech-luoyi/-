# Dockerfile
FROM nginx:alpine
 
# 复制静态文件到 nginx 目录
COPY . /usr/share/nginx/html/
 
# 设置正确的文件权限
RUN chmod -R 755 /usr/share/nginx/html/
 
# 暴露端口
EXPOSE 80
 
# 启动 nginx
CMD ["nginx", "-g", "daemon off;"]