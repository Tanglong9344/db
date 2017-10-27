# SQL语句顺序
### 查询的逻辑执行顺序
1. FROM <left_table>
2. ON <join_condition>
3. <join_type> JOIN <right_table>
4. WHERE <where_condition>
5. GROUP BY <group_by_list>
6. WITH {cube | rollup}
7. HAVING <having_condition>
8. SELECT
9. DISTINCT
10. ORDER BY <order_by_list>
11. <top_specification> <select_list>
### SQL 的解析顺序
1. FROM 子句 组装来自不同数据源的数据
2. WHERE 子句 基于指定的条件对记录进行筛选
3. GROUP BY 子句 将数据划分为多个分组
4. 使用聚合函数进行计算
5. 使用HAVING子句筛选分组
6. 计算所有的表达式
7. 使用ORDER BY对结果集进行排序

### 执行顺序
1. FROM：对FROM子句中前两个表执行笛卡尔积生成虚拟表vt1
2. ON:对vt1表应用ON筛选器只有满足< join_condition> 为真的行才被插入vt2
3. OUTER(join)：如果指定了 OUTER JOIN保留表(preserved table)中未找到的行将行作为外部行添加到vt2 
4. 生成t3如果from包含两个以上表则对上一个联结生成的结果表和下一个表重复执行步骤和步骤直接结束
5. WHERE：对vt3应用 WHERE 筛选器只有使< where_condition> 为true的行才被插入vt4
6. GROUP BY：按GROUP BY子句中的列列表对vt4中的行分组生成vt5
7. CUBE|ROLLUP：把超组(supergroups)插入vt6 生成vt6
8. HAVING：对vt6应用HAVING筛选器只有使< having_condition> 为true的组才插入vt7
9. SELECT：处理select列表产生vt8
10. DISTINCT：将重复的行从vt8中去除产生vt9
11. ORDER BY：将vt9的行按order by子句中的列列表排序生成一个游标vc10
12. TOP：从vc10的开始处选择指定数量或比例的行生成vt11 并返回调用者
