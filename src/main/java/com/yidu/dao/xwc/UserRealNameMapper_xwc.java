package com.yidu.dao.xwc;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.yidu.bean.xwc.UserRealName_xwc;

@Repository
public interface UserRealNameMapper_xwc {

	
	/**
	 * 
	 *功能：把用户实名认证信息新增到后台
	 * @param userRealName_xwc
	 */
	@Insert("INSERT INTO userRealname(userName,userSex,userNation,userBirthday,userIDnumber,homeAddress,detailedAddress,phoneNumber) VALUES (#{userName},#{userSex},#{userNation},#{userBirthday},#{userIDnumber},#{homeAddress},#{detailedAddress},#{phoneNumber})")
	public int insertUserRealName(UserRealName_xwc userRealName_xwc );
	
	/**
	 * 
	 * function:宁静增加修改方法以作为实名认证//phoneNumber
	 * name :Quiet
	 * @return
	 * @date 2018年12月22日上午9:03:29
	 */
	@Update("update userRealnme set userName=#{userName},userSex=#{userSex},userNation=#{userNation},userBirthday=#{userBirthday},userIDnumber=#{userIDnumber},homeAddress=#{homeAddress},detailedAddress=#{detailedAddress} where phoneNumber=#{phoneNumber}")
	public int updateUserRealName();
}
