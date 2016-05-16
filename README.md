

``镜像适合开发使用``
# 构建
```sh
docker build -t qwop/orcl .
```
# 使用方法
* 官网下载安装文件 [Oracle site](http://www.oracle.com/technetwork/database/in-memory/downloads/index.html) 
	``linux.x64_11gR2_database_1of2.zip``
	``linux.x64_11gR2_database_2of2.zip``
* 解压到安装目录 **install_folder**.
* 执行下面命令安装和创建数据库:

```sh
docker run --privileged --name orcl -p 1521:1521 -v <install_folder>:/install qwop/orcl
```
可以将配置好的容器提交:
```sh
docker commit orcl orcl-installed
```

数据文件目录 **/opt/oracle** 

系统用户信息:
* root/install
* oracle/install

数据库用户信息:
* SYS/oracle

方便导入数据库方式:
```sh
docker run --privileged --name oracle11g -p 1521:1521 -v <install_folder>:/install -v <local_dpdump>:/opt/oracle/dpdump qwop/orcl
```
执行导入导出的方法:
```sh
docker exec -it oracle11g impdp ..
```
