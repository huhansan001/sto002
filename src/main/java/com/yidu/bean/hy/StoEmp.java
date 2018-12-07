package com.yidu.bean.hy;

import java.io.Serializable;

import org.springframework.stereotype.Component;
/**
 * ������ Ա��ʵ����
 * @Description��
 * @author ��huYang 
 * @date ��2018��12��6�� ����10:43:43 
 *
 */
@Component
public class StoEmp implements Serializable{

	/** 
	 * @Fields serialVersionUID ��TODO
	 */
	private static final long serialVersionUID = 1L;
	
	
	private int empNo;//Ա�����
	private String empName;//Ա������
	private String empDate;//��ְ����
	private String posi_account;//�˻�
	private String posi_pass;//�˻�
	public int getEmpNo() {
		return empNo;
	}
	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmpDate() {
		return empDate;
	}
	public void setEmpDate(String empDate) {
		this.empDate = empDate;
	}
	public String getPosi_account() {
		return posi_account;
	}
	public void setPosi_account(String posi_account) {
		this.posi_account = posi_account;
	}
	public String getPosi_pass() {
		return posi_pass;
	}
	public void setPosi_pass(String posi_pass) {
		this.posi_pass = posi_pass;
	}
	@Override
	public String toString() {
		return "StoEmp [empNo=" + empNo + ", empName=" + empName + ", empDate=" + empDate + ", posi_account="
				+ posi_account + ", posi_pass=" + posi_pass + "]";
	}
}
