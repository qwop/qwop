

``�����ʺϿ���ʹ��``
# ����
```sh
docker build -t qwop/orcl .
```
# ʹ�÷���
* �������ذ�װ�ļ� [Oracle site](http://www.oracle.com/technetwork/database/in-memory/downloads/index.html) 
	``linux.x64_11gR2_database_1of2.zip``
	``linux.x64_11gR2_database_2of2.zip``
* ��ѹ����װĿ¼ **install_folder**.
* ִ���������װ�ʹ������ݿ�:

```sh
docker run --privileged --name orcl -p 1521:1521 -v <install_folder>:/install qwop/orcl
```
���Խ����úõ������ύ:
```sh
docker commit orcl orcl-installed
```

�����ļ�Ŀ¼ **/opt/oracle** 

ϵͳ�û���Ϣ:
* root/install
* oracle/install

���ݿ��û���Ϣ:
* SYS/oracle

���㵼�����ݿⷽʽ:
```sh
docker run --privileged --name oracle11g -p 1521:1521 -v <install_folder>:/install -v <local_dpdump>:/opt/oracle/dpdump qwop/orcl
```
ִ�е��뵼���ķ���:
```sh
docker exec -it oracle11g impdp ..
```
