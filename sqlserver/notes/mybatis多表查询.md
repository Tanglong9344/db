# mybatis 多表查询
+ association 一对一
```xml
<resultMap id="table_name1" type="entity1_name">
    <result property="entity1_param1" column="col11"/>
    <result property="entity1_param2" column="col12"/>
    <association property="entity1_param3" javaType="entity2">
    <result property="entity2_param1" column="col21"/>
    <result property="entity2_param2" column="col22"/>
    </association>
</resultMap>
```
+ collection 一对多
```xml
<collection property="对应entity内的属性" column="{para11=para21,para12=para22,para13=para23} select="对应表的Mapper.xml的select方法" />
```
