package com.bingheart.util.http;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * Created with logindemo.
 * Author: dreamer-1
 * Email: zhong--lei@outllok.com
 * Date: 2018/5/13
 * Time: 下午2:58
 * Description:
 */
@Configuration
public class LoginConfiguration implements WebMvcConfigurer {
    public void addInterceptors(InterceptorRegistry registry) {
        // 注册拦截器
        LoginInterceptor loginInterceptor = new LoginInterceptor();
        InterceptorRegistration loginRegistry = registry.addInterceptor(loginInterceptor);
        // 拦截路径
        loginRegistry.addPathPatterns("/*.html");
        // 排除路径
        /*
        loginRegistry.excludePathPatterns("/");
        loginRegistry.excludePathPatterns("/login.html");*/
        loginRegistry.excludePathPatterns("/");
        loginRegistry.excludePathPatterns("/login.html");
        loginRegistry.excludePathPatterns("/index.html");
        // 排除资源请求
        loginRegistry.excludePathPatterns("/**/*.css");
        loginRegistry.excludePathPatterns("/**/*.js");
        loginRegistry.excludePathPatterns("/**/*.png");
    }
}