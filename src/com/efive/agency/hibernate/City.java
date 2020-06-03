package com.efive.agency.hibernate;

/**
 * City entity. @author MyEclipse Persistence Tools
 */

public class City implements java.io.Serializable {

	// Fields

	private CityId id;

	// Constructors

	/** default constructor */
	public City() {
	}

	/** full constructor */
	public City(CityId id) {
		this.id = id;
	}

	// Property accessors

	public CityId getId() {
		return this.id;
	}

	public void setId(CityId id) {
		this.id = id;
	}

}