/**
 *
 */
package com.fil.crm.web.helper;

import java.util.ArrayList;

import org.json.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import com.fil.crm.web.domain.Batch;
import com.fil.crm.web.domain.JSONWrapper;
import com.fil.crm.web.domain.Meta;

/**
 * @author ManmeetFIL
 *
 */
public class RantNRaveClient {

	public static String sendSurveyEmail() {
		RestTemplate restTemplate = new RestTemplate();
		try {
			JSONObject jsonObj = init();
			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(MediaType.APPLICATION_JSON);
			HttpEntity<String> entity = new HttpEntity<String>(jsonObj.toString(), headers);
			ResponseEntity<String> loginResponse = restTemplate.exchange("https://solicit.rantandrave.co.uk/outbound/ravefinance/solicit/",
					HttpMethod.POST, entity, String.class);
			if (loginResponse.getStatusCode() == HttpStatus.OK) {
				JSONObject userJson = new JSONObject(loginResponse.getBody());
				System.out.println("Response JSON is :: " + userJson.toString());
				return "success";
			} else {
				return "error";
			}
		} catch (Exception e) {
			System.err.println("Exception ::::::::::::::::: " + e.getMessage());
			return null;
		}
	}

	private static JSONObject init() {
		JSONWrapper json = new JSONWrapper();
		json.setUsername("jjoiner@ravefinance.com");
		json.setPassword("Cath3dral");
		Batch batch = new Batch();
		batch.setGrace(0);
		batch.setWindow(null);
		batch.setSchedule(null);
		batch.setWorkflow("Rave_Finance_Email");
		batch.setRecipient("Matt.baker@fil.com");
		Meta meta = new Meta();
		batch.setMeta(meta);
		meta.setAgentId("aid");
		meta.setCaseId("cid");
		meta.setCustomerEmail("Matt.baker@fil.com");
		meta.setCustomerFirstname("Matt");
		meta.setCustomerId("cust_id");
		meta.setCustomerLastname("Baker");
		meta.setCustomerMobilephone("07947552712");
		meta.setCustomerPhone("07947552712");
		meta.setJourney("start");
		json.setBatch(new ArrayList<Batch>());
		json.getBatch().add(batch);
		JSONObject jsonObj = new JSONObject(json);
		return jsonObj;
	}
}
