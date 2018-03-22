# Mysql 数据类型
### 整形
---
|类型|长度(字节)|
|:---:|:---:|
|TINYINT|1|
|SMALLINT|2|
|MEDIUMINT|3|
|INT|4|
|BIGINT|8|
### 实数
---
|类型|长度(字节)|
|:---:|:---:|
|FLOAT|4|
|DOUBLE|8|
|DECIMAL(M, D)|Max(M, D) + 2|
### 字符串
---
|类型|长度(字节)|
|:---:|:---:|
|CHAR|0-255|
|VARCHAR(需要1-2个字节存储字符的长度)|0-2……16|
|TINYBLOG|0-255|
|BLOG(二进制存储)|0-2……16|
|MEDIUMBLOG|0-2……24|
|LOBNGBLOG|0-2……32|
|TINYTEXT|0-255|
|TEXT(字符串存储)|0-2……16|
|MEDIUMTEXT|0-2……24|
|LONGTEXT|0-2……32|
### 日期和时间
---
|类型|长度|格式|
|:---:|:---:|:---:|
|DATE|3|YYYY-MM-DD|
|TIME|3|HH:MM:SS|
|YEAR|1|YYYY|
|DATETIME|8|YYYY-MM-DD HH:MM:SS|
|DATESTAMP|4|YYYYMMDD HHMMSS|
