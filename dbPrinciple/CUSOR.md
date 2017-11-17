# 游标
+ 基本描述：游标是系统为用户开设的一个数据缓冲区，用于存放SQL语句的执行结果。
+ 声明游标：DECLARE<游标名>CUSOR FOR<SELECT语句>
+ 打开游标：OPEN<游标名>
+ 推进游标：FETCH<游标名>INTO<变量列表>
+ 关闭游标：CLOSE<游标名>