package com.yidu.controller.gsp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yidu.bean.gsp.UserRealname_gsp;
import com.yidu.service.gsp.UserRealnameService_gsp;
/**
 * 
 * 描述：用户控制层
 * @author 辜晟鹏
 * @date 2018年12月22日上午8:50:11 
 * @version 1.0
 */
@Controller
public class UserRealnameAction_gsp {
	  //用注解调用业务层
      @Autowired
      private UserRealnameService_gsp realnameService;
      /**
       * 
       * 功能：注册
       * @param userRealname
       * @return
       */
      @RequestMapping("/register.action")
      public @ResponseBody String register(UserRealname_gsp userRealname){
		System.out.println(userRealname);
		int temp = realnameService.register(userRealname);
		String retuln = temp>0?"ok":"no";
    	  return retuln;
      }
      /**
       * 
       * 功能：登陆
       * @param userRealname
       * @return
       */
      @RequestMapping("/login.action")
      public @ResponseBody String login(UserRealname_gsp userRealname){
    	System.out.println(userRealname.toString());
    	int temp=  realnameService.login(userRealname);
    	String retuln = temp>0?"ok":"no";
		return retuln;
    	  
      }
}
