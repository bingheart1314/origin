package app;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan(basePackages = { "com.bingheart.controller","com.bingheart.service","com.bingheart.util"})
@MapperScan(basePackages = "com.bingheart.dao.mapp")
@EnableAutoConfiguration
public class APP {
	
	public static void main(String[] args) {
		SpringApplication.run(APP.class, args);
	}

}
