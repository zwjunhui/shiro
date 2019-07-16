package com.zhiwei.pojo;

import lombok.*;

import java.io.Serializable;

/**
 * @Description:  权限实体
 * @Author: wyjun
 * @UpdateDate: 2019/7/16 11:05
 * @Version: 1.0
 */
@Data
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Permission implements Serializable {

    private static final long serialVersionUID = -9157246564075581424L;

    private Integer id;
    private String url;
    private String name;
}
