package com.yidu.service.hy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * 描述： 员工信息的业务层
 * @Description：
 * @author ：huYang 
 * @date ：2018年12月7日 下午1:38:49 
 *
 */

import com.yidu.dao.hy.StoEmpMapper;
@Service
public class StoEmpService {

	
	@Autowired
	private StoEmpMapper stoEmpMapper;//员工信息的dao层
	/**
	 * 功能：根据账号和密码查询员工编号（登录）
	 * @param ：
	 * @return ：
	 * @throws
	 */
	public int selectEmpNoByNameAndPass(String account,String pass) {
		return stoEmpMapper.selectEmpNoByNameAndPass(account, pass);
	}
}
