package com.yidu.bean.hy;

import java.io.Serializable;

import org.springframework.stereotype.Component;
/**
 * ������ Ա�����ܲ˵�ʵ����
 * @Description��
 * @author ��huYang 
 * @date ��2018��12��7�� ����11:23:28 
 *
 */
@Component
public class Menu implements Serializable{
	/** 
	 * @Fields serialVersionUID ��TODO
	 */
	private static final long serialVersionUID = 1L;
	private String menuId;//�˵�id
	private String title;//����
	private String url;//��ַ
	private String pid;//һ���˵�id
	
	public String getMenuId() {
		return menuId;
	}
	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	@Override
	public String toString() {
		return "Menu [menuId=" + menuId + ", title=" + title + ", url=" + url + ", pid=" + pid + "]";
	}
}
