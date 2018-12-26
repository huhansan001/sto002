package com.yidu.controller.czq;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yidu.bean.czq.ReceiptWorkorder_czq;
import com.yidu.service.czq.ReceiptWorkorder_czqService;

/**
 * 
 * describe:收件员工单action
 * function:
 * @author Quite
 * @date 2018年12月12日上午11:18:33
 */
@Controller
public class ReceiptWorkorder_czqAction {
	@Autowired
	private ReceiptWorkorder_czqService receiptWorkorder_czqService;//调用收件员工单的service
	/**
	 * 
	 * function:查询出所有收件员工单 并且转为json数据
	 * name :Quiet
	 * @return
	 * @date 2018年12月12日上午11:21:27
	 */
	@RequestMapping("selectReceiptWorkorder_czqAll.action")
	public @ResponseBody Map<String, Object> selectReceiptWorkorder_czqAll(){
		return receiptWorkorder_czqService.selectReceiptWorkorder_czqAll();
	}
	/**
	 * 
	 * function:新增收件员工单
	 * name :Quiet
	 * @param receiptWorkorder_czq
	 * @return
	 * @date 2018年12月12日上午11:22:23
	 */
	@RequestMapping("insertReceiptWorkorder_czq.action")
	public @ResponseBody String insertReceiptWorkorder_czq(@ModelAttribute ReceiptWorkorder_czq receiptWorkorder_czq) {
		int i = receiptWorkorder_czqService.insertReceiptWorkorder_czq(receiptWorkorder_czq);
		String temp = "";
		temp=i>0?"ok":"no";
		return temp;
	}
	
	/**
	 * 
	 * function:修改收件员工单
	 * name :Quiet
	 * @param receiptWorkorder_czq
	 * @return
	 * @date 2018年12月14日下午2:23:29
	 */
	@RequestMapping("updateReceiptWorkorder_czq.action")
	public @ResponseBody String updateReceiptWorkorder_czq(@ModelAttribute ReceiptWorkorder_czq receiptWorkorder_czq) {
		System.out.println(receiptWorkorder_czq);
		int i=receiptWorkorder_czqService.updateReceiptWorkorder_czq(receiptWorkorder_czq);
		String temp = "";
		temp=i>0?"ok":"no";
		return temp;
	}
	
	/**
	 * 
	 * function:删除收件员工单
	 * name :Quiet
	 * @param receiptWorkorder_czq
	 * @return
	 * @date 2018年12月14日下午2:23:46
	 */
	@RequestMapping("deleteReceiptWorkorder_czq.action")
	public @ResponseBody String deleteReceiptWorkorder_czq(@ModelAttribute ReceiptWorkorder_czq receiptWorkorder_czq) {
		System.out.println(receiptWorkorder_czq);
		int i = receiptWorkorder_czqService.deleteReceiptWorkorder_czq(receiptWorkorder_czq);
		String temp = "";
		temp=i>0?"ok":"no";
		System.out.println("删除执行结果:"+temp+"-----"+i);
		return temp;
	}
	
	@RequestMapping("updateReceiptWorkorder_czq_reClosePackage.action")
	public @ResponseBody void updateReceiptWorkorder_czq_reClosePackage(@ModelAttribute ReceiptWorkorder_czq receiptWorkorder_czq ) {
		System.out.println("传过来的参数："+receiptWorkorder_czq);
		String temp = receiptWorkorder_czq.equals("已合包")?"未合包":"已合包";
		System.out.println("应该带入的值:"+temp);
	}

}
