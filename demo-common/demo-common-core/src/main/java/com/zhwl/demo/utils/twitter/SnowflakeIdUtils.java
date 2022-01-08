package com.zhwl.demo.utils.twitter;

/**
 * @desc 使用雪花算法生成全局id
 * @author yxs
 * @date 2019年5月5日下午9:47:47
 */
public class SnowflakeIdUtils {
	private static SnowflakeIdWorker idWorker;
	static {
		// 使用静态代码块初始化 SnowflakeIdWorker
		idWorker = new SnowflakeIdWorker(1, 1);
	}

	public static String nextId() {
		return idWorker.nextId() + "";
	}

	public static String nextIdTime() {
		return idWorker.nextIdTime() + "";
	}

}
