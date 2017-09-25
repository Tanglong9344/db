# Orcal 常用函数 <h3 id="abstract"></h3>
### 目录
+ [to_char()函数](#toChar)
+ [to_date()函数](#toDate)
+ [regexp_replace()函数](#regexpReplace)
+ [获取当前时间](#getCuttentTime)
+ [floor()函数和months_between()函数](#floorAndMonths_between)
+ [rank() over函数](#rankOver)
+ [UNION连接符](#union)
---
### 测试表 <h3 id="testTable"></h3>
+ [测试表1](#testTable1)
---
+ ### <h3 id="toChar">to_char()函数</h3> [返回目录](#abstract)
```
select t.name as 姓名,
       t.study_date as 入学日期,
       to_char(t.study_date, 'yyyy-MM-dd') as 入学年月,
       to_char(t.study_date, 'HH24:MI:SS') as 入学时间
  from ORCAL_TEST t;
```
### 执行结果
![toChar](https://github.com/Tanglong9344/SQL/blob/master/OrcalBO/picture/toChar.png)
---

+ ### <h3 id="toDate">to_date()函数</h3> [返回目录](#abstract)
```
select t.name as 姓名,
       t.birth_date as 出生日期,
       to_date(t.birth_date, 'yyyy-MM-dd') as 出生年月
  from ORCAL_TEST t;
```
### 执行结果
![toDate](https://github.com/Tanglong9344/SQL/blob/master/OrcalBO/picture/toDate.png)
---

+ ### <h3 id="regexpReplace">regexp_replace()函数</h3> [返回目录](#abstract)
```
-- 参数：1，列名，2.匹配模式，3.替代成什么，
--       4.开始位置，5.第几个匹配
select regexp_replace(t.name, '.', '*', 2, 1) as 姓名,
       t.birth_date,
       t.study_date
  from ORCAL_TEST t;
```
### 执行结果
![regexpReplace](https://github.com/Tanglong9344/SQL/blob/master/OrcalBO/picture/regexpReplace.png)

----

+ ### <h3 id="getCuttentTime">获取当前时间</h3> [返回目录](#abstract)
```
select sysdate as 当前时间 from grades_test;
```
### 执行结果
![getCurrentTime](https://github.com/Tanglong9344/SQL/blob/master/OrcalBO/picture/getCurrentTime.png)

----
+ ### <h3 id="floorAndMonths_between">fllor()函数和months_between()函数</h3> [返回目录](#abstract)
```
-- floor()函数，取整数
-- months_between()函数，获取两个日期之间的月份数

SELECT t.name as 姓名,
       floor(months_between(sysdate, to_date(t.birth_date, 'yyyy-mm-dd')) / 12) as 年龄
  from orcal_test t
```
### 执行结果
![floorAndMonths_between](https://github.com/Tanglong9344/SQL/blob/master/OrcalBO/picture/floorAndMonths_between.png)

----

+ ### <h3 id="rankOver">rank() over函数</h3> [返回目录](#abstract)
```
-- rank() over函数，显示并列排名
-- rownum 用于获取前n行数据

select *
  from (SELECT t.name as 姓名,
               t.birth_date as 出生日期,
               rank() over(order by t.birth_date desc) as 排名
          from orcal_test t)
 where rownum < 4 -- 获取前三行数据
```
### 执行结果
![rankOver](https://github.com/Tanglong9344/SQL/blob/master/OrcalBO/picture/rankOver.png)

---
+ ### <h3 id="union">UNION连接符</h3> [返回目录](#abstract)
```
SELECT t.name 字段联合
  FROM orcal_test t
UNION 
  (SELECT t.birth_date FROM orcal_test t);
```
### 执行结果
![union](https://github.com/Tanglong9344/SQL/blob/master/MySQLBO/picture/union.png)

---
+ ### <h3 id="testTable1">测试表1</h3> [返回目录](#testTable)
```
-- Create table
create table ORCAL_TEST
(
  name       VARCHAR2(10) not null,
  birth_date VARCHAR2(30) not null,
  study_date DATE
)
tablespace DATASERVER
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table ORCAL_TEST
  is '测试用表';
-- Add comments to the columns 
comment on column ORCAL_TEST.name
  is '姓名';
comment on column ORCAL_TEST.birth_date
  is '出生日期';
comment on column ORCAL_TEST.study_date
  is '入学日期';

 -- insert data
insert into ORCAL_TEST (name, birth_date, study_date)
values ('小绿','1999-08-09',to_date('2017-09-01 11:11:03','yyyy-mm-dd HH24:MI:SS'));
insert into ORCAL_TEST (name, birth_date, study_date)
values ('小强','1998-04-19',to_date('2017-09-02 10:31:11','yyyy-mm-dd HH24:MI:SS'));
insert into ORCAL_TEST (name, birth_date, study_date)
values ('小刀','1999-11-23',to_date('2017-09-05 13:45:34','yyyy-mm-dd HH24:MI:SS'));
insert into ORCAL_TEST (name, birth_date, study_date)
values ('小红','2000-01-01',to_date('2017-09-03 12:01:06','yyyy-mm-dd HH24:MI:SS'));
```
### 完成后显示结果
![测试表1](https://github.com/Tanglong9344/SQL/blob/master/OrcalBO/picture/testTable1.png)
