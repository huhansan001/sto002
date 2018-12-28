package com.yidu.controller.zsh;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yidu.bean.zsh.orderInforMation_gsp_zsh;
import com.yidu.bean.zsh.userPlace_wsq_zsh;
import com.yidu.bean.zsh.userSender_zsh;
import com.yidu.service.zsh.userPlace_wsqService_zsh;

@Controller
public class userPlace_wsqcon_zsh {

	@Autowired
	private userPlace_wsqService_zsh userPlace_wsq;
	
	/**
	 * <!-- 新增用户下单信息（寄件人）信息 -->
	 * @param receiptOrders
	 * @return
	 */
	int sendId;
	@RequestMapping("insertUserPlace_wsq.action")
	public @ResponseBody int insertUserPlace_wsq(userPlace_wsq_zsh userPlace){
		userPlace_wsq.insertUserPlace_wsq(userPlace);
		sendId=userPlace.getUplaceSenderId();
		return userPlace.getUplaceSenderId();
	}
	/**
	 * <!-- 新增用户下单信息（收件人）信息 -->
	 * @param receiptOrders
	 * @return
	 */
	@RequestMapping("/insertOrderInforMation_gsp.action")
	public @ResponseBody String insertOrderInforMation_gsp(orderInforMation_gsp_zsh orderInforMation){
		orderInforMation.setUplaceSenderId(sendId);
		userPlace_wsq.insertOrderInforMation_gsp(orderInforMation);
		return "ok";
	}
	/**
	 * <!-- 查询用户地址中心（寄件）信息   -->
	 * @return
	 */
	@RequestMapping("selectUserSender.action")
	public @ResponseBody List<userSender_zsh> selectUserSender(){
		return  userPlace_wsq.selectUserSender();
	}
}
