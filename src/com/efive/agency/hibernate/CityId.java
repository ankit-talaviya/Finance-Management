package com.efive.agency.hibernate;

/**
 * CityId entity. @author MyEclipse Persistence Tools
 */

public class CityId implements java.io.Serializable {

	// Fields

	private Integer cityId;
	private String cityName;
	private Integer stateId;
	private Integer countryId;

	// Constructors

	/** default constructor */
	public CityId() {
	}

	/** minimal constructor */
	public CityId(Integer cityId, String cityName, Integer stateId) {
		this.cityId = cityId;
		this.cityName = cityName;
		this.stateId = stateId;
	}

	/** full constructor */
	public CityId(Integer cityId, String cityName, Integer stateId,
			Integer countryId) {
		this.cityId = cityId;
		this.cityName = cityName;
		this.stateId = stateId;
		this.countryId = countryId;
	}

	// Property accessors

	public Integer getCityId() {
		return this.cityId;
	}

	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}

	public String getCityName() {
		return this.cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public Integer getStateId() {
		return this.stateId;
	}

	public void setStateId(Integer stateId) {
		this.stateId = stateId;
	}

	public Integer getCountryId() {
		return this.countryId;
	}

	public void setCountryId(Integer countryId) {
		this.countryId = countryId;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof CityId))
			return false;
		CityId castOther = (CityId) other;

		return ((this.getCityId() == castOther.getCityId()) || (this
				.getCityId() != null && castOther.getCityId() != null && this
				.getCityId().equals(castOther.getCityId())))
				&& ((this.getCityName() == castOther.getCityName()) || (this
						.getCityName() != null
						&& castOther.getCityName() != null && this
						.getCityName().equals(castOther.getCityName())))
				&& ((this.getStateId() == castOther.getStateId()) || (this
						.getStateId() != null && castOther.getStateId() != null && this
						.getStateId().equals(castOther.getStateId())))
				&& ((this.getCountryId() == castOther.getCountryId()) || (this
						.getCountryId() != null
						&& castOther.getCountryId() != null && this
						.getCountryId().equals(castOther.getCountryId())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getCityId() == null ? 0 : this.getCityId().hashCode());
		result = 37 * result
				+ (getCityName() == null ? 0 : this.getCityName().hashCode());
		result = 37 * result
				+ (getStateId() == null ? 0 : this.getStateId().hashCode());
		result = 37 * result
				+ (getCountryId() == null ? 0 : this.getCountryId().hashCode());
		return result;
	}

}