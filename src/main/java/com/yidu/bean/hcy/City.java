package com.yidu.bean.hcy;
/**
 * 
 * @Description: ȫ���м���������
 * @author: ������
 * @date 2018��12��11�� ����11:39:09
 * @version 1.0
 */
public class City {
	private int cityId;//�м�ID
	private String cityName;//ʡ������
	private int cityNumber;//�м���������
	private int areasId;//����ID
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
