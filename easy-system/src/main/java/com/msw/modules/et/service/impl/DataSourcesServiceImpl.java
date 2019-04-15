package com.msw.modules.et.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mongodb.MongoClient;
import com.msw.modules.et.entity.DataSources;
import com.msw.modules.et.mapper.DataSourcesMapper;
import com.msw.modules.et.service.DataSourcesService;
import com.msw.modules.et.util.MongodbJdbcUtil;
import com.msw.modules.et.util.MysqlJdbcUtil;
import com.msw.modules.et.util.OracleJdbcUtil;
import com.msw.modules.et.util.RedisJdbcUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import redis.clients.jedis.Jedis;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * @author mashuangwei
 * @date 2019-01-23 10:48
 * @description:
 */
@Slf4j
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class DataSourcesServiceImpl extends ServiceImpl<DataSourcesMapper, DataSources> implements DataSourcesService {
    @Override
    public int add(DataSources dataSources) {
        return baseMapper.insert(dataSources);
    }

    @Override
    public int update(DataSources dataSources) {
        return baseMapper.updateById(dataSources);
    }

    @Override
    public int delete(Long id) {
        return baseMapper.deleteById(id);
    }

    @Override
    public IPage<DataSources> query(Page<DataSources> page, DataSources dataSources) {
        QueryWrapper<DataSources> wrapper = new QueryWrapper<>();
        wrapper.like("datasource_name", dataSources.getDatasource_name() == null ? "" : dataSources.getDatasource_name());
        wrapper.orderByDesc("update_time");
        return baseMapper.selectPage(page, wrapper);
    }

    @Override
    public boolean checkConnect(DataSources dataSources) {
        String type = dataSources.getType();
        switch (type) {
            case "mysql": {
                return checkMysqlConnect(dataSources);
            }
            case "oracle": {
                return checkOracleConnect(dataSources);
            }
            case "redis": {
                return checkRedisConnect(dataSources);
            }
            case "mongodb": {
                return checkMongoDbConnect(dataSources);
            }
            default: {
                return false;
            }
        }
    }

    private Boolean checkMongoDbConnect(DataSources dataSources){
        MongodbJdbcUtil mongodbJdbcUtil = new MongodbJdbcUtil();
        MongoClient mongodbClient = mongodbJdbcUtil.getMongodbClient(dataSources.getUrl(), dataSources.getPort());
        if (null != mongodbClient) {
            return true;
        }
        return false;
    }

    private boolean checkRedisConnect(DataSources dataSources) {
        RedisJdbcUtil redisJdbcUtil = new RedisJdbcUtil();
        try {
            Jedis jedis = redisJdbcUtil.jedis(dataSources.getUrl(), dataSources.getPort(), dataSources.getPassword(), 0);
            if (null != jedis) {
                jedis.close();
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            log.error("redis检测连接异常");
        }

        return false;
    }

    private boolean checkOracleConnect(DataSources dataSources) {
        OracleJdbcUtil oracleJdbcUtil = new OracleJdbcUtil();
        Connection connection = null;
        try {
            connection = oracleJdbcUtil.getConnection(dataSources.getUrl(), dataSources.getUsername(),
                    dataSources.getPassword(), dataSources.getPort());
        } catch (SQLException e) {
            log.error("oralce数据库连接异常");
            e.printStackTrace();
        }
        try {
            if (null != connection) {
                oracleJdbcUtil.closeAll();
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    private boolean checkMysqlConnect(DataSources dataSources) {
        MysqlJdbcUtil mysqlJdbcUtil = new MysqlJdbcUtil();
        if (null != mysqlJdbcUtil.getConnection(dataSources.getUrl(), dataSources.getUsername(),
                dataSources.getPassword(), dataSources.getPort(), dataSources.getDatabase_name())) {
            try {
                mysqlJdbcUtil.releaseConn();
            } catch (SQLException e) {
                log.error("关联数据库连接异常");
                e.printStackTrace();
            }
            return true;
        }
        return false;
    }
}
