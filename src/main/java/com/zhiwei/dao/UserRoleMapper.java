package com.zhiwei.dao;

import com.zhiwei.pojo.Role;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserRoleMapper {
    List<Role> findByUserName(String userName);

}
