package sample.coc.project;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SheetController {
	@Autowired
	SheetService sheetService;
	@Autowired
	UserService userService;
	@Autowired
	TeamService teamService;
	
	@RequestMapping(value="/index", method = RequestMethod.GET)
	public ModelAndView index() {
	    return new ModelAndView("coc/index");
	}
	@RequestMapping(value="/guide", method = RequestMethod.GET)
	public ModelAndView guide() {
	    return new ModelAndView("coc/guide");
	}
	@RequestMapping(value="/team", method = RequestMethod.GET)
	public ModelAndView team(@RequestParam Map<String, Object> map) {
		Map<String, Object> detailMap = this.userService.detail(map); 
	    for(String key : detailMap.keySet()) {
            System.out.println(key + " : " + detailMap.get(key));
        }
		ModelAndView mav = new ModelAndView(); 

		mav.addObject("data", detailMap);  
		mav.setViewName("/coc/team");  
		return mav;
	   
	}
	
	@RequestMapping(value="/team", method = RequestMethod.POST)
	public ModelAndView createteam(@RequestParam Map<String, Object> map) {
		
	    ModelAndView mav = new ModelAndView();

	    String team_id = this.teamService.create(map);
		System.out.println("detailmap-----------------------------");

		Map<String, Object> detailMap = this.userService.detail(map); 
	    for(String key : detailMap.keySet()) {
            System.out.println(key + " : " + detailMap.get(key)+":"+detailMap.get(key).getClass().getName());
        }
		System.out.println("detailmap change-----------------------------");
	    for(String key : detailMap.keySet()) {
	         if(detailMap.get(key).equals(0L)) {
	        	 detailMap.put(key, team_id);
	             System.out.println("key and value changed");
	             System.out.println(key + " : " + detailMap.get(key));
	             break;
	         }
	        }
	    
		boolean isUpdateSuccess = this.userService.edit(detailMap);

	    if (team_id == null) {
	        mav.setViewName("redirect:/team");
	    }else {
	        mav.setViewName("redirect:/sheetList?team_id="+team_id); 
	    }  
	    return mav;
	}
	
	
	@RequestMapping(value="/updateLog", method = RequestMethod.GET)
	public ModelAndView updateLog() {
	    return new ModelAndView("coc/updateLog");
	}
	
	@RequestMapping(value="/sheet", method = RequestMethod.GET)
	public ModelAndView create(@RequestParam Map<String, Object> map) {
	    return new ModelAndView("coc/sheet");
	}
	@RequestMapping(value="/guestSheet", method = RequestMethod.GET)
	public ModelAndView guestSheet(@RequestParam Map<String, Object> map) {
	    return new ModelAndView("coc/guestSheet");
	}
	
	
	
	@RequestMapping(value = "/sheet", method = RequestMethod.POST)
	public ModelAndView createPost(@RequestParam Map<String, Object> map) {
	    ModelAndView mav = new ModelAndView();
        System.out.println("map");

	    for(String key : map.keySet()) {
	         String value = (String) map.get(key);
	            System.out.println(key + " : " + value);
	        }

		Map<String, Object> detailMap = this.teamService.detail(map); 

	    String userId = this.sheetService.create(map);
        System.out.println("deteail map");

	    for(String key : detailMap.keySet()) {
            System.out.println(key + " : " + detailMap.get(key));
	        }
	    
	    for(String key : detailMap.keySet()) {
	         if(detailMap.get(key).equals(0L)) {
	        	 detailMap.put(key, userId);
	             System.out.println("key and value changed");
	             System.out.println(key + " : " + detailMap.get(key));
	             break;
	         }
	        }
	    
		boolean isUpdateSuccess = this.teamService.edit(detailMap); 
		if(isUpdateSuccess) {
            System.out.println("team update success");
		}else {
            System.out.println("team update fail");

		}

	    if (userId == null) {
	        mav.setViewName("redirect:/sheet");
	    }else {
	        mav.setViewName("redirect:/update?userId=" + userId+"&team_id="+map.get("team_id")); 
	    }  
	    

	    return mav;
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)  
	public ModelAndView update(@RequestParam Map<String, Object> map) { 
		Map<String, Object> detailMap = this.sheetService.detail(map); 
	    for(String key : map.keySet()) {
	    	detailMap.put(key, map.get(key));
        }

	    for(String key : detailMap.keySet()) {
	            System.out.println(key + " : " + detailMap.get(key));
	        }
		ModelAndView mav = new ModelAndView();  
		mav.addObject("data", detailMap);  
		mav.setViewName("/coc/update");  
		return mav;  
	}  
	
	@RequestMapping(value = "update", method = RequestMethod.POST)  
	public ModelAndView updatePost(@RequestParam Map<String, Object> map) {  
	ModelAndView mav = new ModelAndView();  

	boolean isUpdateSuccess = this.sheetService.edit(map);
	if (isUpdateSuccess) {  
	String userId = map.get("userId").toString();  
	mav.setViewName("redirect:/update?userId=" + userId+"&team_id="+map.get("team_id"));  
	}else {  
	mav = this.update(map);  
	}  

	return mav;  
	}  
	
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)  
	public ModelAndView deletePost(@RequestParam Map<String, Object> map) {  
	ModelAndView mav = new ModelAndView();  
    for(String key : map.keySet()) {
        System.out.println(key + " : " + map.get(key) + ":" + map.get(key).getClass().getName());
       }
    System.out.println("--------------------------------------------");


	boolean isDeleteSuccess = this.sheetService.remove(map);  
	Map<String, Object> detailMap = this.userService.detail(map); 
	
    for(String key : detailMap.keySet()) {
        System.out.println(key + " : " + detailMap.get(key) + ":" + detailMap.get(key).getClass().getName());
/*
        if(detailMap.get(key).equals(Long.parseLong((String) map.get("userId")))) {
        	detailMap.put(key, 0L);
            System.out.println("key and value changed");
            System.out.println(key + " : " + detailMap.get(key));
        }
       */
       }
    
	boolean isUpdateSuccess = this.userService.edit(detailMap); 


	if (isDeleteSuccess) {  
		mav.setViewName("redirect:/sheetList?id="+detailMap.get("id"));  
	}else {  
		String userId = map.get("userId").toString();  
		mav.setViewName("redirect:/update?userId=" + userId);
	}  

	return mav;  
	}  
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)  
	public ModelAndView addPost(@RequestParam Map<String, Object> map) {  
	ModelAndView mav = new ModelAndView();
		
    Map<String, Object> detailmap = this.userService.detail(map);
    
    for(String key : detailmap.keySet()) {
    	if(detailmap.get(key).equals(Long.parseLong((String) map.get("target")))) {
    		detailmap.put(key, map.get("team_id"));
    		break;
    	}
    }
    
	boolean isUpdateSuccess = this.userService.edit(detailmap); 
	
	mav.setViewName("redirect:/team?id=" + map.get("id"));

    return mav;
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView(); 
		for(String key : map.keySet()) {
	         String value = (String) map.get(key);
	            System.out.println(key + " : " + value);
	        }
        System.out.println("----------------");

		Map<String, Object> detailMap = this.userService.detail(map); 
		if(detailMap != null) {
			for(String key : detailMap.keySet()) {
				if(detailMap.get(key) == null) {
		            System.out.println(key + " : NULL");
				}
				else {
		            System.out.println(key + " : " + detailMap.get(key));
				}
		    }
			if(map.get("id").equals(detailMap.get("id")) && map.get("pw").equals(detailMap.get("pw")))
			{
	            System.out.println("로그인 성공");

				mav.setViewName("redirect:/team?id="+detailMap.get("id"));  

			}
			else {
	            System.out.println("실패");

				mav.setViewName("redirect:/login");  

			}
		}
		else {
			mav.setViewName("/coc/login");  

		}


		return mav;  

	}
	
	@RequestMapping(value="/signUp", method = RequestMethod.GET)
	public ModelAndView signUp() {
	    return new ModelAndView("coc/signUp");
	}
	
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public ModelAndView signUp(@RequestParam Map<String, Object> map) {
	    ModelAndView mav = new ModelAndView();

	    String user_cnt = this.userService.create(map);
	    if (user_cnt == null) {
	        mav.setViewName("redirect:/signUp");
	    }else {
	        mav.setViewName("redirect:/login"); 
	    }  

	    return mav;
	}
	
	@RequestMapping(value="/sheetList", method = RequestMethod.GET)
	public ModelAndView sheetList(@RequestParam Map<String, Object> map) {  
		Map<String, Object> detailMap = this.teamService.detail(map); 

		ModelAndView mav = new ModelAndView(); 
		
		mav.addObject("data", detailMap);  
		mav.setViewName("/coc/sheetList");  
		return mav;  
	}
	
	@RequestMapping(value = "/duplication", method = RequestMethod.POST)  
	public ModelAndView checkDuplication(@RequestParam Map<String, Object> map) {  
	ModelAndView mav = new ModelAndView();

	System.out.println("중복확인페이지 시작");
    for(String key : map.keySet()) {
        	System.out.println(key + " : " + map.get(key));
    }
    	
	mav.setViewName("redirect:/signUp");
	System.out.println("중복확인페이지 끝");

    return mav;
	}

	@RequestMapping(value="/idCheck", method = RequestMethod.GET)
	public ModelAndView idCheck() {
	    return new ModelAndView("coc/idCheck");
	}
	
	@RequestMapping(value="/idCheck", method = RequestMethod.POST)
	public ModelAndView idCheck(@RequestParam Map<String, Object> map) {
		
		System.out.println("중복확인페이지 시작");
	    for(String key : map.keySet()) {
	        	System.out.println(key + " : " + map.get(key));
	    }
		System.out.println("--------------------");

		
		boolean duplicate = false;
		try {
		    Map<String, Object> detailmap = this.userService.detail(map);
		    if(detailmap.equals(null)) {
		    	System.out.println("트라이~");
		    }
		} catch(NullPointerException e){
			duplicate=true;
	    	System.out.println("중복! 중복! 중복");
		}finally{
	    	System.out.println("중복아님! 중복아님!");
		}
		
		Map<String, Object> sendmap = new HashMap<>();
		sendmap.put("dup", "아이디가 중복입니다.");
		sendmap.put("is_dup", "1");
		sendmap.put("id", map.get("id"));


		if(duplicate) {
			sendmap.put("dup", "아이디 사용이 가능합니다. 닫기버튼을 눌러 주세요!");
			sendmap.put("is_dup", "0");

		}
		
		ModelAndView mav = new ModelAndView(); 

		mav.addObject("data", sendmap);  

		mav.setViewName("/coc/idCheck");  
	    return mav;
	}	
}
