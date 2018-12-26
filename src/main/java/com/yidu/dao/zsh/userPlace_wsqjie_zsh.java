	package com.yidu.dao.zsh;

import java.util.List;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yidu.bean.zsh.address_lql_zsh;
import com.yidu.bean.zsh.userPlace_wsq_zsh;
import com.yidu.bean.zsh.userSender_zsh;

/**
 * 
 *描述：用户下单（寄件人）//用户地址中心（寄件）接口
 * @author zhoushihao
 * @date2018年12月19日上午10:00:47
 */
@Repository
public interface userPlace_wsqjie_zsh {
	/**
	 * 	<!-- 查询用户地址中心（寄件）信息  -->
	 * @return
	 */
	@Select("select * from userSender")
	public List<userSender_zsh> selectUserSender();
	/**
	 * 	<!-- 新增用户地址中心（寄件）信息   -->
	 * @return
	 *//*
	@Insert("INSERT INTO userSender(senderName,senderMobile,senderPhone,senderAddress,senderDetailed,senderType)\r\n" +
			"VALUES (#{senderName},#{senderMobile},#{senderPhone},#{senderAddress},#{senderDetailed},#{senderType}")
	public int insertUserSender(userSender userSender);*/
	/**
	 * 	<!-- 新增用户下单信息（寄件人）信息 -->
	 * @return
	 */
	@Insert("INSERT INTO userplace_wsq(uplaceName,uplacePhone,senderAddress,uplaceAddress,uplaceMachine,uplaceEmail,uplacePayment)\r\n" + 
			"VALUES (#{uplaceName},#{uplacePhone},#{senderAddress},#{uplaceAddress},#{uplaceMachine},#{uplaceEmail},#{uplacePayment})")
	public int insertUserPlace_wsq(userPlace_wsq_zsh userPlace);
	
}
