package com.yidu.service.hy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * ������ Ա����Ϣ��ҵ���
 * @Description��
 * @author ��huYang 
 * @date ��2018��12��7�� ����1:38:49 
 *
 */

import com.yidu.dao.hy.StoEmpMapper;
@Service
public class StoEmpService {

	
	@Autowired
	private StoEmpMapper stoEmpMapper;//Ա����Ϣ��dao��
	/**
	 * ���ܣ������˺ź������ѯԱ����ţ���¼��
	 * @param ��
	 * @return ��
	 * @throws
	 */
	public int selectEmpNoByNameAndPass(String account,String pass) {
		return stoEmpMapper.selectEmpNoByNameAndPass(account, pass);
	}
}
