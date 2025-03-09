php开发环境镜像
===============

软件环境：

+ php
+ php-fpm
+ nginx
+ supervisor

## 安装

> 拉取代码

~~~
git clone https://github.com/luler/php_fpm_base.git
~~~

> 安装前，机器必须安装docker、和docker-compose环境

~~~
docker-compose up -d
~~~

# 运行测试

status都处于up,则证明运行良好

~~~
$ docker-compose ps
NAME                       IMAGE                    COMMAND                   SERVICE     CREATED         STATUS         PORTS
php_fpm_base-php_nginx-1   php_fpm_base-php_nginx   "docker-php-entrypoi…"   php_nginx   9 seconds ago   Up 5 seconds   9000/tcp, 0.0.0.0:9001->9001/tcp, 0.0.0.0:8080->80/tcp
~~~

然后就可以在浏览器中访问

~~~
http://localhost:8080
~~~

输出

~~~
hello world
~~~
