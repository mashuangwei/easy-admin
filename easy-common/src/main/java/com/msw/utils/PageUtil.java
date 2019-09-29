package com.msw.utils;

import com.baomidou.mybatisplus.core.metadata.IPage;
import org.springframework.data.domain.Page;

import java.util.*;

/**
 * 分页工具
 * @author mashuangwei
 * @date 2018-12-10
 */
public class PageUtil  extends cn.hutool.core.util.PageUtil {

    /**
     * List 分页
     * @param page
     * @param size
     * @param list
     * @return
     */
    public static List toPage(int page, int size , List list) {
        int fromIndex = page * size;
        int toIndex = page * size + size;

        if(fromIndex > list.size()){
            return new ArrayList();
        } else if(toIndex >= list.size()) {
            return list.subList(fromIndex,list.size());
        } else {
            return list.subList(fromIndex,toIndex);
        }
    }

    /**
     * Page 数据处理，预防redis反序列化报错
     * @param page
     * @return
     */
    public static Map toPage(Page page) {
        Map map = new HashMap(2);
        map.put("content",page.getContent());
        map.put("totalElements",page.getTotalElements());
        return map;
    }

    public static Map toPage(List list, long count) {
        Map map = new HashMap(2);
        map.put("content",list);
        map.put("totalElements",count);
        return map;
    }

    /**
     * @param object
     * @param totalElements
     * @return
     */
    public static Map toPage(Object object, Object totalElements) {
        Map map = new HashMap();

        map.put("content",object);
        map.put("totalElements",totalElements);

        return map;
    }

    public static Map toPage(List list) {
        Map map = new HashMap(2);
        map.put("content",list);
        return map;
    }

    public static Map toPage(Object object) {
        Map map = new HashMap(2);
        map.put("content",object);
        return map;
    }

    public static Map toPage(IPage page) {
        Map map = new HashMap(2);
        map.put("content",page.getRecords());
        map.put("totalElements",page.getTotal());
        return map;
    }
}
