package com.yumben.controller;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yumben.entity.User;
import com.yumben.service.UserService;
import com.yumben.utils.db.Md5Utils;
import com.yumben.vo.ActionResult;

@Controller
@RequestMapping("")
public class IndexController{
	
	private final Logger log = LoggerFactory.getLogger(getClass());
	private final String STATUS="1";
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login")
	public String index(){
		return "/view/login/login";
	}
	
	
	@RequestMapping("/toregister")
	public String toregister(){
		return "/view/user/register";
	}
	
	@ResponseBody
	@RequestMapping("/tocenter")
	public ActionResult tocenter(String phone,String pwd,HttpSession session){
		ActionResult result = new ActionResult();
		if(StringUtils.isBlank(phone)){
			result.setSuccess(false);
			result.setMessage("当前输入的手机号为空，请重新输入");
			log.info("当前输入的手机号为空");
			return result;
		}
		if(StringUtils.isBlank(pwd)){
			result.setSuccess(false);
			result.setMessage("当前输入的密码为空，请重新输入");
			log.info("当前输入的密码为空");
			return result;
		}
		User user = new User();
		user.setPhone(phone);
		user.setPassWord(Md5Utils.md5(pwd));
		user.setStatus(STATUS);
		User entity = userService.query(user);
		if(entity == null){
			result.setSuccess(false);
			result.setMessage("您输入的账号或密码不正确！");
			log.info("当前查询的用户为空，请检查用户数据是否异常");
			return result;
		}
		session.setAttribute("id", entity.getId());
		result.setSuccess(true);
		result.setMessage("登陆成功！");
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/register")
	public ActionResult register(String name,String phone,String pwd,HttpSession session){
		ActionResult result = new ActionResult();
		if(StringUtils.isBlank(name)){
			result.setSuccess(false);
			result.setMessage("当前输入的昵称为空，请重新输入");
			log.info("当前输入的昵称为空");
			return result;
		}
		if(StringUtils.isBlank(phone)){
			result.setSuccess(false);
			result.setMessage("当前输入的手机号为空，请重新输入");
			log.info("当前输入的手机号为空");
			return result;
		}
		if(StringUtils.isBlank(pwd)){
			result.setSuccess(false);
			result.setMessage("当前输入的密码为空，请重新输入");
			log.info("当前输入的密码为空");
			return result;
		}
		try {
			int count=userService.count(phone);
			if(count >0){
				result.setSuccess(false);
				result.setMessage("该手机号已注册过！");
				log.info("该手机号已注册过，请重新输入手机号进行注册");
				return result;
			}
			User entity = new User();
			entity.setNickName(name);
			entity.setPhone(phone);
			entity.setPassWord(Md5Utils.md5(pwd));
			entity.setStatus(STATUS);
			userService.add(entity);
			session.setAttribute("id", entity.getId());
			result.setSuccess(true);
			result.setMessage("恭喜你，注册成功！");
		} catch (Exception e) {
			e.printStackTrace();
			log.info("新增用户报错了，信息是："+e);
			result.setSuccess(false);
			result.setMessage("网络异常，请稍后再操作！");
			return result;
		}
		return result;
	}
	
	
}
