package com.yidu.controller.hy;

import org.springframework.stereotype.Controller;
/**
 * ������ Ա����̨Ȩ�޹�����Ʋ�
 * @Description��
 * @author ��huYang 
 * @date ��2018��12��7�� ����1:33:45 
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
