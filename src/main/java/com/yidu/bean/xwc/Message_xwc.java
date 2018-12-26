package com.yidu.bean.xwc;

import java.io.Serializable;

import org.springframework.stereotype.Component;

/**
 * 
 *描述：用户基本信息的实体类
 * @author 夏望城
 *@date2018年12月19日上午8:55:19
 */
@Component
public class Message_xwc implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int message_id;//用户信息的id
	private String message_name;//用户信息的名字
	private String message_birthday;//用户信息的生日
	private String message_phone;//用户信息的电话
	private String message_sex;//用户信息的性别
	private String message_site;//用户信息的地址
	private String message_address;//用户信息的详细地址	
	private String phoneNumber;//用户手机号（账号）
	public int getMessage_id() {
		return message_id;
	}
	public void setMessage_id(int message_id) {
		this.message_id = message_id;
	}
	public String getMessage_name() {
		return message_name;
	}
	public void setMessage_name(String message_name) {
		this.message_name = message_name;
	}
	public String getMessage_birthday() {
		return message_birthday;
	}
	public void setMessage_birthday(String message_birthday) {
		this.message_birthday = message_birthday;
	}
	public String getMessage_phone() {
		return message_phone;
	}
	public void setMessage_phone(String message_phone) {
		this.message_phone = message_phone;
	}
	public String getMessage_sex() {
		return message_sex;
	}
	public void setMessage_sex(String message_sex) {
		this.message_sex = message_sex;
	}
	public String getMessage_site() {
		return message_site;
	}
	public void setMessage_site(String message_site) {
		this.message_site = message_site;
	}
	public String getMessage_address() {
		return message_address;
	}
	public void setMessage_address(String message_address) {
		this.message_address = message_address;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	@Override
	public String toString() {
		return "Message_xwc [message_id=" + message_id + ", message_name=" + message_name + ", message_birthday="
				+ message_birthday + ", message_phone=" + message_phone + ", message_sex=" + message_sex
				+ ", message_site=" + message_site + ", message_address=" + message_address + ", phoneNumber="
				+ phoneNumber + "]";
	}
	
	
	
}
