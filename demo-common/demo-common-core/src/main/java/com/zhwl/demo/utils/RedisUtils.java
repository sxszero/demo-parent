package com.zhwl.demo.utils;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.redis.core.RedisCallback;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import java.util.Objects;
import java.util.concurrent.TimeUnit;

/**
 * @desc Redis工具类
 * @author yxs
 * @date 2019/3/22 11:54
 */
@Component
@Slf4j
public class RedisUtils {
    @Autowired
    @Qualifier(value = "redisTemplate")
    private RedisTemplate<String, Object> redisTemplate;

    /*============================================= Common =========================================================*/

    /***
     * @desc 删除
     * @author yxs
     * @update yxs
     * @date 2020/7/9 9:52
     * @param key 键名
     * @return 是否删除成功 true成功 false失败
     */
    public Boolean delKey(String key) {
        Boolean result = redisTemplate.delete(key);
        return result;
    }

    /***
    * @desc 查询超时时间
    * @author yxs
    * @update yxs
    * @date 2020/9/4 10:11
    * @param key 键名
    * @return 超时时间
    */
    public Long getExpire(String key){
        return redisTemplate.getExpire(key);
    }

    /***
     * @desc 检查是否存在
     * @author yxs
     * @update yxs
     * @date 2022-01-02 20:36
     * @param key 键名
     * @return 是否存在
     */
    public boolean hasKey(String key){
        return redisTemplate.hasKey(key);
    }

    /*============================================= Value ==========================================================*/
    /***
     * @desc 设置value值和超时时间
     * @author yxs
     * @date 2019/3/22 12:04
     * @param key
     * @param value
     * @param timeout 超时时间（单位秒），为null或者为0不超时或者不设置偏移量
     */
    public void valueSet( String key , Object value, Long timeout ) {
        if (timeout == null || timeout == 0) {
            redisTemplate.opsForValue().set(key, value);
        } else {
            redisTemplate.opsForValue().set(key, value, timeout, TimeUnit.SECONDS);
        }
    }

    /***
     * @desc 获取Key的value值
     * @author yxs
     * @date 2019/3/23 16:37
     * @param key
     * @return value值，不存在时返回null
     */
    public Object valueGet( String key ){
        return redisTemplate.opsForValue().get(key);
    }

    /*================================= 分布式锁 ============================================*/
    /***
     * @desc 设置锁
     * @author yxs
     * @update yxs
     * @date 2022-01-02 14:16
     * @param key
     * @param lockTime 时间
     * @return
     */
    public boolean lock(String key,long lockTime){
        return set(key,lockTime);
    }

    private boolean set(String key,long lockTime){
        return (Boolean) redisTemplate.execute((RedisCallback) collection->{
            long time=System.currentTimeMillis()+lockTime+1;
            Boolean aBoolean = collection.setNX(key.getBytes(), String.valueOf(time).getBytes());

            if(aBoolean){
                return true;
            }
            else{
                byte[] bytes = collection.get(key.getBytes());

                if(Objects.nonNull(bytes)&&bytes.length>0){
                    long expireTime=Long.valueOf(new String(bytes));

                    //如果锁过期
                    if(expireTime<System.currentTimeMillis()){
                        byte[] set = collection.getSet(key.getBytes(), String.valueOf(expireTime + System.currentTimeMillis() + 1).getBytes());
                        return Long.parseLong(new String(set))<System.currentTimeMillis();
                    }
                }
            }
            return false;
        });
    }

}
