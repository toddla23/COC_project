package sample.coc.project;

import java.util.*;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
 @Autowired
 SqlSessionTemplate sqlSessionTemplate;
 public int insert(Map<String, Object> map) {
	  return this.sqlSessionTemplate.insert("user_table.insert", map);
	}
 
 public Map<String, Object> selectDetail(Map<String, Object> map) {
	    return this.sqlSessionTemplate.selectOne("user_table.select_detail", map);
	}
 public int update(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.update("user_table.update", map);  
	 }  
}
