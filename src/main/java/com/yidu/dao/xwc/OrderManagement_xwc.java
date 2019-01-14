package com.yidu.dao.xwc;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * 
 *描述：订单管理
 * @author 夏望城
 *@date2019年1月11日下午1:43:30
 */
@Repository
public interface OrderManagement_xwc {

	/*@Select("SELECT  s.orderNumber,u.senderAddress ,u.uplaceName,o.sendsAddress,o.userName,s.orderStatus,o.orderTime \r\n" + 
			"		FROM orderInformation_gsp o,serviceTable_xwc s,userplace_wsq u\r\n" + 
			"		WHERE o.uplaceSenderId=u.uplaceSenderId AND s.ordersId=o.ordersId")*/
	public List<HashMap<String,Object>> orderAll(@Param("orderStatus")String orderStatus,@Param("orderNumber")String orderNumber);
	
}
