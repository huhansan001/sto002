package com.yidu.service.zsh;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.yidu.bean.zsh.orderInforMation_gsp_zsh;
import com.yidu.bean.zsh.serviceTable_xwc_zsh;
import com.yidu.dao.zsh.serviceTable_xwc_zshMap;
/**
 * 
 *描述：业务表Service
 * @author zhoushihao
 * @date2018年12月26日上午10:02:19
 */
@Service
public class serviceTable_xwcService_zsh {
	
	@Autowired
	private serviceTable_xwc_zshMap serviceTable_xwc_zsh;
	/**
	 * 新增业务表的信息
	 * @param serviceTable_xwc
	 * @param ordersId 
	 * @return
	 */
	public int serviceTable_xwc(serviceTable_xwc_zsh serviceTable_xwc) {
		//获取随机对象
		Random random = new Random();
		//返回随机数t
		int s = random.nextInt(1000000)+100000;
	
		//查询用户下单表（收件人）的信息
		List<orderInforMation_gsp_zsh> list=serviceTable_xwc_zsh.selectorderInforMation_gsp_zsh();
		int temp = 0;
		/*List<Integer> ArrList = new ArrayList<>();*/
		//新增业务表的信息
		for (orderInforMation_gsp_zsh orderInforMation_gsp_zsh : list) {
			/*ArrList.add(orderInforMation_gsp_zsh.getOrdersId());*/
			if(temp < orderInforMation_gsp_zsh.getOrdersId()) {
				temp = orderInforMation_gsp_zsh.getOrdersId();
			}
		}
		serviceTable_xwc.setOrderNumber(String.valueOf(s));
		serviceTable_xwc.setOrdersId(temp);
		serviceTable_xwc.setOrderStatus("处理中");
		serviceTable_xwc.setCustomer("1");
		return serviceTable_xwc_zsh.insertserviceTable_xwc(serviceTable_xwc);
	}
	
	
}
