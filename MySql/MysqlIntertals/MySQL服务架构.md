# MySQL服务架构
+ 服务器架构
---
![server.png](pictures/server.png)
+ 存储引擎
+ 查询缓存
+ 并发控制
	+ 锁粒度(尽可能的小)
	+ 表锁(table lock)
	+ 行级锁(row lock)
	+ 多版本并发控制(MVCC)(InnoDB通过在每行后面添加创建时间和过期时间来实现的)
	---
	![mvvc.png](pictures/mvvc.png)
		+ 乐观
		+ 悲观
+ 事务(ACID)
+ 事务日志(提高效率、提高系统容错力、便于数据恢复)
+ 隔离级别
	+ 未提交读(Read Uncommited)
	+ 交读(Read Cmmited)(不可重复读)
	+ 可重复读(Repeatable Read)
	+ 可串行化(Serializable)
---
![isolation.png](pictures/isolation.png)
+ 死锁
	+ 死锁检测
	+ 超时机制
+ SQL语句解析-构建解析树
+ 优化
	+ 重写查询
	+ 表的读取顺序
	+ 选择合适的索引
