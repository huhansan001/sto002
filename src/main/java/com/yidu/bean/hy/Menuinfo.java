package com.yidu.bean.hy;

import java.io.Serializable;

import org.springframework.stereotype.Component;
/**
 * ������ Ա�����ܲ˵�����ʵ����
 * @Description��
 * @author ��huYang 
 * @date ��2018��12��7�� ����11:24:54 
 *
 */
@Component
public class Menuinfo implements Serializable{
	/** 
	 * @Fields serialVersionUID ��TODO
	 */
	private static final long serialVersionUID = 1L;
	private int menuInfoId;//�˵�����id
	private int positionId;//��ɫid
	private String menuId;//�˵�id
	@Override
	public String toString() {
		return "Menuinfo [menuInfoId=" + menuInfoId + ", positionId=" + positionId + ", menuId=" + menuId + "]";
	}
	public int getMenuInfoId() {
		return menuInfoId;
	}
	public void setMenuInfoId(int menuInfoId) {
		this.menuInfoId = menuInfoId;
	}
	public int getPositionId() {
		return positionId;
	}
	public void setPositionId(int positionId) {
		this.positionId = positionId;
	}
	public String getMenuId() {
		return menuId;
	}
	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}
}
