package com.hisoft.appinfo.tools;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * @program: MyProject
 * @description:
 * @author: dyj
 * @create: 2020-08-31 10:09:29
 **/
public class ConfigManager {
    private static ConfigManager configManager;
    /*private static ConfigManager configManager = new ConfigManager();*/
    private static Properties properties;
    private ConfigManager(){
        properties=new Properties();
        String configFile = "database.properties";
        InputStream is= ConfigManager.class.getClassLoader().getResourceAsStream(configFile);
        try {
            properties.load(is);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    /*静态内部类，既可以延迟加载，也线程安全*/
    public static class InitInstance{
        private static ConfigManager instance = new ConfigManager();
    }

    /*饿汉式，类一加载就创建对象完成初始化，没有延迟加载的特性，占内存资源，线程安全*/
    public static ConfigManager getInstance(){
        /*调用静态内部类里边创建的对象，不会类一加载就初始化，延迟加载*/
        configManager = InitInstance.instance;
        return configManager;
    }

    /*懒汉式，有延迟加载的特性，线程不安全，需要机上关键字synchronized*/
   /* public static synchronized ConfigManager getInstance(){
        if (configManager == null) {
            configManager = new ConfigManager();
        }
        return configManager;
    }*/
    public String getValue(String key){
        return properties.getProperty(key);
    }


}
