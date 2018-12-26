package com.yidu.controller.zsh;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.SetCookieSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yidu.bean.zsh.address_lql_zsh;
import com.yidu.bean.zsh.orderInforMation_gsp_zsh;
import com.yidu.service.zsh.orderInforMation_gspService_zsh;

@Controller
public class orderInforMation_gspcon_zsh {
	
	@Autowired
	private orderInforMation_gspService_zsh orderInforMation_gsp;
	/**
	 * <!-- 新增用户下单信息（收件人）信息 -->
	 * @param receiptOrders
	 * @return
	 */
	@RequestMapping("/insertOrderInforMation_gsp.action")
	public @ResponseBody String insertOrderInforMation_gsp(@ModelAttribute orderInforMation_gsp_zsh orderInforMation){
		int temp = orderInforMation_gsp.insertOrderInforMation_gsp(orderInforMation);
		return "ok";
	}
	/**
	 * <!-- 查询用户地址中心（收件）信息   -->
	 * @return
	 */
	@RequestMapping("/selectAddress_lql.action")
	public @ResponseBody List<address_lql_zsh> selectAddress_lql(){
		return  orderInforMation_gsp.selectAddress_lql();
		
	}
}
