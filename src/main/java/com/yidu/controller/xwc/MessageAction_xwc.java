package com.yidu.controller.xwc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.yidu.bean.xwc.Message_xwc;
import com.yidu.dao.xwc.MessageMapper_xwc;
/**
 * 
 *描述：用户基本信息的控制层
 * @author 夏望城
 *@date2018年12月19日上午10:53:36
 */
@Controller
public class MessageAction_xwc {
	
	@Autowired 
	private MessageMapper_xwc messageMapper_xwc;
	/**
	 * 
	 *功能：新增
	 * @param message_xwc
	 */
	@RequestMapping("insertMessage.action")
	public @ResponseBody String  insertMessage(@ModelAttribute Message_xwc message_xwc) {
		System.out.println(message_xwc.toString());
			messageMapper_xwc.insertMessage(message_xwc);
			return "ok";
	}

	
	
}
