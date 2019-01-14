package com.yidu.controller.xwc;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yidu.service.xwc.OrderManagementService_xwc;


/**
 * 
 *描述：订单管理的控制层
 * @author 夏望城
 *@date2019年1月11日下午2:02:23
 */
@Controller
public class OrderManagementAction_xwc {

	
	@Autowired 
	private OrderManagementService_xwc orderManagementService_xwc;
	
	@RequestMapping("OrderManagementsss.action")
	public void orderAll(String orderStatus,String orderNumber,HttpServletRequest request,HttpServletResponse response,String type) throws IOException{
		request.getSession().setAttribute("orderAll",orderManagementService_xwc.orderAll(orderStatus, orderNumber));
		request.getSession().setAttribute("type",type);
		response.sendRedirect("FrontEnd/admin/dingdan.jsp");
	};
	
	@RequestMapping("OrderManagementssss.action")
	public void orderAlls(String orderStatus,String orderNumber,HttpServletRequest request,HttpServletResponse response,String type) throws IOException{
		request.getSession().setAttribute("orderAll",orderManagementService_xwc.orderAll(orderStatus, orderNumber));
		request.getSession().setAttribute("type",type);
		response.sendRedirect("FrontEnd/admin/BackHome.jsp");
	};
	
	
}
