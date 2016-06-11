package com.rrd.eaglemasala.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UnitMasterController {

	private static final Logger LOGGER = LoggerFactory.getLogger(UnitMasterController.class);
	
	
	@RequestMapping(value = "unitMaster",method = RequestMethod.GET)
    public String loadLoginPage(Map<String, Object> map) {
    	LOGGER.info("test===============================");
    	return "tables";
    }
	
	}
