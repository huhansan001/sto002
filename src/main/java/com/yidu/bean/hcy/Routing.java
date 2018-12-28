package com.yidu.bean.hcy;

import java.io.Serializable;

import org.springframework.stereotype.Component;
@Component
public class Routing implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String routingState;//运单状态
	private String shuStaTime;//运单时间
	public String getRoutingState() {
		return routingState;
	}
	public void setRoutingState(String routingState) {
		this.routingState = routingState;
	}
	public String getShuStaTime() {
		return shuStaTime;
	}
	public void setShuStaTime(String shuStaTime) {
		this.shuStaTime = shuStaTime;
	}
	@Override
	public String toString() {
		return "Routing [routingState=" + routingState + ", shuStaTime=" + shuStaTime + "]";
	}
	
}
