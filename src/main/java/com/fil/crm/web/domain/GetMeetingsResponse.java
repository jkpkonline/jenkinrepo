/**
 *
 */
package com.fil.crm.web.domain;

import java.util.List;

/**
 * @author ManmeetFIL
 *
 */
public class GetMeetingsResponse {

	List<MeetingDetail> meetings;

	/**
	 * @return the meetings
	 */
	public List<MeetingDetail> getMeetings() {
		return meetings;
	}

	/**
	 * @param meetings
	 *            the meetings to set
	 */
	public void setMeetings(List<MeetingDetail> meetings) {
		this.meetings = meetings;
	}
}
