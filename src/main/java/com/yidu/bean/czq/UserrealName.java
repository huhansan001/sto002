package com.yidu.bean.czq;

import java.io.Serializable;

public class UserrealName implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int urealNameId;	// INT AUTO_INCREMENT PRIMARY KEY,  #实名id
	private String userName;	// NVARCHAR(20),	#姓名
	private String userSex;	// NVARCHAR(2),	#性别
	private String userNation;	// NVARCHAR(10),	#民族
	private String userBirthday;	// NVARCHAR(15),	#出生年月
	private String userIDnumber;	// NVARCHAR(18),	#身份证号
	private String homeAddress;	// NVARCHAR(200),	#家庭住址
	private String detailedAddress;	// NVARCHAR(200),	#详细地址
	private String phoneNumber;	// NVARCHAR(11),	#手机号码
	private String userPass;	// NVARCHAR(20)	#密码
	public int getUrealNameId() {
		return urealNameId;
	}
	public void setUrealNameId(int urealNameId) {
		this.urealNameId = urealNameId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getUserNation() {
		return userNation;
	}
	public void setUserNation(String userNation) {
		this.userNation = userNation;
	}
	public String getUserBirthday() {
		return userBirthday;
	}
	public void setUserBirthday(String userBirthday) {
		this.userBirthday = userBirthday;
	}
	public String getUserIDnumber() {
		return userIDnumber;
	}
	public void setUserIDnumber(String userIDnumber) {
		this.userIDnumber = userIDnumber;
	}
	public String getHomeAddress() {
		return homeAddress;
	}
	public void setHomeAddress(String homeAddress) {
		this.homeAddress = homeAddress;
	}
	public String getDetailedAddress() {
		return detailedAddress;
	}
	public void setDetailedAddress(String detailedAddress) {
		this.detailedAddress = detailedAddress;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	@Override
	public String toString() {
		return "UserRealname [urealNameId=" + urealNameId + ", userName=" + userName + ", userSex=" + userSex
				+ ", userNation=" + userNation + ", userBirthday=" + userBirthday + ", userIDnumber=" + userIDnumber
				+ ", homeAddress=" + homeAddress + ", detailedAddress=" + detailedAddress + ", phoneNumber="
				+ phoneNumber + ", userPass=" + userPass + "]";
	}
	
}
