package com.yidu.controller.zsh;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.yidu.bean.zsh.serviceTable_xwc_zsh;
import com.yidu.service.zsh.serviceTable_xwcService_zsh;
/**
 * 
 *描述：业务表Action层
 * @author zhoushihao
 * @date2018年12月27日上午10:55:46
 */
@Controller
public class serviceTable_xwcAction_zsh {
	@Autowired
	private serviceTable_xwcService_zsh serviceTable_xwcService_zsh;
	
	/**
	 * 
	 * function:新增业务表的信息
	 * name :Quiet
	 * @param address_lql_zsh
	 * @return
	 * @date 2018年12月25日上午8:59:34
	 */
	
	@RequestMapping("serviceTable_xwc.action")
	public @ResponseBody String serviceTable_xwc(@ModelAttribute serviceTable_xwc_zsh serviceTable_xwc) {
		serviceTable_xwcService_zsh.serviceTable_xwc(serviceTable_xwc);
		return "ok";
	
	}
}
