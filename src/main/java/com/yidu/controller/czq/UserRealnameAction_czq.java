package com.yidu.controller.czq;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yidu.bean.czq.UserrealName;
import com.yidu.service.czq.UserRealnameService_czq;

/**
 * 
 * describe:用户实名认证（用户基本信息）控制层
 * function:
 * @author Quite
 * @date 2018年12月19日上午11:41:31
 */
@Controller
public class UserRealnameAction_czq {
	@Autowired
	private UserRealnameService_czq userRealnameService;//调用用户实名认证的数据操作层
	
	@RequestMapping(value="/updateUserRealname_pass.action",produces="text/html;charset=utf-8") 
	public @ResponseBody String updateUserRealname(@ModelAttribute UserrealName userRealname) {
		System.out.println(userRealname.toString());
		userRealnameService.updateUserRealname(userRealname);
		String temp = "来了";
		return temp;
	}
}
