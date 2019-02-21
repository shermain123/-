package cm.cn.ftl.service.customer.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cm.cn.ftl.domain.customer.Customer;
import cm.cn.ftl.mapper.customer.CustomerMapper;
import cm.cn.ftl.service.customer.CustomerService;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerMapper customerMapper;
	
	@Override
	public Customer select() {
		Customer customer = customerMapper.select();
		return customer;
	}

}
