package com.yumben.controller;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yumben.entity.User;
import com.yumben.service.UserService;

@Controller
@RequestMapping("/User")
public class UserController {
	
	private final String STATUS="1";
	
	@Autowired
	private UserService userService;
	
	
	
	@RequestMapping("/center")
	public String center(HttpSession session,Model model){
		String id = (String) session.getAttribute("id");
		if(StringUtils.isBlank(id)||StringUtils.isBlank(id)){
			return "/view/login/login";
		}
		
		User user = new User();
		user.setId(id);
		user.setStatus(STATUS);
		model.addAttribute("entity",userService.query(user));
		return "/view/user/center";
	}

}
