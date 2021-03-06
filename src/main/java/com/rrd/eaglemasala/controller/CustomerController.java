package com.rrd.eaglemasala.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.rrd.eaglemasala.commons.FilterCriteria;
import com.rrd.eaglemasala.commons.GridData;
import com.rrd.eaglemasala.commons.JQGridJSON;
import com.rrd.eaglemasala.commons.JQGridRow;
import com.rrd.eaglemasala.domain.Customer;
import com.rrd.eaglemasala.service.CustomerService;

@Controller
public class CustomerController {

    @Autowired
    private CustomerService customerService;
  
   
    private static final Logger LOGGER = LoggerFactory.getLogger(LoginController.class);
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String loadAddCustomer(Map<String, Object> map) {
        map.put("customer", new Customer());
        return "customer";
    }
    
    @RequestMapping(value="/list",produces="application/json")
    public @ResponseBody String listCustomer(Map<String, Object> map) {
    	/*Map<String,List<Customer>> mapp=new HashMap<>();
        mapp.put("customerList", customerService.listCustomer());
        
        CustomerJsonObject customerJsonObject = new CustomerJsonObject();
		//Set Total display record
        customerJsonObject.setiTotalDisplayRecords(500);
		//Set Total record
        customerJsonObject.setiTotalRecords(500);
        customerJsonObject.setAaData(customerService.listCustomer());
		
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String json2 = gson.toJson(customerJsonObject);*/
		
		
		FilterCriteria filterCriteria = new FilterCriteria();
		GridData gridData;
		
		int count;
		gridData = (GridData) customerService.listCustomer();
		count = gridData.getCount();
		JQGridJSON jsonData = new JQGridJSON();
		jsonData.setPage(filterCriteria.getCurrentPage());//pageCount
		jsonData.setRecords(count);
		jsonData.setTotal(""+gridData.getTotalPages());
		List<JQGridRow> rows = new ArrayList<JQGridRow>();
		List<Customer> userGridData = new ArrayList<Customer>();
		userGridData = (List<Customer>) gridData.getListData();
		LOGGER.info(userGridData.toString());
		for(Customer objUser:userGridData)
		{
			JQGridRow row = new JQGridRow(); 
			List<String> cells = new ArrayList<String>();
			cells.add(objUser.getDT_RowId()+"");
			cells.add(objUser.getFirstname());
			cells.add(objUser.getLastname()+"");
			cells.add(objUser.getEmail()+"");
			
			cells.add(objUser.getTelephone()+"");
			row.setId(objUser.getDT_RowId()+"");
			row.setCell(cells);
			rows.add(row); 
		}
		jsonData.setRows(rows);
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String json2 = gson.toJson(jsonData);
	
		return json2;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST,consumes="application/json")
    public @ResponseBody String addCustomer(@RequestBody Map<String,Object> map, BindingResult result) {
    	
    	Customer customer=new Customer();
    	Gson gson = new GsonBuilder().setPrettyPrinting().create();
    	if(map.get("action").toString().equalsIgnoreCase("create") || map.get("action").toString().equalsIgnoreCase("edit"))
    	{
    		Map<String, Map<String, String>> data=(Map<String, Map<String,String>>) map.get("data");
    		
    		customer.setDT_RowId(Integer.parseInt(data.keySet().toArray()[0].toString()));
    		
    		/*Map<String,String> mapp=(Map<String, String>) data.get(map.keySet().toArray()[0].toString());
    		*/
    		customer.setFirstname(data.get(data.keySet().toArray()[0].toString()).get("firstname"));
    		customer.setLastname(data.get(data.keySet().toArray()[0].toString()).get("lastname"));
    		customer.setEmail(data.get(data.keySet().toArray()[0].toString()).get("email"));
    		customer.setTelephone(data.get(data.keySet().toArray()[0].toString()).get("telephone"));
    		
    		customerService.addCustomer(customer);
    		return gson.toJson("success");
    	}
    	else if(map.get("action").toString().equalsIgnoreCase("remove"))
    	{
    		Map<String, Map<String, String>> data=(Map<String, Map<String,String>>) map.get("data");
    		
    		customer.setDT_RowId(Integer.parseInt(data.keySet().toArray()[0].toString()));
    		
    		customerService.removeCustomer(customer.getDT_RowId());
    		
    		return gson.toJson("success");
    	}
    	return gson.toJson("error");
    		
    	
		
    }

    @RequestMapping("/delete/{customerId}")
    public String deleteCustomer(@PathVariable("customerId") Integer customerId) {
        customerService.removeCustomer(customerId);
        return "redirect:/list";
    }
}
