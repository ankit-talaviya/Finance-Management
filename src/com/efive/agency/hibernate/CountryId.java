package com.efive.agency.hibernate;

/**
 * CountryId entity. @author MyEclipse Persistence Tools
 */

public class CountryId implements java.io.Serializable {

	// Fields

	private Integer countryId;
	private String countryName;

	// Constructors

	/** default constructor */
	public CountryId() {
	}

	/** full constructor */
	public CountryId(Integer countryId, String countryName) {
		this.countryId = countryId;
		this.countryName = countryName;
	}

	// Property accessors

	public Integer getCountryId() {
		return this.countryId;
	}

	public void setCountryId(Integer countryId) {
		this.countryId = countryId;
	}

	public String getCountryName() {
		return this.countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof CountryId))
			return false;
		CountryId castOther = (CountryId) other;

		return ((this.getCountryId() == castOther.getCountryId()) || (this
				.getCountryId() != null && castOther.getCountryId() != null && this
				.getCountryId().equals(castOther.getCountryId())))
				&& ((this.getCountryName() == castOther.getCountryName()) || (this
						.getCountryName() != null
						&& castOther.getCountryName() != null && this
						.getCountryName().equals(castOther.getCountryName())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getCountryId() == null ? 0 : this.getCountryId().hashCode());
		result = 37
				* result
				+ (getCountryName() == null ? 0 : this.getCountryName()
						.hashCode());
		return result;
	}

}