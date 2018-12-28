package com.yidu.dao.zsh;

import java.util.List;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import com.yidu.bean.zsh.orderInforMation_gsp_zsh;
import com.yidu.bean.zsh.serviceTable_xwc_zsh;
import com.yidu.bean.zsh.userPlace_wsq_zsh;
/**
 * 
 *描述：业务表Dao
 * @author zhoushihao
 * @date2018年12月26日上午10:02:31
 */
@Repository
public interface serviceTable_xwc_zshMap {
	/**
	 * 新增业务表的信息
	 * @param serviceTable_xwc
	 * @return
	 */
	@Insert("INSERT INTO serviceTable_xwc(orderNumber,addresseeId,orderStatus,remarks,customer) VALUES(#{orderNumber},#{addresseeId},#{orderStatus},#{remarks},#{customer})")
	public int insertserviceTable_xwc(serviceTable_xwc_zsh serviceTable_xwc);
	/**
	 * 查询用户下单表（收件人）的信息
	 * @return
	 */
	@Select("select * from orderInformation_gsp")
	public List<orderInforMation_gsp_zsh>  selectorderInforMation_gsp_zsh();
	
}
