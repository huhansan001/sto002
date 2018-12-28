package com.yidu.service.hcy;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * 
 * @Description: 运单业务层
 * @author 胡春毅
 * @date 2018年12月28日 上午11:33:25
 * @version 1.0
 */

import com.yidu.bean.hcy.WaybillNumber;
import com.yidu.dao.hcy.IntegRationMapper;
@Service
public class IntegRationService {
	
	@Autowired
	IntegRationMapper integRationMapper;
	/**
	 * @查询运单
	 */
	public List<WaybillNumber> selectWaybill(String values) {
		return integRationMapper.selectWaybill(values);
	};
}
