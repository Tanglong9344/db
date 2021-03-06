# redis 安装配置(windows 10 64位 command line)
+ [下载地址](https://github.com/MicrosoftArchive/redis/releases)
+ 参考Windows Service Documentation.docx文档
	+ Installing the Service
	```
	redis-server --service-install redis.windows-service.conf --loglevel verbose
	```
	---
	![install.PNG](pictures/install.PNG)
	---
	+ Uninstalling the Service
	```
	redis-server --service-uninstall
	```
	---
	![uninstall.PNG](pictures/uninstall.PNG)
	---
	+ Starting the Service
	```
	redis-server --service-start
	```
	---
	![start.PNG](pictures/start.PNG)
	---
	+ Stopping the Service
	```
	redis-server --service-stop
	```
	---
	![stop.PNG](pictures/stop.PNG)
	---
	+ Naming the Service
	```
	# install
	redis-server --service-install --service-name redisService2 redis.windows-service.conf --loglevel verbose
	# start
	redis-server --service-start --service-name redisService2
	```
	---
	![name.PNG](pictures/name.PNG)
	---
	+ set-get test
	```
	# open redis client
	redis-cli.exe
	# 设置key hr对应的value为Hello Redis
	set hr "Hello Redis" 
	# 获取key hr对应的value
	get hr 
	```
	---
	![set-get.PNG](pictures/set-get.PNG)
	---
	+ set ip, port, and password
	```
	redis-cli.exe -h 127.0.0.1 -p 6379 -a 123456
	```
---