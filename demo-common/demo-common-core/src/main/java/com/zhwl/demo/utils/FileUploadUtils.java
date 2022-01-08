package com.zhwl.demo.utils;

import org.apache.commons.io.FilenameUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

/**
 * @author yxs
 * @desc 文件上传工具类
 * @date 2021-11-13 10:54
 */
public class FileUploadUtils {

    /**
     * 资源映射路径 前缀
     */
    public static final String RESOURCE_PREFIX = "/profile";
    /**
     * 默认大小 50M
     */
    public static final long DEFAULT_MAX_SIZE = 50 * 1024 * 1024;

    /***
     * @desc 上传文件是否为图片
     * @author yxs
     * @update yxs
     * @date 2020/4/25 8:50
     * @param multipartFile 上传文件
     * @return true、false
     */
    public static boolean uploadFileIsImage(MultipartFile multipartFile) {
        if (multipartFile == null) return false;
        String contentType = multipartFile.getContentType();
        return contentType != null && contentType.contains("image");
    }

    /***
     * @desc 上传文件
     * @author yxs
     * @update yxs
     * @date 2021-11-13 10:56
     * @param baseDir 根路径
     * @param relativePath 相对路径
     * @param file 文件
     * @return 路径
     */
    public static final String upload(String baseDir, String relativePath, MultipartFile file) throws IOException {
        long size = file.getSize();
        if (DEFAULT_MAX_SIZE != -1 && size > DEFAULT_MAX_SIZE) {
            throw new IOException("上传文件超过 " + DEFAULT_MAX_SIZE);
        }
        String fileName = extractFilename(file);

        baseDir = baseDir + relativePath;
        File dest = new File(baseDir + "/" + fileName);
        if (!dest.getParentFile().exists()) {
            dest.getParentFile().mkdirs();
        }
        file.transferTo(dest);
        return RESOURCE_PREFIX + relativePath + "/" + fileName;
    }

    /**
     * 编码文件名
     */
    public static final String extractFilename(MultipartFile file) {
        String extension = getExtension(file);
        String fileName = UUID.randomUUID().toString() + "." + extension;
        return fileName;
    }

    /**
     * 获取文件名的后缀
     *
     * @param file 表单文件
     * @return 后缀名
     */
    public static final String getExtension(MultipartFile file) {
        String extension = FilenameUtils.getExtension(file.getOriginalFilename());
        if (StringUtils.isEmpty(extension)) {
            extension = getExtension(file.getContentType());
        }
        return extension;
    }

    public static final String IMAGE_PNG = "image/png";
    public static final String IMAGE_JPG = "image/jpg";
    public static final String IMAGE_JPEG = "image/jpeg";
    public static final String IMAGE_BMP = "image/bmp";
    public static final String IMAGE_GIF = "image/gif";

    public static String getExtension(String prefix) {
        switch (prefix) {
            case IMAGE_PNG:
                return "png";
            case IMAGE_JPG:
                return "jpg";
            case IMAGE_JPEG:
                return "jpeg";
            case IMAGE_BMP:
                return "bmp";
            case IMAGE_GIF:
                return "gif";
            default:
                return "";
        }
    }


}
