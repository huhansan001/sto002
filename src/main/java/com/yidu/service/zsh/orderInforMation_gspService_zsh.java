package com.yidu.service.zsh;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yidu.bean.zsh.address_lql_zsh;
import com.yidu.bean.zsh.orderInforMation_gsp_zsh;
import com.yidu.bean.zsh.userPlace_wsq_zsh;
import com.yidu.dao.zsh.orderInforMation_gspjie_zsh;
/**
 * 
 *描述：用户下单（收件人）Service
 * @author zhoushihao
 * @date2018年12月19日上午10:07:17
 */
@Service
public class orderInforMation_gspService_zsh {
	
	@Autowired
	private orderInforMation_gspjie_zsh orderInforMation_gsp;
	/**
	 * 	<!-- 新增用户下单信息（收件人）信息 -->
	 * @param orderInforMation
	 */
	/*public int insertOrderInforMation_gsp(orderInforMation_gsp_zsh orderInforMation) {
		return orderInforMation_gsp.insertOrderInforMation_gsp(orderInforMation);
	}*/
	/**
	 * <!-- 查询用户地址中心（收件）信息   -->
	 * @return
	 */
	public List<address_lql_zsh> selectAddress_lql(){
		return orderInforMation_gsp.selectAddress_lql();
	}
}
