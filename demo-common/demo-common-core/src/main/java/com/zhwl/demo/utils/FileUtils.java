package com.zhwl.demo.utils;

import org.springframework.web.multipart.MultipartFile;

/**
 * @desc 文件工具类
 * @author yxs
 * @date 2021-02-26 9:40
 */
public class FileUtils {
    /**
     * 是否为图片
     * @param multipartFile
     * @return 是否为图片
     */
    public static boolean uploadFileIsImage(MultipartFile multipartFile) {
        if (multipartFile == null) return false;
        String contentType = multipartFile.getContentType();
        return contentType != null && contentType.contains("image");
    }

    /**
     * 是否为视频
     * @param multipartFile
     * @return 是否为视频
     */
    public static boolean uploadFileIsVideo(MultipartFile multipartFile) {
        if (multipartFile == null) return false;
        String contentType = multipartFile.getContentType();
        return contentType != null && contentType.contains("video");
    }

    /**
     * 是否为音频
     * @param multipartFile
     * @return 是否为音频
     */
    public static boolean uploadFileIsAudio(MultipartFile multipartFile) {
        if (multipartFile == null) return false;
        String contentType = multipartFile.getContentType();
        return contentType != null && contentType.contains("audio");
    }
}
