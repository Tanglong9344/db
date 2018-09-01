# sqlServer 笔记
+ 使用sqlSession.insert(" "," ")插入数据后，获取自增长的id
  + sql insert语句中添加<selectKey>
  ```
  <insert id="methodName" parameterType="" useGeneratedKeys="true" keyProperty="id">
		insert into tabel_name (col1,col2) values (#{val1},#{val2})
    <selectKey order="AFTER" keyProperty="id" resultType="Long">
      SELECT @@IDENTITY AS id;
    </selectKey>
  </insert>
  ```
  + java 接收id
  ```java
  public Long add(Entity entity){
    sqlSession.insert("methodName",entity);
    return entity.getId();
  }
  ```
