package com.yidu.bean.hcy;
/**
 * 
 * @Description: 全国市级网点数量
 * @author: 胡春毅
 * @date 2018年12月11日 上午11:39:09
 * @version 1.0
 */
public class City {
	private int cityId;//市级ID
	private String cityName;//省级名称
	private int cityNumber;//市级网点数量
	private int areasId;//区级ID
	public int getCityId() {
		return cityId;
	}
	public void setCityId(int cityId) {
		this.cityId = cityId;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public int getCityNumber() {
		return cityNumber;
	}
	public void setCityNumber(int cityNumber) {
		this.cityNumber = cityNumber;
	}
	public int getAreasId() {
		return areasId;
	}
	public void setAreasId(int areasId) {
		this.areasId = areasId;
	}
	@Override
	public String toString() {
		return "City [cityId=" + cityId + ", cityName=" + cityName + ", cityNumber=" + cityNumber + ", areasId="
				+ areasId + "]";
	}
	
}
