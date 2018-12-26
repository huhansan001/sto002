package com.yidu.service.zsh;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.yidu.bean.zsh.userPlace_wsq_zsh;
import com.yidu.bean.zsh.userSender_zsh;
import com.yidu.dao.zsh.userPlace_wsqjie_zsh;
/**
 * 
 *描述：用户下单（寄件人）Service
 * @author zhoushihao
 * @date2018年12月19日上午10:06:48
 */
@Service
public class userPlace_wsqService_zsh {
	
	@Autowired
	private userPlace_wsqjie_zsh userPlace_wsq;
	/**
	 * <!-- 新增用户下单信息（寄件人）信息 -->
	 * @param userPlace
	 */
	public int insertUserPlace_wsq(userPlace_wsq_zsh userPlace) {
		return userPlace_wsq.insertUserPlace_wsq(userPlace);
	}
	/**
	 *	<!-- 查询用户地址中心（寄件）信息  -->
	 * @return
	 */
	public List<userSender_zsh> selectUserSender(){
		
		return userPlace_wsq.selectUserSender();
	}
}
