package com.yidu.dao.xwc;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yidu.bean.xwc.Message_xwc;
/**
 * 
 *描述：用户信息的新增到后台
 * @author 夏望城
 *@date2018年12月19日上午9:05:13
 */
@Repository
public interface MessageMapper_xwc {

	/**
	 * 
	 *功能：把用户信息新增到后台
	 * @param message_xwc
	 * @return 
	 */
	@Insert("insert into message_xwc (message_name,message_birthday,message_phone,message_sex,message_site,message_address) values (#{message_name},#{message_birthday},#{message_phone},#{message_sex},#{message_site},#{message_address})")
	public void insertMessage(Message_xwc message_xwc);
	
	/*@Select("SELECT * FROM message_xwc WHERE phoneNumber=#{phoneNumber}")
	public List<Message_xwc> selectMessageByPhone(@Param("phoneNumber")String phoneNumber);*/
	
	
}
