package com.yidu.service.xwc;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.yidu.dao.xwc.OrderManagement_xwc;

/**
 * 
 *描述：订单管理的业务层
 * @author 夏望城
 *@date2019年1月11日下午1:58:36
 */
@Service
public class OrderManagementService_xwc {

	
	@Autowired
	private OrderManagement_xwc orderManagement_xwc;
	
	
	public List<HashMap<String, Object>> orderAll(String orderStatus,String orderNumber){
		return  orderManagement_xwc.orderAll(orderStatus,orderNumber);
	};
}
