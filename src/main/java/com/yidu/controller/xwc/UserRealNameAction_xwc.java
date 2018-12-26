package com.yidu.controller.xwc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yidu.bean.xwc.UserRealName_xwc;
import com.yidu.dao.xwc.UserRealNameMapper_xwc;

/**
 * 
 *描述：用户实名认证控制层
 * @author 夏望城
 *@date2018年12月20日下午2:29:05
 */
@Controller
public class UserRealNameAction_xwc {

	@Autowired
	private UserRealNameMapper_xwc userRealNameMapper_xwc;
	
	@RequestMapping("insertUserRealName.action")
	public @ResponseBody String insertUserRealName(@ModelAttribute UserRealName_xwc userRealName_xwc) {
		userRealNameMapper_xwc.insertUserRealName(userRealName_xwc);
		System.out.println(userRealName_xwc.toString());
		System.out.println("--------------------------------------------------------");
		return "ok";
	}
}
