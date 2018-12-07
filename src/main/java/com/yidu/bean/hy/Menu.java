package com.yidu.bean.hy;

import java.io.Serializable;

import org.springframework.stereotype.Component;
/**
 * 描述： 员工功能菜单实体类
 * @Description：
 * @author ：huYang 
 * @date ：2018年12月7日 上午11:23:28 
 *
 */
@Component
public class Menu implements Serializable{
	/** 
	 * @Fields serialVersionUID ：TODO
	 */
	private static final long serialVersionUID = 1L;
	private String menuId;//菜单id
	private String title;//标题
	private String url;//地址
	private String pid;//一级菜单id
	
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
