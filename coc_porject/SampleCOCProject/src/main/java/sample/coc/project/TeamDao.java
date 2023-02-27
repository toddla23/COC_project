package sample.coc.project;

import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TeamDao {
	 @Autowired
	 SqlSessionTemplate sqlSessionTemplate;
	 public int insert(Map<String, Object> map) {
		  return this.sqlSessionTemplate.insert("team_table.insert", map);
		}
	 public Map<String, Object> selectDetail(Map<String, Object> map) {
		    return this.sqlSessionTemplate.selectOne("team_table.select_detail", map);
		}
	 
	 public int update(Map<String, Object> map) {  
		 return this.sqlSessionTemplate.update("team_table.update", map);  
		 }  
}
