/**
 *
 */
package com.fil.crm.web.domain;

import java.util.List;

/**
 * @author ManmeetFIL
 *
 */
public class MeetingDetail {

	String id;

	String toDateTime;

	String subject;

	String fromDateTime;

	String companyName;

	List<MeetingContact> contacts;

	List<Note> notes;

	String location;

	/**
	 * @return the toDateTime
	 */
	public String getToDateTime() {
		return toDateTime;
	}

	/**
	 * @param toDateTime
	 *            the toDateTime to set
	 */
	public void setToDateTime(String toDateTime) {
		this.toDateTime = toDateTime;
	}

	/**
	 * @return the subject
	 */
	public String getSubject() {
		return subject;
	}

	/**
	 * @param subject
	 *            the subject to set
	 */
	public void setSubject(String subject) {
		this.subject = subject;
	}

	/**
	 * @return the fromDateTime
	 */
	public String getFromDateTime() {
		return fromDateTime;
	}

	/**
	 * @param fromDateTime
	 *            the fromDateTime to set
	 */
	public void setFromDateTime(String fromDateTime) {
		this.fromDateTime = fromDateTime;
	}

	/**
	 * @return the companyName
	 */
	public String getCompanyName() {
		return companyName;
	}

	/**
	 * @param companyName
	 *            the companyName to set
	 */
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	/**
	 * @return the contacts
	 */
	public List<MeetingContact> getContacts() {
		return contacts;
	}

	/**
	 * @param contacts
	 *            the contacts to set
	 */
	public void setContacts(List<MeetingContact> contacts) {
		this.contacts = contacts;
	}

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the location
	 */
	public String getLocation() {
		return location;
	}

	/**
	 * @param location
	 *            the location to set
	 */
	public void setLocation(String location) {
		this.location = location;
	}

	/**
	 * @param notes
	 *            the notes to set
	 */
	public void setNotes(List<Note> notes) {
		this.notes = notes;
	}

	/**
	 * @return the notes
	 */
	public List<Note> getNotes() {
		return notes;
	}
}
