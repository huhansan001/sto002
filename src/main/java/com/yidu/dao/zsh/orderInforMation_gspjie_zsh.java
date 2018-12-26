package com.yidu.dao.zsh;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import com.yidu.bean.zsh.address_lql_zsh;
import com.yidu.bean.zsh.orderInforMation_gsp_zsh;
/**
 * 
 *描述：用户下单信息（收件人）//用户地址中心（收件）接口
 * @author zhoushihao
 * @date2018年12月19日上午9:58:27
 */
@Repository
public interface orderInforMation_gspjie_zsh {
	/**
	 * 	<!-- 查询用户地址中心（收件）信息   -->
	 * @return
	 */
	@Select("select * from address_lql")
	public List<address_lql_zsh> selectAddress_lql();
	/**
	 * 	<!-- 新增用户地址中心（收件）信息   -->
	 * @return
	 *//*
	@Insert("INSERT INTO address_lql(recipName,recipMobile,recipPhone,recipAddress,recipDetailed,recipType,senderName)\r\n" +
			"VALUES (#{recipName},#{recipMobile},#{recipPhone},#{recipAddress},#{recipDetailed},#{recipType},#{senderName});")
	public int insertAddress_lql(address_lql address_lql);*/
	/**
	 * 	<!-- 新增用户下单信息（收件人）信息 -->
	 * @return
	 */
	@Insert("INSERT INTO orderInformation_gsp(userName,phoneNumber,sendsAddress,detailedAddress,machineNumber,ltemWeight,itemType,estimatedTime,anticipatedPrice,orderTime)\r\n" + 
			"VALUES (#{userName},#{phoneNumber},#{sendsAddress},#{detailedAddress},#{machineNumber},#{ltemWeight},#{itemType},#{estimatedTime},#{anticipatedPrice},#{orderTime});")
	public int insertOrderInforMation_gsp(orderInforMation_gsp_zsh orderInforMation);
	
}
