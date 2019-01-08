package com.yidu.controller.gsp;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yidu.bean.xwc.Message_xwc;
import com.yidu.dao.gsp.MessageMapper_gsp;

@Controller
public class MessageAction_gsp {
   @Autowired
   private MessageMapper_gsp messageMapper_gsp;
   @RequestMapping("selectAll.action")
   public String selectAll(Model model,String phoneNumber) {
	   List<Message_xwc> list = messageMapper_gsp.selectAll(phoneNumber);
	   model.addAttribute("list", list);
	   return"FrontEnd/admin/account";
   }
}
