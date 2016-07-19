/**
 *
 */
package com.fil.crm.web.helper;

import org.json.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.fil.crm.web.domain.GetMeetingsResponse;

/**
 * @author ManmeetFIL
 *
 */
public class SFDCHelper {

	static final String LOGINURL = "https://login.salesforce.com/services/oauth2/token";

	static final String CLIENTID = "3MVG98_Psg5cppyYCC1InD25fuATUNSv7xldLr3C9Tzw1HIDXf2j9THRObS1XK2PM.2qzwnSwvT9rOvCbPiC2";

	static final String CLIENTSECRET = "8801121497532175754";

	static final String GRANT_TYPE = "password";

	static final String USERNAME = "developers@brainapp.com";

	static final String PASSWORD = "RvzMnQ74ZN";

	public static GetMeetingsResponse getMeetingsFromSFDC(String startDate, String endDate) {
		RestTemplate restTemplate = new RestTemplate();
		MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
		map.add("grant_type", GRANT_TYPE);
		map.add("client_id", CLIENTID);
		map.add("client_secret", CLIENTSECRET);
		map.add("username", USERNAME);
		map.add("password", PASSWORD);
		try {
			String result = restTemplate.postForObject(LOGINURL, map, String.class);
			JSONObject json = new JSONObject(result);
			String access_token = json.getString("access_token");
			String instance_url = json.getString("instance_url");
			HttpHeaders headers = new HttpHeaders();
			headers.set("Authorization", "OAuth " + access_token);
			String url = instance_url + "/services/apexrest/MeetingNotesService/getMeetingList?startDate={0}&endDate={1}";
			HttpEntity<String> entity = new HttpEntity<String>(headers);
			ResponseEntity<GetMeetingsResponse> response = restTemplate.exchange(url, HttpMethod.GET, entity, GetMeetingsResponse.class,
					startDate, endDate);
			return response.getBody();
		} catch (Exception e) {
			System.err.println("Exception ::::::::::::::::: " + e.getMessage());
			return null;
		}
	}

	public static GetMeetingsResponse getMeetingDetailsFromSFDC(String eventId) {
		RestTemplate restTemplate = new RestTemplate();
		MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
		map.add("grant_type", GRANT_TYPE);
		map.add("client_id", CLIENTID);
		map.add("client_secret", CLIENTSECRET);
		map.add("username", USERNAME);
		map.add("password", PASSWORD);
		try {
			String result = restTemplate.postForObject(LOGINURL, map, String.class);
			JSONObject json = new JSONObject(result);
			String access_token = json.getString("access_token");
			String instance_url = json.getString("instance_url");
			HttpHeaders headers = new HttpHeaders();
			headers.set("Authorization", "OAuth " + access_token);
			String url = instance_url + "/services/apexrest/MeetingNotesService/getMeetingDetails?eventId={0}";
			HttpEntity<String> entity = new HttpEntity<String>(headers);
			ResponseEntity<GetMeetingsResponse> response = restTemplate.exchange(url, HttpMethod.GET, entity, GetMeetingsResponse.class,
					eventId);
			return response.getBody();
		} catch (Exception e) {
			System.err.println("Exception ::::::::::::::::: " + e.getMessage());
			return null;
		}
	}
}
