package com.zhiwei.pojo;

import lombok.*;

import java.io.Serializable;

/**
 * @Description: 角色实体
 * @Author: wyjun
 * @UpdateDate: 2019/7/16 11:04
 * @Version: 1.0
 */
@Data
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Role implements Serializable {

    private static final long serialVersionUID = -2025811456409290651L;

    private Integer id;
    /**
     * 角色名称
     */
    private String name;
    /**
     * 角色描述
     */
    private String memo;
}
