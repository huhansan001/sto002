package com.yidu.bean.zsh;

import java.io.Serializable;

import org.springframework.stereotype.Component;
/**
 * 
 *描述：用户下单信息表（收件人）
 * @author zhoushihao
 * @date2018年12月19日上午8:52:52
 */
@Component
public class orderInforMation_gsp_zsh implements Serializable{
   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
   private int ordersId;          //收件人Id
   private String userName;       //姓名
   private String phoneNumber;    //手机号码
   private String sendsAddress;   //收件地址
   private String detailedAddress;//详细地址
   private String machineNumber;  //座机号码
   private String ltemWeight;     //物品重量
   private String itemType;       //物品类型
   private String estimatedTime;  //预计到达时间
   private int anticipatedPrice;  //预计价格
   private int uplaceSenderId;    //寄件人Id
   private String orderTime;      //下单时间
   
public int getOrdersId() {
	return ordersId;
}
public void setOrdersId(int ordersId) {
	this.ordersId = ordersId;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getPhoneNumber() {
	return phoneNumber;
}
public void setPhoneNumber(String phoneNumber) {
	this.phoneNumber = phoneNumber;
}
public String getSendsAddress() {
	return sendsAddress;
}
public void setSendsAddress(String sendsAddress) {
	this.sendsAddress = sendsAddress;
}
public String getDetailedAddress() {
	return detailedAddress;
}
public void setDetailedAddress(String detailedAddress) {
	this.detailedAddress = detailedAddress;
}
public String getMachineNumber() {
	return machineNumber;
}
public void setMachineNumber(String machineNumber) {
	this.machineNumber = machineNumber;
}
public String getLtemWeight() {
	return ltemWeight;
}
public void setLtemWeight(String ltemWeight) {
	this.ltemWeight = ltemWeight;
}
public String getItemType() {
	return itemType;
}
public void setItemType(String itemType) {
	this.itemType = itemType;
}
public String getEstimatedTime() {
	return estimatedTime;
}
public void setEstimatedTime(String estimatedTime) {
	this.estimatedTime = estimatedTime;
}
public int getAnticipatedPrice() {
	return anticipatedPrice;
}
public void setAnticipatedPrice(int anticipatedPrice) {
	this.anticipatedPrice = anticipatedPrice;
}
public int getUplaceSenderId() {
	return uplaceSenderId;
}
public void setUplaceSenderId(int uplaceSenderId) {
	this.uplaceSenderId = uplaceSenderId;
}
public String getOrderTime() {
	return orderTime;
}
public void setOrderTime(String orderTime) {
	this.orderTime = orderTime;
}
@Override
public String toString() {
	return "OrderInforMation_gsp [ordersId=" + ordersId + ", userName=" + userName + ", phoneNumber=" + phoneNumber
			+ ", sendsAddress=" + sendsAddress + ", detailedAddress=" + detailedAddress + ", machineNumber="
			+ machineNumber + ", ltemWeight=" + ltemWeight + ", itemType=" + itemType + ", estimatedTime="
			+ estimatedTime + ", anticipatedPrice=" + anticipatedPrice + ", uplaceSenderId=" + uplaceSenderId
			+ ", orderTime=" + orderTime + "]";
}
}
