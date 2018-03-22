# Mysql细节
### 修改数据表引擎 
+ 直接修改
---
```mysql
alter table table_test1 engine = InnoDB; # set table_test1's engine as InnoDB
```
+ 更安全的方式
```mysql
# set table_test1's engine from MyISAM to InnoDB by creating a new table table_test1_InnoDB
DROP TABLE IF EXISTS table_test1_InnoDB ;
CREATE TABLE table_test1_InnoDB LIKE table_test1;
ALTER TABLE table_test1_InnoDB ENGINE = InnoDB;
INSERT INTO table_test1_InnoDB 
                         SELECT * FROM table_test1;
```
---
![setEngine.png](pictures/setEngine.png)
+ Mysql的char会自动去除末尾的空格
```mysql
drop table if exists char_test;
create table char_test(name char(20));
insert into char_test(name) values
('  s s s   m'),
('  12 b3 2  '),
('sdf dfsd   '),
('23432dsffds');
select concat("'", name, "'") from char_test;
```
---
![char.png](pictures/char.png)