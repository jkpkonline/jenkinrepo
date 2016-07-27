package com.fil.crm.web.controller;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.client.RestTemplate;

import com.fil.crm.web.helper.DateHelper.DateRange;

public class Controller1Test {

	private Model model = new ExtendedModelMap();
	private ModelMap modelmap = new ExtendedModelMap();
	@Mock
	private RestTemplate restTemplate;
	
	private DateRange range = DateRange.TODAY;

	private Controller1 controller;
	private final Logger logger = LoggerFactory.getLogger(Controller1.class);

	@Test
	public void testWelcome() {
		try {
			assertNotNull(controller.welcome(null, null, model));
		} catch (Exception e) { e.printStackTrace();
			logger.info("Exception :" + e.getLocalizedMessage());
		}
	}

	@Test
	public void testMeetingNotes() {
		try {
			assertTrue("meetingNotes".equalsIgnoreCase(controller.meetingnotes("", modelmap)));
		} catch (Exception e) {
			logger.info("Exception :" + e.getLocalizedMessage());
		}
	}
	
	@Test
	public void testFeed() {
		try {
			assertTrue("feed".equalsIgnoreCase(controller.feed()));
		} catch (Exception e) {
			logger.info("Exception :" + e.getLocalizedMessage());
			fail("Exception : " + e.getMessage());
		}
	}
	
	@Test
	public void testMyMeetings() {
		try {
			assertTrue("myMeetings".equalsIgnoreCase(controller.myMeetings(modelmap, range)));
		} catch (Exception e) {
			logger.info("Exception :" + e.getLocalizedMessage());
		}
	}
	
	@Test
	public void testDashboards() {
		try {
			assertTrue("dashboards".equalsIgnoreCase(controller.dashboards()));
		} catch (Exception e) {
			logger.info("Exception :" + e.getLocalizedMessage());
		}
	}
	
	@Test
	public void testHome() {
		try {
			assertTrue("home".equalsIgnoreCase(controller.home()));
		} catch (Exception e) {
			logger.info("Exception :" + e.getLocalizedMessage());
		}
	}
	
	@Test
	public void testSendSurvey() {
		try {
			assertTrue("sendSurvey".equalsIgnoreCase(controller.sendSurvey("1", modelmap)));
		} catch (Exception e) {
			logger.info("Exception :" + e.getLocalizedMessage());
		}
	}
	
	@Test
	public void testCollaborateMyTeam() {
		try {
			assertTrue("collaboration-myteam".equalsIgnoreCase(controller.collaborationMyteam()));
		} catch (Exception e) {
			logger.info("Exception :" + e.getLocalizedMessage());
		}
	}
	
	@Test
	public void testSTFW() {
		try {
			assertTrue("stfw".equalsIgnoreCase(controller.stfw()));
		} catch (Exception e) {
			logger.info("Exception :" + e.getLocalizedMessage());
		}
	}
	@Test
	public void testAccounts() {
		try {
			assertTrue("accounts".equalsIgnoreCase(controller.accounts()));
		} catch (Exception e) {
			logger.info("Exception :" + e.getLocalizedMessage());
		}
	}
	@Test
	public void testThoughtLeadership() {
		try {
			assertTrue("thoughtLeadership".equalsIgnoreCase(controller.thoughtLeadership()));
		} catch (Exception e) {
			logger.info("Exception :" + e.getLocalizedMessage());
		}
	}
	@Test
	public void testInfoAnalyticsProduct() {
		try {
			assertTrue("infoAnalyticsProduct".equalsIgnoreCase(controller.infoAnalyticsProduct()));
		} catch (Exception e) {
			logger.info("Exception :" + e.getLocalizedMessage());
		}
	}
	

	@Before
	public void setup() {
		MockitoAnnotations.initMocks(this);
		controller = new Controller1();
	}
}
