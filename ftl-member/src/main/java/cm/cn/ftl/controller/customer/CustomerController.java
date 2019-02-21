package cm.cn.ftl.controller.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cm.cn.ftl.domain.customer.Customer;
import cm.cn.ftl.service.customer.CustomerService;

@RestController
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/selCustomer")
	public Customer selCustomer(){
		return customerService.select();
	}
	
	
}
