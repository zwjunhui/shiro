package com.zhiwei.pojo;

import java.util.HashMap;
import java.util.Map;
/**
 * @Description:    Response返回实体
 * @Author:         Weijunhui
 * @Date:     2019/7/16 15:58
 * @Version:        1.0
 */
public class ResponseBo extends HashMap<String, Object> {
    public ResponseBo() {
        put("code", 200);
        put("msg", "操作成功");
    }

    public static ResponseBo error() {
        return error(1, "操作失败");
    }

    public static ResponseBo error(String msg) {
        return error(500, msg);
    }

    public static ResponseBo error(int code, String msg) {
        ResponseBo ResponseBo = new ResponseBo();
        ResponseBo.put("code", code);
        ResponseBo.put("msg", msg);
        return ResponseBo;
    }

    public static ResponseBo ok(String msg) {
        ResponseBo ResponseBo = new ResponseBo();
        ResponseBo.put("msg", msg);
        return ResponseBo;
    }

    public static ResponseBo ok(Map<String, Object> map) {
        ResponseBo ResponseBo = new ResponseBo();
        ResponseBo.putAll(map);
        return ResponseBo;
    }

    public static ResponseBo ok() {
        return new ResponseBo();
    }

    @Override
    public ResponseBo put(String key, Object value) {
        super.put(key, value);
        return this;
    }
}
