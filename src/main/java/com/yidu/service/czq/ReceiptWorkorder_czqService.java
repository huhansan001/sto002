package com.yidu.service.czq;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yidu.bean.czq.ReceiptWorkorder_czq;
import com.yidu.dao.czq.ReceiptWorkorder_czqMapper;

/**
 * 
 * describe:收件员工单service
 * function:
 * @author Quite
 * @date 2018年12月12日上午11:19:07
 */
@Service
public class ReceiptWorkorder_czqService {
	@Autowired
	private ReceiptWorkorder_czqMapper receiptWorkorder_czqMapper;
	/**
	 * 
	 * function:查询出所有收件员工单并将其存入映射
	 * name :Quiet
	 * @return
	 * @date 2018年12月12日上午11:19:29
	 */
	public Map<String, Object> selectReceiptWorkorder_czqAll(){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("code", 0);
		map.put("msg", "");
		map.put("count", receiptWorkorder_czqMapper.selectReceiptWorkorder_czqAll().size());
		map.put("data", receiptWorkorder_czqMapper.selectReceiptWorkorder_czqAll());
		return map;
	}
	/**
	 * 
	 * function:新增收件员工单
	 * name :Quiet
	 * @param receiptWorkorder_czq
	 * @return
	 * @date 2018年12月12日下午1:10:53
	 */
	public int insertReceiptWorkorder_czq(ReceiptWorkorder_czq receiptWorkorder_czq) {
		return receiptWorkorder_czqMapper.insertReceiptWorkorder_czq(receiptWorkorder_czq);
	}
	
	/**
	 * 
	 * function:修改收件员工单
	 * name :Quiet
	 * @param receiptWorkorder_czq
	 * @return
	 * @date 2018年12月14日上午9:05:41
	 */
	public int updateReceiptWorkorder_czq(ReceiptWorkorder_czq receiptWorkorder_czq) {
		return receiptWorkorder_czqMapper.updateReceiptWorkorder_czq(receiptWorkorder_czq);
	}
	
	/**
	 * 
	 * function:删除收件员工单
	 * name :Quiet
	 * @param receiptWorkorder_czq
	 * @return
	 * @date 2018年12月14日上午9:11:00
	 */
	public int deleteReceiptWorkorder_czq(ReceiptWorkorder_czq receiptWorkorder_czq) {
		int i = receiptWorkorder_czqMapper.deleteReceiptWorkorder_czq(receiptWorkorder_czq);
		System.out.println(i);
		return i;
	}
}
