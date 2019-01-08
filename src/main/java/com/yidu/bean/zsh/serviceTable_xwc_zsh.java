package com.yidu.bean.zsh;

import java.io.Serializable;
import org.springframework.stereotype.Component;
/**
 * 
 *描述：业务表数据
 * @author zhoushihao
 * @date2018年12月26日上午10:02:38
 */
@Component
public class serviceTable_xwc_zsh implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int serviceId; //业务表自增长ID
	private String	orderNumber;//订单号
	private int	ordersId;//收件人id	
	private String	orderStatus;//订单状态
	private String	remarks;//备注  
	private String	customer;//客服
	public int getServiceId() {
		return serviceId;
	}
	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}
	public String getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getCustomer() {
		return customer;
	}
	public void setCustomer(String customer) {
		this.customer = customer;
	}
	public int getOrdersId() {
		return ordersId;
	}
	public void setOrdersId(int ordersId) {
		this.ordersId = ordersId;
	}
	@Override
	public String toString() {
		return "serviceTable_xwc_zsh [serviceId=" + serviceId + ", orderNumber=" + orderNumber + ", ordersId="
				+ ordersId + ", orderStatus=" + orderStatus + ", remarks=" + remarks + ", customer=" + customer + "]";
	}
	
	
}
