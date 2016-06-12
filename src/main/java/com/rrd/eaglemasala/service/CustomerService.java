package com.rrd.eaglemasala.service;


import com.rrd.eaglemasala.commons.GridData;
import com.rrd.eaglemasala.domain.Customer;

public interface CustomerService {

    public boolean addCustomer(Customer customer);

    public GridData listCustomer();

    public void removeCustomer(Integer id);
}
