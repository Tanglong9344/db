# Mysql优化
## 表结构优化
1. 存储引擎选择(InnoDB、MyiSam)
2. 字段类型选择(小、定长、使用整数)
3. 合理使用范式
4. 检索字段建立索引(index)
5. 数据量很大的表进行分区分表(partition)
## SQL语句优化
1. 尽量少用join
2. 用exists、between 代替in
3. 只查询使用的字段
4. 为查询字段建立索引
## SQL语句执行顺序
![image](https://user-images.githubusercontent.com/23167504/160550705-51fff440-e24b-4757-b6e4-534c4e8f7829.png)
## SQL语句执行过程
![image](https://user-images.githubusercontent.com/23167504/160567541-e57985bf-25e6-4cae-a349-771a699fadf9.png)
## Mysql体系结构
![image](https://user-images.githubusercontent.com/23167504/160567669-73fc9364-2648-4476-bbef-a937ad05dcc7.png)
