package com.yidu.bean.hcy;

import java.io.Serializable;

import org.springframework.stereotype.Component;
/**
 * 
 * @Description: 运单数据层
 * @author 胡春毅
 * @date 2018年12月28日 上午11:40:21
 * @version 1.0
 */
@Component
public class WaybillNumber implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String waybillNumber;//运单号
	private String shuttleState;//班车状态
	private String routingState;//路由
	private String shuStaTime;
	
	
	public String getShuStaTime() {
		return shuStaTime;
	}
	public void setShuStaTime(String shuStaTime) {
		this.shuStaTime = shuStaTime;
	}
	public String getWaybillNumber() {
		return waybillNumber;
	}
	public void setWaybillNumber(String waybillNumber) {
		this.waybillNumber = waybillNumber;
	}
	public String getShuttleState() {
		return shuttleState;
	}
	public String getRoutingState() {
		return routingState;
	}
	public void setRoutingState(String routingState) {
		this.routingState = routingState;
	}
	public void setShuttleState(String shuttleState) {
		this.shuttleState = shuttleState;
	}
	@Override
	public String toString() {
		return "WaybillNumber [waybillNumber=" + waybillNumber + ", shuttleState=" + shuttleState + ", routingState="
				+ routingState + ", shuStaTime=" + shuStaTime + "]";
	}
	
	

}
