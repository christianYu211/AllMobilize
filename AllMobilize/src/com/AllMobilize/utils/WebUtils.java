package com.AllMobilize.utils;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;

import java.util.Map;

public class WebUtils {

    /**
     * 把Map中的值注入到对应的JavaBean属性中。
     * @param value
     * @param bean
     */
    public static <T> T copyParamToBean(Map value , T bean ){
        try {
            /**
             * 把所有请求的参数都注入到对象中
             */
            ConvertUtils.register(new DateConverter(null), java.util.Date.class);

            BeanUtils.populate(bean, value);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bean;
    }

    /**
     * 将字符串转换成int类型数据
     * @param strInt
     * @param defaultValue
     * @return
     */
    public static int parseInt(String strInt,int defaultValue){
        try {
            return Integer.parseInt(strInt);
        }catch (Exception e){
            // e.printStackTrace();
        }
        return defaultValue;
    }
}
