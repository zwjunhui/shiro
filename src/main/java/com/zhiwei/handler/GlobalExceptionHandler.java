package com.zhiwei.handler;

import org.apache.shiro.authz.AuthorizationException;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * @Description: 全局的异常处理器.
 * @Author: wyjun
 * @UpdateDate: 2019/7/16 14:37
 * @Version: 1.0
 */
@ControllerAdvice
//ExceptionHandler, 方法注解, 作用于 Controller 级别. ExceptionHandler 注解为一个 Controler 定义一个异常处理器.
//
//ControllerAdvice, 类注解, 作用于 整个 Spring 工程. ControllerAdvice 注解定义了一个全局的异常处理器.
@Order(value = Ordered.HIGHEST_PRECEDENCE)
//Spring将根据其订单值注入相同类型的自动连接bean。
public class GlobalExceptionHandler {
    @ExceptionHandler(value = AuthorizationException.class)
    public String handleAuthorizationException() {
        return "403";
    }
}
