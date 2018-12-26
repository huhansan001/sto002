package com.yidu.service.xwc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yidu.bean.xwc.UserRealName_xwc;
import com.yidu.dao.xwc.UserRealNameMapper_xwc;

/**
 * 
 *描述：用户实名认证业务层
 * @author 夏望城
 *@date2018年12月20日下午2:25:10
 */
@Service
public class UserRealNameService_xwc {
	
	@Autowired
	private UserRealNameMapper_xwc userRealNameMapper_xwc;
	
	public void insertUserRealName(UserRealName_xwc userRealName_xwc) {
		userRealNameMapper_xwc.insertUserRealName(userRealName_xwc);
	}
}
