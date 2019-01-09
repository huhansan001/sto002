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
/**
 * 
 * describe:收件人，寄件人信息表与数据库的连接层
 * function:
 * @author Quite
 * @date 2019年1月9日上午9:46:47
 */
@Repository
public interface address_lql_zshMapper {
	/**
	 * 
	 * function:查询所有收件人表信息
	 * name :Quiet
	 * @param userInfoPhone 用户手机号（账号）
	 * @return
	 * @date 2019年1月9日上午8:50:41
	 */
	@Select("SELECT * FROM address_lql where userInfoPhone=#{userInfoPhone}")
	public List<address_lql_zsh> selectaddress_lqlAll(address_lql_zsh userInfoPhone);
	
	/**
	 * 
	 * function:查询所有寄件人表信息
	 * name :Quiet
	 * @param userInfoPhone  用户手机号（账号）
	 * @return
	 * @date 2019年1月9日上午8:55:46
	 */
	@Select("SELECT * FROM userSender where userInfoPhone=#{userInfoPhone}")
	public List<userSender_zsh> selectuserSenderAll(address_lql_zsh userInfoPhone);
	
	/**
	 * 
	 * function:新增收件人表信息
	 * name :Quiet
	 * @param address_lql_zsh 收件人表的数据层
	 * @return
	 * @date 2019年1月9日上午9:00:49
	 */
	@Insert("INSERT INTO address_lql(recipName,recipMobile,recipPhone,recipAddress,recipDetailed,recipType,senderName,userInfoPhone) VALUES(#{recipName},#{recipMobile},#{recipPhone},#{recipAddress},#{recipDetailed},#{recipType},#{senderName},#{userInfoPhone})")
	public int insertaddress_lql(address_lql_zsh address_lql_zsh);
	
	/**
	 * 
	 * function:新增寄件人表信息
	 * name :Quiet
	 * @param userSender_zsh 寄件人表数据层
	 * @return
	 * @date 2019年1月9日上午9:01:03
	 */
	@Insert("INSERT INTO userSender(senderName,senderMobile,senderPhone,senderAddress,senderDetailed,senderType,userInfoPhone) VALUES(#{senderName},#{senderMobile},#{senderPhone},#{senderAddress},#{senderDetailed},#{senderType},#{userInfoPhone})")
	public int insertSender(userSender_zsh userSender_zsh);
	
	/**
	 * 
	 * function:删除收件人表信息
	 * name :Quiet
	 * @param address_lql_zsh 收件人表 数据层
	 * @return
	 * @date 2019年1月9日上午9:01:14
	 */
	@Delete("DELETE FROM address_lql WHERE recipientId=#{recipientId} and userInfoPhone=#{userInfoPhone}")
	public int deleteaddress_lql(address_lql_zsh address_lql_zsh);
	
	/**
	 * 
	 * function:删除寄件人表信息
	 * name :Quiet
	 * @param userSender_zsh 寄件人表 数据层
	 * @return
	 * @date 2019年1月9日上午9:01:29
	 */
	@Delete("DELETE FROM userSender WHERE senderId=#{senderId} and userInfoPhone=#{userInfoPhone}")
	public int deleteSender(userSender_zsh userSender_zsh);
	
	/**
	 * 
	 * function:修改收件人表信息
	 * name :Quiet
	 * @param address_lql_zsh 收件人表数据层
	 * @return
	 * @date 2019年1月9日上午9:01:46
	 */
	@Update("UPDATE address_lql SET recipName=#{recipName},recipMobile=#{recipMobile},recipPhone=#{recipPhone},recipAddress=#{recipAddress},recipDetailed=#{recipDetailed},recipType=#{recipType},senderName=#{senderName} WHERE userInfoPhone=#{userInfoPhone} AND recipientId=#{recipientId}")
	public int updateaddress_lql(address_lql_zsh address_lql_zsh);
	
	/**
	 * 
	 * function:修改寄件人表信息
	 * name :Quiet
	 * @param userSender_zsh 寄件人表数据层
	 * @return
	 * @date 2019年1月9日上午9:01:56
	 */
	@Update("UPDATE userSender SET senderName=#{senderName},senderMobile=#{senderMobile},senderPhone=#{senderPhone},senderAddress=#{senderAddress},senderDetailed=#{senderDetailed},senderType=#{senderType} WHERE userInfoPhone=#{userInfoPhone} AND senderId=#{senderId}")
	public int updateSender(userSender_zsh userSender_zsh);
	
	/**
	 * 
	 * function:通过名字模糊查询收件人表的信息
	 * name :Quiet
	 * @param recipName 收件人名字
	 * @param userInfoPhone 用户手机号（账号）
	 * @return
	 * @date 2019年1月9日上午9:02:06
	 */
	@Select("SELECT * FROM address_lql WHERE recipName LIKE #{recipName} AND userInfoPhone=#{userInfoPhone}")
	public List<address_lql_zsh> selectaddressByName(@Param("recipName")String recipName, @Param("userInfoPhone")String userInfoPhone);
	/**
	 * 
	 * function:通过名字模糊查询寄件人表的信息
	 * name :Quiet
	 * @param senderName 寄件人名字
	 * @param userInfoPhone 用户手机号（账号）
	 * @return
	 * @date 2019年1月9日上午9:02:26
	 */
	@Select("SELECT * FROM userSender WHERE senderName LIKE #{senderName} AND userInfoPhone=#{userInfoPhone}")
	public List<userSender_zsh> selectSenderByName(@Param("senderName")String senderName, @Param("userInfoPhone")String userInfoPhone);
	
	
	/**
	 * 
	 * function:通过手机号模糊查询收件人表的信息
	 * name :Quiet
	 * @param recipMobile 收件人手机号
	 * @param userInfoPhone 用户手机号（账号）
	 * @return 
	 * @date 2019年1月9日上午9:02:35
	 */
	@Select("SELECT * FROM address_lql WHERE recipMobile LIKE #{recipMobile} AND userInfoPhone=#{userInfoPhone}")
	public List<address_lql_zsh> selectaddressByPhone(@Param("recipMobile")String recipMobile, @Param("userInfoPhone")String userInfoPhone);
	/**
	 * 
	 * function:通过手机号模糊查询寄件人表的信息
	 * name :Quiet
	 * @param senderMobile 寄件人手机号
	 * @param userInfoPhone 用户手机号（账号）
	 * @return
	 * @date 2019年1月9日上午9:02:44
	 */
	@Select("SELECT * FROM userSender WHERE senderMobile LIKE #{senderMobile} AND userInfoPhone=#{userInfoPhone}")
	public List<userSender_zsh> selectSenderByPhone(@Param("senderMobile")String senderMobile, @Param("userInfoPhone")String userInfoPhone);

}
