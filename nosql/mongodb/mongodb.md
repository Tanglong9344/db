# mogodb
+ [官网](https://www.mongodb.com/)
+ [GitHub](https://github.com/mongodb)
+  mongodb基本操作
---
|命令|说明|
|:---:|:---:|
|net start mongodb(管理员模式下)|启动mongodb|
|net stop mongodb(管理员模式下)|关闭mongodb|
|db.version()|查看当前数据库版本|
|show dbs|查看所有数据库|
|use test|切换到(创建)test数据库|
|db(db.getName()|显示当前数据库|
|db.stats()|查看当前数据库状态|
|db.getMongo()|查看当前数据库的连接的机器地址|
|db.dropDatabase()|删除当前数据库|
|db.createCollection('c1')|创建集合|
|db.c1.insert({name:'test'})|插入文档|
|show collections(db.getCollectionNames())|查看当前数据库下的所有集合|
|db.c1.find()|查看集合里面的内容|
|db.c1.renameCollection("c2")|重命名集合|
|db.c1.drop()|删除集合|
|db.c1.distinct("name")|查询集合中name列去除重复数据的结果|
|db.c1.remove({})|删除集合中的所有数据|
|db.c1.stats()|查看集合数据状态|
|db.c1.dataSize()|集合中数据原始大小|
|db.c1.storageSize()|集合中数据压缩存储的大小|
|db.c1.totalSize()|集合中索引+数据压缩存储的大小|
|db.c1.totalIndexSize()|集合中索引数据的原始大小|
+ mongodb用户权限
---
|权限|说明|
|:---:|:---:|
|Read                |允许用户读取指定数据库|
|readWrite           |允许用户读写指定数据库|
|dbAdmin             |允许用户在指定数据库中执行管理函数，如索引创建、删除，查看统计或访问system.profile|
|userAdmin           |允许用户向system.users集合写入，可以找指定数据库里创建、删除和管理用户|
|clusterAdmin        |只在admin数据库中可用，赋予用户所有分片和复制集相关函数的管理权限。|
|readAnyDatabase     |只在admin数据库中可用，赋予用户所有数据库的读权限|
|readWriteAnyDatabase|只在admin数据库中可用，赋予用户所有数据库的读写权限|
|userAdminAnyDatabase|只在admin数据库中可用，赋予用户所有数据库的userAdmin权限|
|dbAdminAnyDatabase  |只在admin数据库中可用，赋予用户所有数据库的dbAdmin权限。|
|root                |只在admin数据库中可用。超级账号，超级权限|
+ 创建管理员账户
	+ 进入管理数据库 use admin;
	+ 创建管理用户 db.createUser({user:"root",pwd:"root",roles:[{role:"root",db:"admin"}]});
	+ 验证用户db.auhth("root","root")
	+ 删除用户db.dropUser("root")
