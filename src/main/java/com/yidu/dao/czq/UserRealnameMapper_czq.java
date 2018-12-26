package com.yidu.dao.czq;

import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.yidu.bean.czq.UserrealName;

/**
 * 
 * describe:用户实名认证（用户基本信息）dao
 * function:
 * @author Quite
 * @date 2018年12月19日上午11:01:12
 */
@Repository
public interface UserRealnameMapper_czq {
	/**
	 * 
	 * function:修改用户登录的密码
	 * name :Quiet
	 * @param userRealname
	 * @return
	 * @date 2018年12月19日上午11:11:09
	 */
//	@Update("UPDATE userRealname SET userPass=#{userPass} WHERE phoneNumber=#{phoneNumber}")
	public int updateUserRealname(UserrealName userRealname);
	
}
