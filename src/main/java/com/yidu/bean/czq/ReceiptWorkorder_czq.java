package com.yidu.bean.czq;

import java.io.Serializable;

public class ReceiptWorkorder_czq implements Serializable {
	private int receiptId;	//收件员id
	private String empNo;	// 员工编号
	private String orderNumber;	// 订单号
	private int locals;	// 区县id
	private int deliveryArea;	//送货区域（网点）id
	private String reTime;	//收件时间
	private String reClosePackage;	//合包状态（已合包，未合包）
	
	public int getReceiptId() {
		return receiptId;
	}
	public void setReceiptId(int receiptId) {
		this.receiptId = receiptId;
	}
	public String getEmpNo() {
		return empNo;
	}
	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}
	public String getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	public int getLocals() {
		return locals;
	}
	public void setLocals(int locals) {
		this.locals = locals;
	}
	public int getDeliveryArea() {
		return deliveryArea;
	}
	public void setDeliveryArea(int deliveryArea) {
		this.deliveryArea = deliveryArea;
	}
	public String getReTime() {
		return reTime;
	}
	public void setReTime(String reTime) {
		this.reTime = reTime;
	}
	public String getReClosePackage() {
		return reClosePackage;
	}
	public void setReClosePackage(String reClosePackage) {
		this.reClosePackage = reClosePackage;
	}
	@Override
	public String toString() {
		return "receiptWorkorder_czq [receiptId=" + receiptId + ", empNo=" + empNo + ", orderNumber=" + orderNumber
				+ ", locals=" + locals + ", deliveryArea=" + deliveryArea + ", reTime=" + reTime + ", reClosePackage="
				+ reClosePackage + "]";
	}

}
