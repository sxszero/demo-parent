package com.zhwl.demo.utils;

import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/**
 * @desc 图片工具类
 * @author yxs
 * @date 2021-11-02 17:59
 */
public class ImageUtils {

    /***
     * @desc 图片转 byte 数组
     * @author yxs
     * @update yxs
     * @date 2020/9/10 9:19
     * @param bImage 图片
     * @param format 格式
     * @return byte 数组
     */
    private static byte[] imageToBytes(BufferedImage bImage, String format) {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        try {
            ImageIO.write(bImage, format, out);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return out.toByteArray();
    }

    /***
     * @desc 图片转 base64 字符串
     * @author yxs
     * @update yxs
     * @date 2021-11-02 18:03
     * @param buffImg 图片
     * @return base64 字符串
     */
    public static String imageToBase64(BufferedImage buffImg){
        //注意此处拿到字节数据
        byte[] bytes = imageToBytes(buffImg,"jpg");
        //Base64编码
        String base64String = Base64Utils.encodeToString(bytes);
        return "data:image/jpg;base64,"+base64String;
    }

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
}
