package com.yidu.dao.hy;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
/**
 * 描述： 员工信息的增，删，改，查（dao层）
 * @Description：
 * @author ：huYang 
 * @date ：2018年12月7日 下午1:37:43 
 *
 */
@Repository
public interface StoEmpMapper {
	
	/**
	 * 功能：根据账号和密码查询员工编号（登录）
	 * @param ：
	 * @return ：
	 * @throws
	 */
	@Select("select empNo from stoemp where posi_account=#{account} and posi_pass=#{pass}")
	public int selectEmpNoByNameAndPass(String account,String pass);

}
