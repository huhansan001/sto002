package com.yidu.dao.gsp;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yidu.bean.xwc.Message_xwc;

@Repository
public interface MessageMapper_gsp {
         @Select("select * from message_xwc where phoneNumber=#{phoneNumber}")
         public List<Message_xwc> selectAll(@Param("phoneNumber")String phoneNumber);
}
