package com.yidu.controller.hcy;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yidu.bean.hcy.WaybillNumber;
import com.yidu.service.hcy.IntegRationService;


/**
 * 
 * @Description: 运单查询控制层
 * @author: 胡春毅
 * @date 2018年12月22日 上午11:23:46
 * @version 1.0
 */
@Controller
public class WaybillNumberAction {
	@Autowired
	IntegRationService integRationService;
	@RequestMapping("selectWaybill.action")
	public @ResponseBody List<WaybillNumber>  selectWaybill(String values) {
		return integRationService.selectWaybill(values);
	}
}
