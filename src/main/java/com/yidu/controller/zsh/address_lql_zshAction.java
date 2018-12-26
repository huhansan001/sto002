package com.yidu.controller.zsh;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yidu.bean.zsh.address_lql_zsh;
import com.yidu.bean.zsh.userSender_zsh;
import com.yidu.service.zsh.address_lql_zshService;

@Controller
public class address_lql_zshAction {
	@Autowired
	private address_lql_zshService address_lql_zshService;
	
	/**
	 * 
	 * function:查询所有收件人，寄件人表信息
	 * name :Quiet
	 * @param model
	 * @return
	 * @date 2018年12月24日下午7:55:03
	 */
	/*@RequestMapping("selectaddress_lqlAll.action")
	public String selectaddress_lqlAll(Model model, address_lql_zsh userInfoPhone) {
		List<address_lql_zsh> list = address_lql_zshService.selectaddress_lqlAll(userInfoPhone);
		model.addAttribute("Address_lqlAllList", list);
		return "FrontEnd/admin/address";
	}*/
	
	@RequestMapping("selectaddress_lqlAll.action")
	public String selectaddress_lqlAll(Model model, address_lql_zsh userInfoPhone) {
		List<Object> list = address_lql_zshService.selectaddress_lqlAll(userInfoPhone);
		model.addAttribute("Address_lqlAllList", list);
		return "FrontEnd/admin/address";
	}
	
	/**
	 * 
	 * function:根据名字进行模糊查询
	 * name :Quiet
	 * @param model
	 * @param address_lql_zsh
	 * @param userSender_zsh
	 * @return
	 * @date 2018年12月25日下午1:15:39
	 */
	/*@RequestMapping("selectaddressByName.action")
	public String selectaddressByName(Model model,String recipName,String userInfoPhone, String senderName){
		List<com.yidu.bean.zsh.address_lql_zsh> selectaddressByNameList = address_lql_zshService.selectaddressByName("%"+recipName+"%", userInfoPhone, "%"+senderName+"%");
		model.addAttribute("Address_lqlAllList", selectaddressByNameList);
		return "FrontEnd/admin/address";
	}*/
	
	
	@RequestMapping("selectaddressByName.action")
	public String selectaddressByName(Model model,String recipName,String userInfoPhone, String senderName){
		List<Object> selectaddressByName = address_lql_zshService.selectaddressByName("%"+recipName+"%", userInfoPhone, "%"+senderName+"%");
		model.addAttribute("list", selectaddressByName);
		return "FrontEnd/admin/address";
	}
	
	
	/**
	 * 
	 * function:根据手机号模糊查询
	 * name :Quiet
	 * @param model
	 * @param recipMobile
	 * @param userInfoPhone
	 * @param senderMobile
	 * @return
	 * @date 2018年12月25日下午2:08:03
	 */
	/*@RequestMapping("selectaddressByPhone.action")
	public String selectaddressByPhone(Model model,String recipMobile,String userInfoPhone, String senderMobile) {
		List<address_lql_zsh> selectaddressByPhoneList = address_lql_zshService.selectaddressByPhone("%"+recipMobile+"%", userInfoPhone, "%"+senderMobile+"%");
		model.addAttribute("Address_lqlAllList", selectaddressByPhoneList);
		return "FrontEnd/admin/address";
	}*/
	
	@RequestMapping("selectaddressByPhone.action")
	public String selectaddressByPhone(Model model,String recipMobile,String userInfoPhone, String senderMobile) {
		List<Object> selectaddressByPhoneList = address_lql_zshService.selectaddressByPhone("%"+recipMobile+"%", userInfoPhone, "%"+senderMobile+"%");
		model.addAttribute("list", selectaddressByPhoneList);
		return "FrontEnd/admin/address";
	}
	
	/**
	 * 
	 * function:新增收件人表信息
	 * name :Quiet
	 * @param address_lql_zsh
	 * @return
	 * @date 2018年12月25日上午8:59:34
	 */
	@RequestMapping("insertaddress_lql.action")
	public @ResponseBody String insertaddress_lql(@ModelAttribute address_lql_zsh address_lql_zsh) {
		address_lql_zshService.insertaddress_lql(address_lql_zsh);
		System.out.println(address_lql_zsh.toString());
		return "ok";
	}
	
	/**
	 * 
	 * function:新增寄件人表信息
	 * name :Quiet
	 * @param userSender_zsh
	 * @return
	 * @date 2018年12月25日上午8:59:50
	 */
	@RequestMapping("insertSender.action")
	public @ResponseBody String insertSender(@ModelAttribute userSender_zsh userSender_zsh) {
		address_lql_zshService.insertSender(userSender_zsh);
		System.out.println(userSender_zsh.toString());
		return "ok";
	}
	
	/**
	 * 
	 * function:删除收件人表信息
	 * name :Quiet
	 * @param address_lql_zsh
	 * @return
	 * @date 2018年12月25日上午9:42:15
	 */
	@RequestMapping("deleteaddress_lql.action")
	public @ResponseBody String deleteaddress_lql(address_lql_zsh address_lql_zsh) {
		address_lql_zshService.deleteaddress_lql(address_lql_zsh);
		System.out.println(address_lql_zsh.toString());
		return "ok";
	}
	
	/**
	 * 
	 * function:删除寄件人表信息
	 * name :Quiet
	 * @param userSender_zsh
	 * @return
	 * @date 2018年12月25日上午9:45:58
	 */
	@RequestMapping("deleteSender.action")
	public @ResponseBody String deleteSender(userSender_zsh userSender_zsh) {
		address_lql_zshService.deleteSender(userSender_zsh);
		System.out.println(userSender_zsh.toString());
		return "ok";
	}
	
	/**
	 * 
	 * function:修改收件人表信息
	 * name :Quiet
	 * @param address_lql_zsh
	 * @return
	 * @date 2018年12月25日上午10:32:36
	 */
	@RequestMapping("updateaddress_lql.action")
	public @ResponseBody String updateaddress_lql(address_lql_zsh address_lql_zsh) {
		address_lql_zshService.updateaddress_lql(address_lql_zsh);
		System.out.println(address_lql_zsh.toString());
		return "ok";
	}
	
	/**
	 * 
	 * function:修改寄件人表信息
	 * name :Quiet
	 * @param userSender_zsh
	 * @return
	 * @date 2018年12月25日上午10:33:41
	 */
	@RequestMapping("updateSender.action")
	public @ResponseBody String updateSender(userSender_zsh userSender_zsh) {
		address_lql_zshService.updateSender(userSender_zsh);
		System.out.println(userSender_zsh.toString());
		return "ok";
	}

}
