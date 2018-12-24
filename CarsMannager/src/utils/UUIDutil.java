package utils;

import java.util.UUID;

public class UUIDutil {
    public static String getUUIDFileName(String fileName){
        //获取后缀名
        int index = fileName.lastIndexOf(".");
        String extention = fileName.substring(index);
        String uuidFileName = UUID.randomUUID().toString().replace("-","") + extention;
        return uuidFileName;
    }
    //生成唯一
    public static String getUUIDuid(){
        String uid = UUID.randomUUID().toString().replace("-","");
        return uid;
    }
}
