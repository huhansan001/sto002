package com.yidu.bean.zsh;

import java.io.Serializable;

import org.springframework.stereotype.Component;

/**
 * 
 *描述：用户下单表（寄件人）
 * @author zhoushihao
 * @date2018年12月19日上午8:50:16
 */
@Component
public class userPlace_wsq_zsh implements Serializable{
   /**
	 * 
	 */
   private static final long serialVersionUID = 1L;
   private int uplaceSenderId;		    //寄件人Id
   private String uplaceName;			//姓名
   private String uplacePhone;			//手机号码
   private String senderAddress;		//发件地址
   private String uplaceAddress;		//详细地址
   private String uplaceMachine;		//座机号码
   private String uplaceEmail;			//邮箱
   private String uplacePayment;		//付款方式		
   
public int getUplaceSenderId() {
	return uplaceSenderId;
}
public void setUplaceSenderId(int uplaceSenderId) {
	this.uplaceSenderId = uplaceSenderId;
}
public String getUplaceName() {
	return uplaceName;
}
public void setUplaceName(String uplaceName) {
	this.uplaceName = uplaceName;
}
public String getUplacePhone() {
	return uplacePhone;
}
public void setUplacePhone(String uplacePhone) {
	this.uplacePhone = uplacePhone;
}
public String getSenderAddress() {
	return senderAddress;
}
public void setSenderAddress(String senderAddress) {
	this.senderAddress = senderAddress;
}
public String getUplaceAddress() {
	return uplaceAddress;
}
public void setUplaceAddress(String uplaceAddress) {
	this.uplaceAddress = uplaceAddress;
}
public String getUplaceMachine() {
	return uplaceMachine;
}
public void setUplaceMachine(String uplaceMachine) {
	this.uplaceMachine = uplaceMachine;
}
public String getUplaceEmail() {
	return uplaceEmail;
}
public void setUplaceEmail(String uplaceEmail) {
	this.uplaceEmail = uplaceEmail;
}
public String getUplacePayment() {
	return uplacePayment;
}
public void setUplacePayment(String uplacePayment) {
	this.uplacePayment = uplacePayment;
}
@Override
public String toString() {
	return "UserPlace_wsq [uplaceSenderId=" + uplaceSenderId + ", uplaceName=" + uplaceName + ", uplacePhone="
			+ uplacePhone + ", senderAddress=" + senderAddress + ", uplaceAddress=" + uplaceAddress + ", uplaceMachine="
			+ uplaceMachine + ", uplaceEmail=" + uplaceEmail + ", uplacePayment=" + uplacePayment + "]";
}
   
   
}
