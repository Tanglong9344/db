# 触发器
+ 基本描述：一类由数据库操作事件(INSERT UPDATE DELETE)驱动的特殊过程。
+ 创建触发器|CREATE TRIGGER
1. 基本格式:
```
CREATE TRIGGER<触发器名>
{BEFORE|AFTER} {INSERT|UPDATE|DELETE} ON<表名>
FOR EACH ROW
BEGIN
	<触发动作>
END
```
2. 说明:
```
1. BEFORE(AFTER)：DBMS在执行触发语句前(后)激发触发器
2. DELETE|UPDATE|INSERT：DBMS在执行数据库操作语句时激发触发器

```
3. 示例
```
#当Employee表上数据被删除前将数据插入到Employee_his表中
#创建触发器
CREATE TRIGGER `Tri_del`
  BEFORE DELETE ON `employee`
  FOR EACH ROW
BEGIN
  INSERT INTO `Employee_his`
    SELECT * FROM `employee`;
END
# 删除数据
DELETE FROM `employee`;
```
+ 删除触发器：DROP TRIGGER<触发器名>