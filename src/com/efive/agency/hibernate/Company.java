package com.efive.agency.hibernate;

/**
 * Company entity. @author MyEclipse Persistence Tools
 */

public class Company implements java.io.Serializable {

	// Fields

	private CompanyId id;

	// Constructors

	/** default constructor */
	public Company() {
	}

	/** full constructor */
	public Company(CompanyId id) {
		this.id = id;
	}

	// Property accessors

	public CompanyId getId() {
		return this.id;
	}

	public void setId(CompanyId id) {
		this.id = id;
	}

}