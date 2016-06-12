package com.rrd.eaglemasala.service.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rrd.eaglemasala.commons.GridData;
import com.rrd.eaglemasala.dao.api.CustomerDAO;
import com.rrd.eaglemasala.domain.Customer;
import com.rrd.eaglemasala.service.CustomerService;


@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerDAO customerDAO;

    @Transactional
    public boolean addCustomer(Customer customer) {
        return customerDAO.addCustomer(customer);
    }

    @Transactional
    public GridData listCustomer() {
    	GridData gridData = new GridData();
    	gridData.setListData(customerDAO.listCustomer());
        return gridData;
    }

    @Transactional
    public void removeCustomer(Integer id) {
        customerDAO.removeCustomer(id);
    }

    public CustomerDAO getCustomerDAO() {
        return customerDAO;
    }

    public void setCustomerDAO(CustomerDAO customerDAO) {
        this.customerDAO = customerDAO;
    }
}
