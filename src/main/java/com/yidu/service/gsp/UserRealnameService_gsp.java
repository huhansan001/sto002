package com.yidu.service.gsp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yidu.bean.gsp.UserRealname_gsp;
import com.yidu.dao.gsp.UserRealnameMapper_gsp;

@Service
public class UserRealnameService_gsp {
	/**
	 * 调用用户Dao层
	 */
  @Autowired
  private UserRealnameMapper_gsp realnameMapper;
  /**
   * 
   * 功能：注册
   * @param userRealname
   * @return 返回一个Int
   */
  public int register(UserRealname_gsp userRealname){
	return realnameMapper.register(userRealname);
  }
  /**
   * 
   * 功能： 登陆
   * @param userRealname
   * @return int
   */
  public int  login(UserRealname_gsp userRealname){
System.out.println(realnameMapper.login(userRealname));
System.out.println(userRealname.toString());
	return realnameMapper.login(userRealname);
	  
  }
  
}
