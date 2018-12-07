package com.yidu.bean.hy;

import java.io.Serializable;

import org.springframework.stereotype.Component;
/**
 * ������ Ա��ְλ����ʵ����
 * @Description��
 * @author ��huYang 
 * @date ��2018��12��6�� ����10:44:25 
 *
 */
@Component
public class PositionInfo implements Serializable{

	/** 
	 * @Fields serialVersionUID ��TODO
	 */
	private static final long serialVersionUID = 1L;

	private int posiInfoId;//ְλid
	private int empNo;//Ա�����
	private int posiId;//ְλid
	
	public int getPosiInfoId() {
		return posiInfoId;
	}
	public void setPosiInfoId(int posiInfoId) {
		this.posiInfoId = posiInfoId;
	}
	public int getEmpNo() {
		return empNo;
	}
	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}
	public int getPosiId() {
		return posiId;
	}
	public void setPosiId(int posiId) {
		this.posiId = posiId;
	}
	@Override
	public String toString() {
		return "PositionInfo [posiInfoId=" + posiInfoId + ", empNo=" + empNo + ", posiId=" + posiId + "]";
	}
}
