# 使用官方 PHP-FPM 镜像作为基础镜像
FROM php:7.3-fpm-alpine

# 安装 Nginx 和 Supervisor
RUN apk add --no-cache autoconf g++ make nginx supervisor

# 安装常用 PHP 扩展 (根据需要添加)
RUN docker-php-ext-install pdo_mysql mysqli opcache

# 通过 PECL 安装
RUN pecl install redis-5.3.7 && docker-php-ext-enable redis

# 使用 Supervisor 启动服务
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]