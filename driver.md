# 数据库驱动
+ Mysql
  + 驱动下载
  ```xml
  <!-- https://mvnrepository.com/artifact/mysql/mysql-connector-java -->
  <dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>6.0.6</version>
  </dependency>
  ```
  + 驱动加载
  ```java
  Class.forName("com.mysql.cj.jdbc.Driver");
  ```
  + 连接地址
  ```
  jdbc:mysql://localhost:3306/test
  ?useUnicode=true
  &characterEncoding=utf-8
  &autoReconnect=true
  &useJDBCCompliantTimezoneShift=true
  &useLegacyDatetimeCode=false
  &serverTimezone=GMT%2B8
  ```
+ Sqlserver
  + 驱动下载
  ```xml
   <!-- https://mvnrepository.com/artifact/com.microsoft.sqlserver/mssql-jdbc -->
  <dependency>
    <groupId>com.microsoft.sqlserver</groupId>
    <artifactId>mssql-jdbc</artifactId>
    <version>8.1.0.jre8-preview</version>
    <scope>test</scope>
  </dependency>
  ```
  + 驱动加载
  ```java
  Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
  ```
  + 连接地址
  ```
  jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=test
  ```
+ Orcal
 + 驱动下载
  ```xml
  <!-- https://mvnrepository.com/artifact/ojdbc/ojdbc -->
  <dependency>
      <groupId>ojdbc</groupId>
      <artifactId>ojdbc</artifactId>
      <version>14</version>
  </dependency>
  ```
  + 驱动加载
  ```java
  Class.forName("oracle.jdbc.driver.OracleDriver");
  ```
  + 连接地址
  ```
  jdbc:oracle:thin:@localhost:1521:test
  ```
