package cm.cn.ftl.service.test;

import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cm.cn.ftl.domain.customer.Customer;

@FeignClient(value = "service-member")
public interface TestServiceFeign {

	@RequestMapping(value = "home",method = RequestMethod.GET)
	String sayHi();
	
	@RequestMapping(value = "selCustomer",method = RequestMethod.GET)
	Customer selCustomer();
	
}
