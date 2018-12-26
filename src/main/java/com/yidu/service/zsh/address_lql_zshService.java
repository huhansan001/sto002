package com.yidu.service.zsh;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yidu.bean.zsh.address_lql_zsh;
import com.yidu.bean.zsh.userSender_zsh;
import com.yidu.dao.zsh.address_lql_zshMapper;

@Service
public class address_lql_zshService {
	@Autowired
	private address_lql_zshMapper address_lql_zshMapper;
	
	/**
	 * 
	 * function:查询收件人表所有信息
	 * name :Quiet
	 * @return
	 * @date 2018年12月24日下午6:47:54
	 */
	/*public List<address_lql_zsh> selectaddress_lqlAll(address_lql_zsh userInfoPhone){
		List<address_lql_zsh> address_lqlList = address_lql_zshMapper.selectaddress_lqlAll(userInfoPhone);
		List<userSender_zsh> senderList = address_lql_zshMapper.selectuserSenderAll(userInfoPhone);
		if(address_lqlList.size()==0) {
			address_lqlList.get(address_lqlList.size()).setSenderList(senderList);
		}else {
			address_lqlList.get(address_lqlList.size()-1).setSenderList(senderList);
		}
		return address_lqlList;
	}*/
	
	public List<Object> selectaddress_lqlAll(address_lql_zsh userInfoPhone){
		List<Object> list = new ArrayList<>();
		
		List<address_lql_zsh> address_lqlList = address_lql_zshMapper.selectaddress_lqlAll(userInfoPhone);
		List<userSender_zsh> senderList = address_lql_zshMapper.selectuserSenderAll(userInfoPhone);
		list.add(address_lqlList);
		list.add(senderList);
		
		System.out.println(address_lqlList.toString());
		System.out.println(senderList.toString());
		System.out.println(list.toString());
		return list;
	}
	
	/**
	 * 
	 * function:新增收件人表信息
	 * name :Quiet
	 * @param userInfoPhone
	 * @return
	 * @date 2018年12月24日下午7:53:50
	 */
	public int insertaddress_lql(address_lql_zsh address_lql_zsh) {
		return address_lql_zshMapper.insertaddress_lql(address_lql_zsh);
	}
	
	/**
	 * 
	 * function:新增寄件人表信息
	 * name :Quiet
	 * @param userSender_zsh
	 * @return
	 * @date 2018年12月25日上午8:51:58
	 */
	public int insertSender(userSender_zsh userSender_zsh) {
		return address_lql_zshMapper.insertSender(userSender_zsh);
	}
	
	/**
	 * 
	 * function:删除收件人表信息
	 * name :Quiet
	 * @param address_lql_zsh
	 * @return
	 * @date 2018年12月25日上午9:38:58
	 */
	public int deleteaddress_lql(address_lql_zsh address_lql_zsh) {
		return address_lql_zshMapper.deleteaddress_lql(address_lql_zsh);
	}
	
	/**
	 * 
	 * function:删除寄件人表信息
	 * name :Quiet
	 * @param userSender_zsh
	 * @return
	 * @date 2018年12月25日上午9:39:53
	 */
	public int deleteSender(userSender_zsh userSender_zsh) {
		return address_lql_zshMapper.deleteSender(userSender_zsh);
	}
	
	/**
	 * 
	 * function:修改收件人表信息
	 * name :Quiet
	 * @param address_lql_zsh
	 * @return
	 * @date 2018年12月25日上午10:30:34
	 */
	public int updateaddress_lql(address_lql_zsh address_lql_zsh) {
		return address_lql_zshMapper.updateaddress_lql(address_lql_zsh);
	}
	
	/**
	 * 
	 * function:修改寄件人表信息
	 * name :Quiet
	 * @param userSender_zsh
	 * @return
	 * @date 2018年12月25日上午10:31:11
	 */
	public int updateSender(userSender_zsh userSender_zsh) {
		return address_lql_zshMapper.updateSender(userSender_zsh);
	}
	
	/**
	 * 
	 * function:通过名字模糊查询出寄件人，收件人表的信息
	 * name :Quiet
	 * @param address_lql_zsh
	 * @param userSender_zsh
	 * @return
	 * @date 2018年12月25日上午10:55:31
	 */
	/*public List<address_lql_zsh> selectaddressByName(String recipName, String userInfoPhone, String senderName){
		List<com.yidu.bean.zsh.address_lql_zsh> selectaddressByNameList = address_lql_zshMapper.selectaddressByName(recipName, userInfoPhone);
		List<com.yidu.bean.zsh.userSender_zsh> selectSenderByNameList = address_lql_zshMapper.selectSenderByName(senderName, userInfoPhone);
		if(selectaddressByNameList.size()==0) {
			selectaddressByNameList.get(selectaddressByNameList.size()).setSenderList(selectSenderByNameList);
		}else {
			selectaddressByNameList.get(selectaddressByNameList.size()-1).setSenderList(selectSenderByNameList);
		}
		return selectaddressByNameList;
	}*/
	
	public List<Object> selectaddressByName(String recipName, String userInfoPhone, String senderName){
		List<Object> list = new ArrayList<>();
		
		List<com.yidu.bean.zsh.address_lql_zsh> selectaddressByNameList = address_lql_zshMapper.selectaddressByName(recipName, userInfoPhone);
		List<com.yidu.bean.zsh.userSender_zsh> selectSenderByNameList = address_lql_zshMapper.selectSenderByName(senderName, userInfoPhone);
		
		list.add(selectaddressByNameList);
		list.add(selectSenderByNameList);
		
		System.out.println(selectaddressByNameList.toString());
		System.out.println(selectSenderByNameList.toString());
		System.out.println(list.toString());
		return list;
	}
	
	
	/**
	 * 
	 * function:通过手机号模糊查询出寄件人，收件人表的信息
	 * name :Quiet
	 * @param address_lql_zsh
	 * @param userSender_zsh
	 * @return
	 * @date 2018年12月25日下午12:05:15
	 */
	/*public List<address_lql_zsh> selectaddressByPhone(String recipMobile, String userInfoPhone, String senderMobile){
		List<com.yidu.bean.zsh.address_lql_zsh> selectaddressByPhoneList = address_lql_zshMapper.selectaddressByPhone(recipMobile, userInfoPhone);
		List<com.yidu.bean.zsh.userSender_zsh> selectSenderByPhoneList = address_lql_zshMapper.selectSenderByPhone(senderMobile, userInfoPhone);
		if(selectaddressByPhoneList.size()==0) {
			selectaddressByPhoneList.get(selectaddressByPhoneList.size()).setSenderList(selectSenderByPhoneList);
		}else {
			selectaddressByPhoneList.get(selectaddressByPhoneList.size()-1).setSenderList(selectSenderByPhoneList);
		}
		return selectaddressByPhoneList;
	}*/
	
	public List<Object> selectaddressByPhone(String recipMobile, String userInfoPhone, String senderMobile){
		List<Object> list = new ArrayList<>();
		
		List<com.yidu.bean.zsh.address_lql_zsh> selectaddressByPhoneList = address_lql_zshMapper.selectaddressByPhone(recipMobile, userInfoPhone);
		List<com.yidu.bean.zsh.userSender_zsh> selectSenderByPhoneList = address_lql_zshMapper.selectSenderByPhone(senderMobile, userInfoPhone);
		list.add(selectaddressByPhoneList);
		list.add(selectSenderByPhoneList);
		
		System.out.println(selectaddressByPhoneList.toString());
		System.out.println(selectSenderByPhoneList.toString());
		System.out.println(list.toString());
		return list;
	}
}
