package com.efive.agency.hibernate;

/**
 * StateId entity. @author MyEclipse Persistence Tools
 */

public class StateId implements java.io.Serializable {

	// Fields

	private Integer stateId;
	private String stateName;
	private Integer countryId;

	// Constructors

	/** default constructor */
	public StateId() {
	}

	/** full constructor */
	public StateId(Integer stateId, String stateName, Integer countryId) {
		this.stateId = stateId;
		this.stateName = stateName;
		this.countryId = countryId;
	}

	// Property accessors

	public Integer getStateId() {
		return this.stateId;
	}

	public void setStateId(Integer stateId) {
		this.stateId = stateId;
	}

	public String getStateName() {
		return this.stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
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
		if (!(other instanceof StateId))
			return false;
		StateId castOther = (StateId) other;

		return ((this.getStateId() == castOther.getStateId()) || (this
				.getStateId() != null && castOther.getStateId() != null && this
				.getStateId().equals(castOther.getStateId())))
				&& ((this.getStateName() == castOther.getStateName()) || (this
						.getStateName() != null
						&& castOther.getStateName() != null && this
						.getStateName().equals(castOther.getStateName())))
				&& ((this.getCountryId() == castOther.getCountryId()) || (this
						.getCountryId() != null
						&& castOther.getCountryId() != null && this
						.getCountryId().equals(castOther.getCountryId())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getStateId() == null ? 0 : this.getStateId().hashCode());
		result = 37 * result
				+ (getStateName() == null ? 0 : this.getStateName().hashCode());
		result = 37 * result
				+ (getCountryId() == null ? 0 : this.getCountryId().hashCode());
		return result;
	}

}