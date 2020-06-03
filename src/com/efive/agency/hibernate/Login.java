package com.efive.agency.hibernate;

/**
 * Login entity. @author MyEclipse Persistence Tools
 */

public class Login implements java.io.Serializable {

	// Fields

	private LoginId id;

	// Constructors

	/** default constructor */
	public Login() {
	}

	/** full constructor */
	public Login(LoginId id) {
		this.id = id;
	}

	// Property accessors

	public LoginId getId() {
		return this.id;
	}

	public void setId(LoginId id) {
		this.id = id;
	}

}