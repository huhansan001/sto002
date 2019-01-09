package com.yidu.service.zsh;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yidu.bean.zsh.address_lql_zsh;
import com.yidu.bean.zsh.userSender_zsh;
import com.yidu.dao.zsh.address_lql_zshMapper;
/**
 * 
 * describe:收件人，寄件人信息表的数据业务层
 * function:
 * @author Quite
 * @date 2019年1月9日上午9:50:11
 */
@Service
public class address_lql_zshService {
	//调用收件人，寄件人信息表与数据库的连接层对象
	@Autowired
	private address_lql_zshMapper address_lql_zshMapper;
	
	/**
	 * 
	 * function:查询收件人表所有信息
	 * name :Quiet
	 * @param userInfoPhone 用户手机号（账号）《此处是存在收件人数据层》
	 * @return
	 * @date 2019年1月9日上午9:41:11
	 */
	public List<Object> selectaddress_lqlAll(address_lql_zsh userInfoPhone){
		//创建一个用户返回的全类集合
		List<Object> list = new ArrayList<>();
		//调用查询所有收件人信息表的方法 得到收件人信息集合
		List<address_lql_zsh> address_lqlList = address_lql_zshMapper.selectaddress_lqlAll(userInfoPhone);
		//调用查询所有寄件人信息表的方法 得到寄件人信息集合
		List<userSender_zsh> senderList = address_lql_zshMapper.selectuserSenderAll(userInfoPhone);
		//将收件人信息集合添加到 返回集合 
		list.add(address_lqlList);
		//将寄件人信息集合添加到 返回集合
		list.add(senderList);
		//返回 返回集合
		return list;
	}
	
	/**
	 * 
	 * function:新增收件人表信息
	 * name :Quiet
	 * @param address_lql_zsh 收件人信息数据对象
	 * @return
	 * @date 2019年1月9日上午9:51:23
	 */
	public int insertaddress_lql(address_lql_zsh address_lql_zsh) {
		//调用收件人表的新增方法
		int insertaddress_lql = address_lql_zshMapper.insertaddress_lql(address_lql_zsh);
		//返回调用方法得到的参数
		return insertaddress_lql;
	}
	
	/**
	 * 
	 * function:新增寄件人表信息
	 * name :Quiet
	 * @param userSender_zsh 寄件人表信息的数据对象
	 * @return
	 * @date 2018年12月25日上午8:51:58
	 */
	public int insertSender(userSender_zsh userSender_zsh) {
		//调用新增寄件人表信息的方法
		int insertSender = address_lql_zshMapper.insertSender(userSender_zsh);
		//返回调用方法得到的参数
		return insertSender;
	}
	
	/**
	 * 
	 * function:删除收件人表信息
	 * name :Quiet
	 * @param address_lql_zsh 收件人表信息的数据对象
	 * @return
	 * @date 2018年12月25日上午9:38:58
	 */
	public int deleteaddress_lql(address_lql_zsh address_lql_zsh) {
		//调用删除收件人表信息的方法
		int deleteaddress_lql = address_lql_zshMapper.deleteaddress_lql(address_lql_zsh);
		//返回调用方法得到的参数
		return deleteaddress_lql;
	}
	
	/**
	 * 
	 * function:删除寄件人表信息
	 * name :Quiet
	 * @param userSender_zsh 寄件人表信息的数据对象
	 * @return
	 * @date 2018年12月25日上午9:39:53
	 */
	public int deleteSender(userSender_zsh userSender_zsh) {
		//调用删除寄件人表信息的方法
		int deleteSender = address_lql_zshMapper.deleteSender(userSender_zsh);
		//返回调用方法得到的参数
		return deleteSender;
	}
	
	/**
	 * 
	 * function:修改收件人表信息
	 * name :Quiet
	 * @param address_lql_zsh 收件人表信息的数据对象
	 * @return
	 * @date 2018年12月25日上午10:30:34
	 */
	public int updateaddress_lql(address_lql_zsh address_lql_zsh) {
		//调用修改收件人表信息的方法
		int updateaddress_lql = address_lql_zshMapper.updateaddress_lql(address_lql_zsh);
		//返回调用方法得到的参数
		return updateaddress_lql;
	}
	
	/**
	 * 
	 * function:修改寄件人表信息
	 * name :Quiet
	 * @param userSender_zsh 寄件人表信息的数据对象
	 * @return
	 * @date 2018年12月25日上午10:31:11
	 */
	public int updateSender(userSender_zsh userSender_zsh) {
		//调用修改寄件人表信息的方法
		int updateSender = address_lql_zshMapper.updateSender(userSender_zsh);
		//返回调用方法得到的参数
		return updateSender;
	}
	
	/**
	 * 
	 * function:通过名字模糊查询出寄件人，收件人表的信息
	 * name :Quiet
	 * @param recipName 收件人名字
	 * @param userInfoPhone 用户手机号（账号）
	 * @param senderName 寄件人名字
	 * @return
	 * @date 2019年1月9日上午9:59:45
	 */
	public List<Object> selectaddressByName(String recipName, String userInfoPhone, String senderName){
		//创建一个用户返回的全类集合
		List<Object> list = new ArrayList<>();
		//调用通过名字模糊查询收件人表信息的方法 得到收件人表集合
		List<com.yidu.bean.zsh.address_lql_zsh> selectaddressByNameList = address_lql_zshMapper.selectaddressByName(recipName, userInfoPhone);
		//调用通过名字模糊查询寄件人表信息的方法 得到寄件人表集合
		List<com.yidu.bean.zsh.userSender_zsh> selectSenderByNameList = address_lql_zshMapper.selectSenderByName(senderName, userInfoPhone);
		//将收件人表集合添加到返回集合中
		list.add(selectaddressByNameList);
		//将寄件人表集合添加到返回集合中
		list.add(selectSenderByNameList);
		//返回 返回集合
		return list;
	}
	
	
	/**
	 * 
	 * function:通过手机号模糊查询出寄件人，收件人表的信息
	 * name :Quiet
	 * @param recipMobile 收件人手机号
	 * @param userInfoPhone 用户手机号
	 * @param senderMobile 寄件人手机号
	 * @return
	 * @date 2019年1月9日上午10:04:36
	 */
	public List<Object> selectaddressByPhone(String recipMobile, String userInfoPhone, String senderMobile){
		//创建一个用户返回的全类集合
		List<Object> list = new ArrayList<>();
		//调用通过手机号模糊查询收件人表信息的方法 得到收件人表集合
		List<com.yidu.bean.zsh.address_lql_zsh> selectaddressByPhoneList = address_lql_zshMapper.selectaddressByPhone(recipMobile, userInfoPhone);
		//调用通过手机号模糊查询寄件人表信息的方法 得到寄件人表集合
		List<com.yidu.bean.zsh.userSender_zsh> selectSenderByPhoneList = address_lql_zshMapper.selectSenderByPhone(senderMobile, userInfoPhone);
		//将收件人表集合添加到返回集合中
		list.add(selectaddressByPhoneList);
		//将寄件人表集合添加到返回集合中
		list.add(selectSenderByPhoneList);
		//返回 返回集合
		return list;
	}
}
