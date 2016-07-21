package com.fil.crm.web.controller;

import java.text.ParseException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fil.crm.web.constants.RequestMappingConstants;
import com.fil.crm.web.domain.GetMeetingsResponse;
import com.fil.crm.web.helper.DateHelper;
import com.fil.crm.web.helper.DateHelper.DateRange;
import com.fil.crm.web.helper.RantNRaveClient;
import com.fil.crm.web.helper.SFDCHelper;

@Controller
public class Controller1 {

	private final Logger logger = LoggerFactory.getLogger(Controller1.class);

	@RequestMapping(value = "/welcome", method = { RequestMethod.GET, RequestMethod.POST })
	public String welcome(@RequestParam(value = RequestMappingConstants.NAME_PARAM, required = false) String name,
			@RequestParam(value = RequestMappingConstants.USERNAME_PARAM, required = false) String username, Model model) {
		model.addAttribute("name", name);
		model.addAttribute("username", username);
		model.addAttribute("name", name);
		logger.info("Controller1 -- Welcome");
		return "myMeetings";
	}

	@RequestMapping(value = "/error", method = { RequestMethod.GET })
	public String error() {
		System.out.println("I am Controller1:/error");
		return "error";
	}

	@RequestMapping(value = "/", method = { RequestMethod.GET })
	public ModelAndView createViewMeeting() {
		System.out.println("I am Controller1:/home");
		return new ModelAndView("redirect:/mymeetings?range=TODAY");
	}

	@RequestMapping(value = "/meetingnotes", method = { RequestMethod.GET })
	public String meetingnotes(@RequestParam String eventId, ModelMap map) {
		System.out.println("meeting notes page:/");
		GetMeetingsResponse response = SFDCHelper.getMeetingDetailsFromSFDC(eventId);
		map.addAttribute("meetingDetails", response.getMeetings().get(0));
		return "meetingNotes";
	}

	@RequestMapping(value = "/people", method = { RequestMethod.GET })
	public String people() {
		System.out.println("meeting notes page:/");
		return "people";
	}

	@RequestMapping(value = "/feed", method = { RequestMethod.GET })
	public String feed() {
		System.out.println("meeting notes page:/");
		return "feed";
	}

	@RequestMapping(value = "getMeetings", method = RequestMethod.GET)
	public @ResponseBody GetMeetingsResponse getMeetings(@RequestParam String dateFrom, @RequestParam String dateTo) {
		return SFDCHelper.getMeetingsFromSFDC(dateFrom, dateTo);
	}

	@RequestMapping(value = "/collaboration", method = { RequestMethod.GET })
	public String collaboration() {
		System.out.println("I am Controller1:/collaboration");
		return "collaboration";
	}

	@RequestMapping(value = "/dashboards", method = { RequestMethod.GET })
	public String dashboards() {
		System.out.println("I am Controller1:/dashboards");
		return "dashboards";
	}

	@RequestMapping(value = "/home", method = { RequestMethod.GET })
	public String home() {
		System.out.println("Home page:/");
		return "home";
	}

	@RequestMapping(value = "/mymeetings", method = { RequestMethod.GET })
	public String myMeetings(ModelMap map, @RequestParam DateRange range) {
		List<String> rangeList;
		try {
			rangeList = DateHelper.getDateRange(range);
			GetMeetingsResponse response = SFDCHelper.getMeetingsFromSFDC(rangeList.get(0), rangeList.get(1));
			map.addAttribute("meetingList", "");
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return "myMeetings";
	}

	@RequestMapping(value = "/sendSurvey", method = { RequestMethod.GET })
	public String sendSurvey(@RequestParam String eventId, ModelMap map) {
		GetMeetingsResponse response = SFDCHelper.getMeetingDetailsFromSFDC(eventId);
		map.addAttribute("meetingDetails", response.getMeetings().get(0));
		return "sendSurvey";
	}

	@RequestMapping(value = "/collaboration-myteam", method = { RequestMethod.GET })
	public String collaborationMyteam() {
		return "collaboration-myteam";
	}

	@RequestMapping(value = "/collaboration-product", method = { RequestMethod.GET })
	public String collaborationProduct() {
		return "collaboration-product";
	}

	@RequestMapping(value = "/collaboration-rfp", method = { RequestMethod.GET })
	public String collaborationRfp() {
		return "collaboration-rfp";
	}

	@RequestMapping(value = "/stfw", method = { RequestMethod.GET })
	public String stfw() {
		return "stfw";
	}

	@RequestMapping(value = "/accounts", method = { RequestMethod.GET })
	public String accounts() {
		return "accounts";
	}

	@RequestMapping(value = "/sendRnREmail", method = { RequestMethod.GET })
	public @ResponseBody String sendRnREmail() {
		return RantNRaveClient.sendSurveyEmail();
	}

	@RequestMapping(value = "/mySurveys", method = { RequestMethod.GET })
	public String mySurveys(ModelMap map) {
		return "mySurveys";
	}

	@RequestMapping(value = "/opportunities", method = { RequestMethod.GET })
	public String opportunities() {
		return "opportunities";
	}
	
	@RequestMapping(value = "/thoughtLeadership", method = { RequestMethod.GET })
	public String thoughtLeadership() {
		return "thoughtLeadership";
	}
	
	@RequestMapping(value = "/opportunitiesDrilldown", method = { RequestMethod.GET })
	public String opportunitiesDrilldown() {
		return "opportunitiesDrilldown";
	}
	
	@RequestMapping(value = "/infoAnalyticsProduct", method = { RequestMethod.GET })
	public String infoAnalyticsProduct() {
		return "infoAnalyticsProduct";
	}
	
}
