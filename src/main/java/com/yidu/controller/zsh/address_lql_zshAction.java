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
/**
 * 
 * describe:收件人，寄件人信息表数据控制层
 * function:
 * @author Quite
 * @date 2019年1月9日上午10:08:56
 */
@Controller
public class address_lql_zshAction {
	//调用收件人，寄件人信息表数据业务层
	@Autowired
	private address_lql_zshService address_lql_zshService;

	/**
	 * 查询所有收件人，寄件人表信息
	 * function:
	 * name :Quiet
	 * @param model
	 * @param userInfoPhone 用户手机号（账号）
	 * @return
	 * @date 2019年1月9日上午10:10:02
	 */
	@RequestMapping("selectaddress_lqlAll.action")
	public String selectaddress_lqlAll(Model model, address_lql_zsh userInfoPhone) {
		//调用业务层查询所有收件人，寄件人表信息的方法
		List<Object> list = address_lql_zshService.selectaddress_lqlAll(userInfoPhone);
		//将调用方法的集合添加的摩登中
		model.addAttribute("list", list);
		//返回的地址中心的页面中
		return "FrontEnd/admin/address";
	}

	/**
	 * 
	 * function:根据名字进行模糊查询
	 * name :Quiet
	 * @param model 
	 * @param recipName 收件人名字
	 * @param userInfoPhone 用户手机号（账号）
	 * @param senderName 寄件人手机号
	 * @return
	 * @date 2019年1月9日上午10:28:46
	 */
	@RequestMapping("selectaddressByName.action")
	public String selectaddressByName(Model model,String recipName,String userInfoPhone, String senderName){
		//调用业务层通过名字模糊查询的方法 得到通过名字模糊查询的集合
		List<Object> selectaddressByName = address_lql_zshService.selectaddressByName("%"+recipName+"%", userInfoPhone, "%"+senderName+"%");
		//将调用方法的集合添加的摩登中
		model.addAttribute("list", selectaddressByName);
		//返回的地址中心的页面中
		return "FrontEnd/admin/address";
	}


	/**
	 * 
	 * function:根据手机号模糊查询
	 * name :Quiet
	 * @param model
	 * @param recipMobile 收件人手机号
	 * @param userInfoPhone 用户手机号
	 * @param senderMobile 寄件人手机号
	 * @return
	 * @date 2018年12月25日下午2:08:03
	 */
	@RequestMapping("selectaddressByPhone.action")
	public String selectaddressByPhone(Model model,String recipMobile,String userInfoPhone, String senderMobile) {
		//调用业务层通过手机号模糊查询的方法 得到通过手机号模糊查询的集合
		List<Object> selectaddressByPhoneList = address_lql_zshService.selectaddressByPhone("%"+recipMobile+"%", userInfoPhone, "%"+senderMobile+"%");
		//将调用方法的集合添加的摩登中
		model.addAttribute("list", selectaddressByPhoneList);
		//返回的地址中心的页面中
		return "FrontEnd/admin/address";
	}

	/**
	 * 
	 * function:新增收件人表信息
	 * name :Quiet
	 * @param address_lql_zsh 收件人表数据对象
	 * @return
	 * @date 2019年1月9日上午10:32:27
	 */
	@RequestMapping("insertaddress_lql.action")
	public @ResponseBody String insertaddress_lql(@ModelAttribute address_lql_zsh address_lql_zsh) {
		//调用业务层新增手机人表信息的方法
		int insertaddress_lql = address_lql_zshService.insertaddress_lql(address_lql_zsh);
		//申明空的变量用于返回
		String ret = "";
		//判断调用方法得到的参数 是否大于0
		if(insertaddress_lql>0) {
			//大于0 则 将空的返回变量赋值“ok”
			ret = "ok";
		}else {
			//否则 则 将空的返回变量复制“no”
			ret = "no";
		}
		//返回 返回变量
		return ret;
	}

