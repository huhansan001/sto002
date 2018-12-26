package com.yidu.bean.gsp;

import java.io.Serializable;

public class UserRealname_gsp implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private  int urealNameId;//用户ID
	private String  userName;//用户名字
	private String  userSex;//性别
	private String  userNation;//民族
	private String  userBirthday;//出生年月	
	private String  userIDnumber;//身份证号码
	private String  homeAddress;//家庭住址
	private String  detailedAddress	;//详细地址
	private String  phoneNumber;//手机号码
	private String  userPass;//用户密码
	@Override
	public String toString() {
		return "UserRealname [urealNameId=" + urealNameId + ", userName=" + userName + ", userSex=" + userSex
				+ ", userNation=" + userNation + ", userBirthday=" + userBirthday + ", userIDnumber=" + userIDnumber
				+ ", homeAddress=" + homeAddress + ", detailedAddress=" + detailedAddress + ", phoneNumber="
				+ phoneNumber + ", userPass=" + userPass + "]";
	}
	
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
}
