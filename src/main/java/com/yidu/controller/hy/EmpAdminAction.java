package com.yidu.controller.hy;

import org.springframework.stereotype.Controller;
/**
 * 描述： 员工后台权限管理控制层
 * @Description：
 * @author ：huYang 
 * @date ：2018年12月7日 下午1:33:45 
 *
 */
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
public class EmpAdminAction {

	@RequestMapping("stoLogin.action")
	public @ResponseBody String selectEmpNoByNameAndPass(String account,String pass) {
		System.out.println(account+"======"+pass);
		
		
		return "ok";
	}
	
}
