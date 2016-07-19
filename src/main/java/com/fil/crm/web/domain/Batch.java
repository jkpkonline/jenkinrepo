package com.fil.crm.web.domain;
/**
 *
 */
/**
 * @author ManmeetFIL
 *
 */
public class Batch {

	String workflow;

	String window;

	String schedule;

	String recipient;

	int grace;

	Meta meta;

	/**
	 * @return the workflow
	 */
	public String getWorkflow() {
		return workflow;
	}

	/**
	 * @param workflow
	 *            the workflow to set
	 */
	public void setWorkflow(String workflow) {
		this.workflow = workflow;
	}

	/**
	 * @return the window
	 */
	public String getWindow() {
		return window;
	}

	/**
	 * @param window
	 *            the window to set
	 */
	public void setWindow(String window) {
		this.window = window;
	}

	/**
	 * @return the schedule
	 */
	public String getSchedule() {
		return schedule;
	}

	/**
	 * @param schedule
	 *            the schedule to set
	 */
	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}

	/**
	 * @return the recipient
	 */
	public String getRecipient() {
		return recipient;
	}

	/**
	 * @param recipient
	 *            the recipient to set
	 */
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}

	/**
	 * @return the grace
	 */
	public int getGrace() {
		return grace;
	}

	/**
	 * @param grace
	 *            the grace to set
	 */
	public void setGrace(int grace) {
		this.grace = grace;
	}

	/**
	 * @return the meta
	 */
	public Meta getMeta() {
		return meta;
	}

	/**
	 * @param meta
	 *            the meta to set
	 */
	public void setMeta(Meta meta) {
		this.meta = meta;
	}
}
