package com.yidu.dao.hy;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
/**
 * ������ Ա����Ϣ������ɾ���ģ��飨dao�㣩
 * @Description��
 * @author ��huYang 
 * @date ��2018��12��7�� ����1:37:43 
 *
 */
@Repository
public interface StoEmpMapper {
	
	/**
	 * ���ܣ������˺ź������ѯԱ����ţ���¼��
	 * @param ��
	 * @return ��
	 * @throws
	 */
	@Select("select empNo from stoemp where posi_account=#{account} and posi_pass=#{pass}")
	public int selectEmpNoByNameAndPass(String account,String pass);

}
