package com.yidu.service.xwc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.yidu.bean.xwc.Message_xwc;
import com.yidu.dao.xwc.MessageMapper_xwc;
/**
 * 
 *描述：用户基本信息的业务层
 * @author 夏望城
 *@date2018年12月19日上午10:42:59
 */
@Service
public class MessageService_xwc {

	@Autowired
	private MessageMapper_xwc messageMapper_xwc;
	/**
	 * 
	 *功能：新增
	 * @param message_xwc
	 */
	public void inserMessage(Message_xwc message_xwc) {
		 messageMapper_xwc.insertMessage(message_xwc);
	}
}
