upstream 自动发现 更新 nginx 配置文件 然后重启nginx


### consul-server
        consul 启动二进制文件
        remark 备注
        start.sh consul agent server 启动脚本
        启动之后的web 界面 http://127.0.0.1:8500/ui/#/dc1/services

### consul-template
        参考：https://www.hashicorp.com/blog/introducing-consul-template
        consul-template consul-template 二进制文件
        demo.tomcat.ctempl 模板文件
        start.sh consul agent server 启动脚本
### nginx
        nginx 配置和启动脚本
        nginx.conf nginx 配置文件
        start.sh ningx 启动脚本


### web-server
        tomcat 启动 注册到consul和摘除从consul


### bin
        总启动脚本 sh ./bin/start.sh
        然后启动-server 可以多启动几个脚本试试，观察web界面service变化