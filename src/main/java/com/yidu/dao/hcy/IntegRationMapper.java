package com.yidu.dao.hcy;


import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yidu.bean.hcy.WaybillNumber;
/**
 * 
 * @Description: 运单持久层
 * @author 胡春毅
 * @date 2018年12月28日 上午11:36:48
 * @version 1.0
 */
@Repository
public interface IntegRationMapper {
	/**
	 * @Explain 查询运单
	 * @return
	 */
	@Select("SELECT waybillNumber,routingState,shuStaTime,shuttleState\r\n" + 
			"FROM routing_hcy AS rou,shuttle_hcy AS shu,comPackage_hcy AS comPack,package_lyq AS pack\r\n" + 
			"WHERE rou.shuttleId=shu.shuttleId AND shu.shuttleId=comPack.shuttleId \r\n" + 
			"AND comPack.packageId=pack.packageId AND pack.waybillNumber=#{values}")
	public List<WaybillNumber> selectWaybill(@Param("values") String values);
}
