package cm.cn.ftl;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
@MapperScan("cm.cn.ftl.mapper")
@ServletComponentScan
public class MemberApplication {

	public static void main(String[] args) {
		
		SpringApplication.run(MemberApplication.class, args);
	}

}
