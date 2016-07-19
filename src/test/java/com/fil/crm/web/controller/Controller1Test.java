package com.fil.crm.web.controller;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;

public class Controller1Test {
	
	@Mock
	private Model model = new ExtendedModelMap();
	
	private Controller1 controller;
	private final Logger logger = LoggerFactory.getLogger(Controller1.class);
	
	@Test
	public void testWelcome() {
		try {
			controller.welcome(null, null, model);
		} catch (Exception e) {
			logger.info("Exception :" + e.getLocalizedMessage());
		}
	}

	
	@Before
	public void setup() {
		controller = new Controller1();
	}
}
