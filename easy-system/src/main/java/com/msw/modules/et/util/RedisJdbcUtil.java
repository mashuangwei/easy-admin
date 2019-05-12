package com.msw.modules.et.util;

import redis.clients.jedis.Jedis;

public class RedisJdbcUtil {
    private Jedis jedis;
    public Jedis jedis(String host, int port, String password, int index){
        jedis = new Jedis(host, port, 30);
        jedis.connect();
        jedis.auth(password);
        jedis.select(index);
        return jedis;
    }

    public void close() {
        if (null != jedis){
            jedis.close();
        }
    }

    public String set(String key, String value) {
        return jedis.set(key, value);
    }

    public String get(String key) {
        return jedis.get(key);
    }

    public Long delete(String key) {
        return jedis.del(key);
    }
}
