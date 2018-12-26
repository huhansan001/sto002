package com.yidu.dao.czq;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.yidu.bean.czq.ReceiptWorkorder_czq;
/**
 * 
 * describe:收件员工单dao
 * function:
 * @author Quite
 * @date 2018年12月12日上午11:15:08
 */
@Repository
public interface ReceiptWorkorder_czqMapper {
	/**
	 * 
	 * function:查询所有的收件员工单
	 * name :Quiet
	 * @return
	 * @date 2018年12月12日上午11:14:59
	 */
	@Select("SELECT * FROM receiptWorkorder_czq")
	public List<ReceiptWorkorder_czq> selectReceiptWorkorder_czqAll();
	/**
	 * 
	 * function:新增收件员工单
	 * name :Quiet
	 * @return
	 * @date 2018年12月12日上午11:40:50
	 */
	@Insert("INSERT INTO receiptWorkorder_czq(empNo,orderNumber,locals,deliveryArea,reTime,reClosePackage) VALUE(#{empNo},#{orderNumber},#{locals},#{deliveryArea},#{reTime},#{reClosePackage})")
	public int insertReceiptWorkorder_czq(ReceiptWorkorder_czq receiptWorkorder_czq);
	
	/**
	 * 
	 * function:修改收件员工单信息表！ 
	 * name :Quiet
	 * @param receiptWorkorder_czq
	 * @return
	 * @date 2018年12月14日上午8:40:51
	 */
	@Update("UPDATE receiptWorkorder_czq SET empNo=#{empNo},orderNumber=#{orderNumber},locals=#{locals},deliveryArea=#{deliveryArea},reTime=#{reTime},reClosePackage=#{reClosePackage} WHERE receiptId=#{receiptId}")
	public int updateReceiptWorkorder_czq(ReceiptWorkorder_czq receiptWorkorder_czq);
	
	/**
	 * 
	 * function:删除收件人工单表的数据！
	 * name :Quiet
	 * @param receiptWorkorder_czq
	 * @return
	 * @date 2018年12月14日上午9:01:13
	 */
	@Delete("DELETE FROM receiptWorkorder_czq WHERE receiptId=#{receiptId}")
	public int deleteReceiptWorkorder_czq(ReceiptWorkorder_czq receiptWorkorder_czq);
	
	/*@Update("UPDATE receiptWorkorder_czq SET reClosePackage=#{reClosePackage where }")
	public int updateReceiptWorkorder_czq_reClosePackage(ReceiptWorkorder_czq receiptWorkorder_czq);*/
}
