package com.yidu.dao.zsh;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.yidu.bean.zsh.address_lql_zsh;
import com.yidu.bean.zsh.userSender_zsh;

@Repository
public interface address_lql_zshMapper {
	/**
	 * 
	 * function:查询所有收件人表信息
	 * name :Quiet
	 * @return
	 * @date 2018年12月24日下午6:46:04
	 */
	@Select("SELECT * FROM address_lql where userInfoPhone=#{userInfoPhone}")
	public List<address_lql_zsh> selectaddress_lqlAll(address_lql_zsh userInfoPhone);
	
	/**
	 * 
	 * function:查询所有寄件人表信息
	 * name :Quiet
	 * @return
	 * @date 2018年12月24日下午6:48:53
	 */
	@Select("SELECT * FROM userSender where userInfoPhone=#{userInfoPhone}")
	public List<userSender_zsh> selectuserSenderAll(address_lql_zsh userInfoPhone);
	
	/**
	 * 
	 * function:新增收件人表信息
	 * name :Quiet
	 * @param userInfoPhone
	 * @return
	 * @date 2018年12月24日下午7:52:34
	 */
	@Insert("INSERT INTO address_lql(recipName,recipMobile,recipPhone,recipAddress,recipDetailed,recipType,senderName,userInfoPhone) VALUES(#{recipName},#{recipMobile},#{recipPhone},#{recipAddress},#{recipDetailed},#{recipType},#{senderName},#{userInfoPhone})")
	public int insertaddress_lql(address_lql_zsh address_lql_zsh);
	
	/**
	 * 
	 * function:新增寄件人表信息
	 * name :Quiet
	 * @param userSender_zsh
	 * @return
	 * @date 2018年12月25日上午8:43:31
	 */
	@Insert("INSERT INTO userSender(senderName,senderMobile,senderPhone,senderAddress,senderDetailed,senderType,userInfoPhone) VALUES(#{senderName},#{senderMobile},#{senderPhone},#{senderAddress},#{senderDetailed},#{senderType},#{userInfoPhone})")
	public int insertSender(userSender_zsh userSender_zsh);
	
	/**
	 * 
	 * function:删除收件人表信息
	 * name :Quiet
	 * @param address_lql_zsh
	 * @return
	 * @date 2018年12月25日上午9:26:03
	 */
	@Delete("DELETE FROM address_lql WHERE recipientId=#{recipientId} and userInfoPhone=#{userInfoPhone}")
	public int deleteaddress_lql(address_lql_zsh address_lql_zsh);
	
	/**
	 * 
	 * function:
	 * name :Quiet
	 * @param userSender_zsh
	 * @return
	 * @date 2018年12月25日上午9:27:27
	 */
	@Delete("DELETE FROM userSender WHERE senderId=#{senderId} and userInfoPhone=#{userInfoPhone}")
	public int deleteSender(userSender_zsh userSender_zsh);
	
	/**
	 * 
	 * function:修改收件人表信息
	 * name :Quiet
	 * @param address_lql_zsh
	 * @return
	 * @date 2018年12月25日上午10:22:29
	 */
	@Update("UPDATE address_lql SET recipName=#{recipName},recipMobile=#{recipMobile},recipPhone=#{recipPhone},recipAddress=#{recipAddress},recipDetailed=#{recipDetailed},recipType=#{recipType},senderName=#{senderName} WHERE userInfoPhone=#{userInfoPhone} AND recipientId=#{recipientId}")
	public int updateaddress_lql(address_lql_zsh address_lql_zsh);
	
	/**
	 * 
	 * function:修改寄件人表信息
	 * name :Quiet
	 * @param userSender_zsh
	 * @return
	 * @date 2018年12月25日上午10:23:48
	 */
	@Update("UPDATE userSender SET senderName=#{senderName},senderMobile=#{senderMobile},senderPhone=#{senderPhone},senderAddress=#{senderAddress},senderDetailed=#{senderDetailed},senderType=#{senderType} WHERE userInfoPhone=#{userInfoPhone} AND senderId=#{senderId}")
	public int updateSender(userSender_zsh userSender_zsh);
	
	/**
	 * 
	 * function:通过名字模糊查询收件人表的信息
	 * name :Quiet
	 * @return
	 * @date 2018年12月25日上午10:49:12
	 */
	@Select("SELECT * FROM address_lql WHERE recipName LIKE #{recipName} AND userInfoPhone=#{userInfoPhone}")
	public List<address_lql_zsh> selectaddressByName(@Param("recipName")String recipName, @Param("userInfoPhone")String userInfoPhone);
	/**
	 * 
	 * function:通过名字模糊查询寄件人表的信息
	 * name :Quiet
	 * @return
	 * @date 2018年12月25日上午10:49:34
	 */
	@Select("SELECT * FROM userSender WHERE senderName LIKE #{senderName} AND userInfoPhone=#{userInfoPhone}")
	public List<userSender_zsh> selectSenderByName(@Param("senderName")String senderName, @Param("userInfoPhone")String userInfoPhone);
	
	
	/**
	 * 
	 * function:通过手机号模糊查询收件人表的信息
	 * name :Quiet
	 * @return
	 * @date 2018年12月25日上午10:49:12
	 */
	@Select("SELECT * FROM address_lql WHERE recipMobile LIKE #{recipMobile} AND userInfoPhone=#{userInfoPhone}")
	public List<address_lql_zsh> selectaddressByPhone(@Param("recipMobile")String recipMobile, @Param("userInfoPhone")String userInfoPhone);
	/**
	 * 
	 * function:通过手机号模糊查询寄件人表的信息
	 * name :Quiet
	 * @return
	 * @date 2018年12月25日上午10:49:34
	 */
	@Select("SELECT * FROM userSender WHERE senderMobile LIKE #{senderMobile} AND userInfoPhone=#{userInfoPhone}")
	public List<userSender_zsh> selectSenderByPhone(@Param("senderMobile")String senderMobile, @Param("userInfoPhone")String userInfoPhone);

}
