package com.yidu.service.czq;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yidu.bean.czq.UserrealName;
import com.yidu.dao.czq.UserRealnameMapper_czq;


/**
 * 
 * describe:用户实名认证（用户基本信息）service层
 * function:
 * @author Quite
 * @date 2018年12月19日上午11:36:23
 */
@Service
public class UserRealnameService_czq {
	@Autowired
	private UserRealnameMapper_czq userRealnameMapper;//调用用户实名认证的Mapper
	
	/**
	 * 
	 * function:修改用户登录的密码
	 * name :Quiet
	 * @param userRealname
	 * @return
	 * @date 2018年12月19日上午11:40:05
	 */
	public int updateUserRealname(UserrealName userRealname) {
		int i = userRealnameMapper.updateUserRealname(userRealname);
		System.out.println("来自service的i="+i);
		return i;
	}
}
