package com.yidu.bean.hcy;
/**
 * 
 * @Description: ȫ����������
 * @author: ������
 * @date 2018��12��11�� ����11:41:28
 * @version 1.0
 */
public class Areas {
	private int areasId;//����ID
	private String areasName;//��������
	private String locals;//��ϸ��ַ
	public int getAreasId() {
		return areasId;
	}
	public void setAreasId(int areasId) {
		this.areasId = areasId;
	}
	public String getAreasName() {
		return areasName;
	}
	public void setAreasName(String areasName) {
		this.areasName = areasName;
	}
	public String getLocals() {
		return locals;
	}
	public void setLocals(String locals) {
		this.locals = locals;
	}
	@Override
	public String toString() {
		return "Areas [areasId=" + areasId + ", areasName=" + areasName + ", locals=" + locals + "]";
	}
	
}
