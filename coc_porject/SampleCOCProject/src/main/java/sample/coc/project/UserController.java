package sample.coc.project;

import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public class UserController {
	@Autowired
	UserService userService;
	@RequestMapping(value="/signUp", method = RequestMethod.GET)
	public ModelAndView signUp() {
	    return new ModelAndView("coc/signUp");
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView login() {
	    return new ModelAndView("coc/login");
	}
	
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public ModelAndView createPost(@RequestParam Map<String, Object> map) {
	    ModelAndView mav = new ModelAndView();

	    String bookId = this.userService.create(map);
	    if (bookId == null) {
	        mav.setViewName("redirect:/signUp");
	    }else {
	        mav.setViewName("redirect:/login"); 
	    }  

	    return mav;
	}
	
}
