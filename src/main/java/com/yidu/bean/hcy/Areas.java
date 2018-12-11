package com.yidu.bean.hcy;
/**
 * 
 * @Description: 全国区级网点
 * @author: 胡春毅
 * @date 2018年12月11日 上午11:41:28
 * @version 1.0
 */
public class Areas {
	private int areasId;//区级ID
	private String areasName;//区级名称
	private String locals;//详细地址
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
