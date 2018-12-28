package com.yidu.controller.zsh;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yidu.bean.zsh.address_lql_zsh;
import com.yidu.service.zsh.orderInforMation_gspService_zsh;

@Controller
public class orderInforMation_gspcon_zsh {
	
	@Autowired
	private orderInforMation_gspService_zsh orderInforMation_gsp;
	
	
	/**
	 * <!-- 查询用户地址中心（收件）信息   -->
	 * @return
	 */
	@RequestMapping("/selectAddress_lql.action")
	public @ResponseBody List<address_lql_zsh> selectAddress_lql(){
		return  orderInforMation_gsp.selectAddress_lql();
	}
}
