package cm.cn.ftl.web.controller.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import cm.cn.ftl.domain.customer.Customer;
import cm.cn.ftl.service.test.TestServiceFeign;

@RestController
public class TestController {

	@Autowired
	private TestServiceFeign testServiceFeign;
	
	@RequestMapping(value="home",method = RequestMethod.GET)
	public String sayHi(){
		String name = testServiceFeign.sayHi();
		System.out.println(name);
		return name;
	}
	
	@RequestMapping(value="selectCustomer", method = RequestMethod.GET)
	public Customer selectCustomer(){
		Customer customer = testServiceFeign.selCustomer();
		System.out.println(customer.getCusname()+"\t"+customer.getEmail());
		return customer;
	}
	
}
