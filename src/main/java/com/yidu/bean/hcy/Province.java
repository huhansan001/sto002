package com.yidu.bean.hcy;
/**
 * 
 * @Description: ȫ��ʡ����������
 * @author: ������
 * @date 2018��12��11�� ����11:38:15
 * @version 1.0
 */
public class Province {
	private int proId;//ʡ��Id
	private String provinceName;//ʡ������
	private int proNumber;//ʡ����������
	private int cityId;//�м�ID
	public int getProId() {
		return proId;
	}
	public void setProId(int proId) {
		this.proId = proId;
	}
	public String getProvinceName() {
		return provinceName;
	}
	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}
	public int getProNumber() {
		return proNumber;
	}
	public void setProNumber(int proNumber) {
		this.proNumber = proNumber;
	}
	public int getCityId() {
		return cityId;
	}
	public void setCityId(int cityId) {
		this.cityId = cityId;
	}
	@Override
	public String toString() {
		return "Province [proId=" + proId + ", provinceName=" + provinceName + ", proNumber=" + proNumber + ", cityId="
				+ cityId + "]";
	}
	
}