	/**
	 * 
	 * function:新增寄件人表信息
	 * name :Quiet
	 * @param userSender_zsh 寄件人表数据对象
	 * @return
	 * @date 2019年1月9日上午10:38:06
	 */
	@RequestMapping("insertSender.action")
	public @ResponseBody String insertSender(@ModelAttribute userSender_zsh userSender_zsh) {
		//调用业务层新增寄件人表信息的方法
		int insertSender = address_lql_zshService.insertSender(userSender_zsh);
		//申明空的变量用于返回
		String ret = "";
		//判断调用方法得到的参数 是否大于0
		if(insertSender>0) {
			//大于0 则 将空的返回变量赋值“ok”
			ret = "ok";
		}else {
			//否则 则 将空的返回变量复制“no”
			ret = "no";
		}
		//返回 返回变量
		return ret;
	}

	/**
	 * 
	 * function:删除收件人表信息
	 * name :Quiet
	 * @param address_lql_zsh 收件人表数据对象
	 * @return
	 * @date 2018年12月25日上午9:42:15
	 */
	@RequestMapping("deleteaddress_lql.action")
	public @ResponseBody String deleteaddress_lql(address_lql_zsh address_lql_zsh) {
		//调用业务层删除收件人表信息的方法
		int deleteaddress_lql = address_lql_zshService.deleteaddress_lql(address_lql_zsh);
		//申明空的变量用于返回
		String ret = "";
		//判断调用方法得到的参数 是否大于0
		if(deleteaddress_lql>0) {
			//大于0 则 将空的返回变量赋值“ok”
			ret = "ok";
			//否则判断
		}else {
			//否则 则 将空的返回变量复制“no”
			ret = "no";
		}
		//返回 返回变量
		return ret;
	}

	/**
	 * 
	 * function:删除寄件人表信息
	 * name :Quiet
	 * @param userSender_zsh 寄件人表数据对象
	 * @return
	 * @date 2018年12月25日上午9:45:58
	 */
	@RequestMapping("deleteSender.action")
	public @ResponseBody String deleteSender(userSender_zsh userSender_zsh) {
		//调用业务层删除寄件人表信息的方法
		int deleteSender = address_lql_zshService.deleteSender(userSender_zsh);
		//申明空的变量用于返回
		String ret = "";
		//判断调用方法得到的参数 是否大于0
		if(deleteSender>0) {
			//大于0 则 将空的返回变量赋值“ok”
			ret = "ok";
			//否则判断
		}else {
			//否则 则 将空的返回变量复制“no”
			ret = "no";
		}
		//返回 返回变量
		return ret;
	}

	/**
	 * 
	 * function:修改收件人表信息
	 * name :Quiet
	 * @param address_lql_zsh 收件人表数据对象
	 * @return
	 * @date 2018年12月25日上午10:32:36
	 */
	@RequestMapping("updateaddress_lql.action")
	public @ResponseBody String updateaddress_lql(address_lql_zsh address_lql_zsh) {
		//调用业务层修改手机人表信息的方法
		int updateaddress_lql = address_lql_zshService.updateaddress_lql(address_lql_zsh);
		//申明空的变量用于返回
		String ret = "";
		//判断调用方法得到的参数 是否大于0
		if(updateaddress_lql>0) {
			//大于0 则 将空的返回变量赋值“ok”
			ret = "ok";
			//否则判断
		}else {
			//否则 则 将空的返回变量复制“no”
			ret = "no";
		}
		//返回 返回变量
		return ret;
	}

	/**
	 * 
	 * function:修改寄件人表信息
	 * name :Quiet
	 * @param userSender_zsh 寄件人表数据对象
	 * @return
	 * @date 2018年12月25日上午10:33:41
	 */
	@RequestMapping("updateSender.action")
	public @ResponseBody String updateSender(userSender_zsh userSender_zsh) {
		//调用业务层修改寄件人表信息的方法
		int updateSender = address_lql_zshService.updateSender(userSender_zsh);
		//申明空的变量用于返回
		String ret = "";
		//判断调用方法得到的参数 是否大于0
		if(updateSender>0) {
			//大于0 则 将空的返回变量赋值“ok”
			ret = "ok";
			//否则判断
		}else {
			//否则 则 将空的返回变量复制“no”
			ret = "no";
		}
		//返回 返回变量
		return ret;
	}

}
