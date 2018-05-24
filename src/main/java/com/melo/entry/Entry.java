package com.melo.entry;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * 项目启动入口，配置包根路径
 * SpringApplication
 * Created by Ablert
 * on 2018/5/23.
 * @author Ablert
 */
@SpringBootApplication
@ComponentScan(value = "com.melo")
public class Entry {

    public static void main(String[] args) throws Exception {
        SpringApplication.run(Entry.class, args);
    }
}
