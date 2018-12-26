package com.yidu.dao.gsp;


import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yidu.bean.gsp.UserRealname_gsp;
/**
 * 
 * 描述： dao层
 * @author 辜晟鹏
 * @date 2018年12月22日上午8:57:58 
 * @version 1.0
 */

@Repository
public interface UserRealnameMapper_gsp {
	 /**
	  * 
	  * 功能： 注册
	  * @param userRealname
	  * @return
	  */
	@Insert("insert into userRealname(phoneNumber,userPass) values(#{phoneNumber},#{userPass})")
	 public int register(UserRealname_gsp userRealname);
   /**
    * 
    * 功能： 登陆
    * @param userRealname
    * @return
    */
	@Select("select count(1) from userRealname where phoneNumber=#{phoneNumber} and userPass=#{userPass}")
	public int login(UserRealname_gsp userRealname);
	
	
}
