package sample.coc.project;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeamServiceImpl implements TeamService{
	@Autowired
	TeamDao teamDao;
	
	@Override
	public String create(Map<String, Object> map) {
	    int affectRowCount = this.teamDao.insert(map);
	    if (affectRowCount ==  1) {
		    for(String key : map.keySet()) {
		            System.out.println(key + " : " + map.get(key));
		        }
	        return map.get("team_id").toString();
	    }
	    return null;

	}
	
	@Override
	public Map<String, Object> detail(Map<String, Object> map){
	    return this.teamDao.selectDetail(map);
	}
	
	@Override  
	public boolean edit(Map<String, Object> map) {  
		int affectRowCount = this.teamDao.update(map);  
		return affectRowCount == 1;  

	}  
	
}
