package com.yidu.bean.hy;

import java.io.Serializable;

import org.springframework.stereotype.Component;
/**
 * ������ ְλʵ����
 * @Description��
 * @author ��huYang 
 * @date ��2018��12��6�� ����10:48:41 
 *
 */
@Component
public class Positions implements Serializable{

	/** 
	 * @Fields serialVersionUID ��TODO
	 */
	private static final long serialVersionUID = 1L;

	private int posiId;//ְλid
	private String posiName;//ְλ����
	private int salary;//ְλнˮ
	public int getPosiId() {
		return posiId;
	}
	public void setPosiId(int posiId) {
		this.posiId = posiId;
	}
	public String getPosiName() {
		return posiName;
	}
	public void setPosiName(String posiName) {
		this.posiName = posiName;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	@Override
	public String toString() {
		return "Positions [posiId=" + posiId + ", posiName=" + posiName + ", salary=" + salary + "]";
	}
}
