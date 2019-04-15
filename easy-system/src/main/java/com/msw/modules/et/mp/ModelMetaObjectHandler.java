package com.msw.modules.et.mp;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * @author mashuangwei
 * @date 2019-01-22 14:28
 * @description:
 */
@Component
public class ModelMetaObjectHandler implements MetaObjectHandler {

    /**
     * metaObject是页面传递过来的参数的包装对象，不是从数据库取的持久化对象，因此页面传过来哪些值，metaObject里就有哪些值。
     */
    @Override
    public void insertFill(MetaObject metaObject) {
        Date now = new Date();
        Object createDate = this.getFieldValByName("create_time", metaObject);
        if(null == createDate){
            /**
             * 设置实体属性setter进去的值，优先级要高于自动填充的值。
             * 如果实体没有设置该属性，就给默认值，防止entity的setter值被覆盖。
             */
            this.setFieldValByName("create_time", now, metaObject);
        }
        Object modifyDate = this.getFieldValByName("update_time", metaObject);
        if(null == modifyDate){
            this.setFieldValByName("update_time", now, metaObject);
        }
    }

    @Override
    public void updateFill(MetaObject metaObject) {
        Date now = new Date();
        Object modifyDate = this.getFieldValByName("update_time", metaObject);
        if(null == modifyDate){
            this.setFieldValByName("update_time", now, metaObject);
            System.err.println(metaObject.toString());
        }
    }
}
