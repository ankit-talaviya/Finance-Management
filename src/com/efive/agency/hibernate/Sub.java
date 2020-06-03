package com.efive.agency.hibernate;

/**
 * Sub entity. @author MyEclipse Persistence Tools
 */

public class Sub implements java.io.Serializable {

	// Fields

	private SubId id;

	// Constructors

	/** default constructor */
	public Sub() {
	}

	/** full constructor */
	public Sub(SubId id) {
		this.id = id;
	}

	// Property accessors

	public SubId getId() {
		return this.id;
	}

	public void setId(SubId id) {
		this.id = id;
	}

}