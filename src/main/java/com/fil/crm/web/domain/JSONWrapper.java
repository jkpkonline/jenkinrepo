package com.fil.crm.web.domain;
import java.util.List;

/**
 *
 */
/**
 * @author ManmeetFIL
 *
 */
public class JSONWrapper {

	String username;

	String password;

	List<Batch> batch;

	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username
	 *            the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password
	 *            the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the batch
	 */
	public List<Batch> getBatch() {
		return batch;
	}

	/**
	 * @param batch
	 *            the batch to set
	 */
	public void setBatch(List<Batch> batch) {
		this.batch = batch;
	}
}
