# DCL(Data Control Language)
### 关键字：grant revoke
+ DBA为用户注册|GRANT
	1. 基本格式：
	```
	GRANT<特权类型>TO<用户标识符>[IDENTIFIED BY<口令>];
	```
	2. 说明：
	```
	<特权类型>：CONNECT RESOURCE DBA
	```
	3. 示例：
	```
	# 把新用户WANG注册为RESOURCE用户，口令为W02XYZ
	GRANT RESOURCE TO WANG IDENTIFIED BY W02XYZ;
	```
+ DBA撤销对用户的注册|REVOKE
	1. 基本格式：
	```
	REVOKE<特权类型清单>FROM<用户标识符>;
	```
	