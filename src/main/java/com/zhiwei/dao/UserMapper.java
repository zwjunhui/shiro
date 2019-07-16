package com.zhiwei.dao;

import com.zhiwei.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * @Description: java类作用描述
 * @Author: wyjun
 * @UpdateDate: 2019/7/15 15:23
 * @Version: 1.0
 */
@Mapper
public interface  UserMapper {
    User findByUserName(@Param("userName")String userName);

}
