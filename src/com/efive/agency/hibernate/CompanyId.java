package com.efive.agency.hibernate;

/**
 * CompanyId entity. @author MyEclipse Persistence Tools
 */

public class CompanyId implements java.io.Serializable {

	// Fields

	private Integer companyId;
	private Integer subId;
	private String subName;
	private String company;
	private String shortName;
	private String address;
	private Long contactNo;
	private String email;
	private String webSite;
	private Integer cityId;
	private Integer stateId;
	private Integer countryId;

	// Constructors

	/** default constructor */
	public CompanyId() {
	}

	/** minimal constructor */
	public CompanyId(Integer companyId, Integer subId, String company) {
		this.companyId = companyId;
		this.subId = subId;
		this.company = company;
	}

	/** full constructor */
	public CompanyId(Integer companyId, Integer subId, String subName,
			String company, String shortName, String address, Long contactNo,
			String email, String webSite, Integer cityId, Integer stateId,
			Integer countryId) {
		this.companyId = companyId;
		this.subId = subId;
		this.subName = subName;
		this.company = company;
		this.shortName = shortName;
		this.address = address;
		this.contactNo = contactNo;
		this.email = email;
		this.webSite = webSite;
		this.cityId = cityId;
		this.stateId = stateId;
		this.countryId = countryId;
	}

	// Property accessors

	public Integer getCompanyId() {
		return this.companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	public Integer getSubId() {
		return this.subId;
	}

	public void setSubId(Integer subId) {
		this.subId = subId;
	}

	public String getSubName() {
		return this.subName;
	}

	public void setSubName(String subName) {
		this.subName = subName;
	}

	public String getCompany() {
		return this.company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getShortName() {
		return this.shortName;
	}

	public void setShortName(String shortName) {
		this.shortName = shortName;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Long getContactNo() {
		return this.contactNo;
	}

	public void setContactNo(Long contactNo) {
		this.contactNo = contactNo;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWebSite() {
		return this.webSite;
	}

	public void setWebSite(String webSite) {
		this.webSite = webSite;
	}

	public Integer getCityId() {
		return this.cityId;
	}

	public void setCityId(Integer cityId) {
		this.cityId = cityId;
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
		if (!(other instanceof CompanyId))
			return false;
		CompanyId castOther = (CompanyId) other;

		return ((this.getCompanyId() == castOther.getCompanyId()) || (this
				.getCompanyId() != null && castOther.getCompanyId() != null && this
				.getCompanyId().equals(castOther.getCompanyId())))
				&& ((this.getSubId() == castOther.getSubId()) || (this
						.getSubId() != null && castOther.getSubId() != null && this
						.getSubId().equals(castOther.getSubId())))
				&& ((this.getSubName() == castOther.getSubName()) || (this
						.getSubName() != null && castOther.getSubName() != null && this
						.getSubName().equals(castOther.getSubName())))
				&& ((this.getCompany() == castOther.getCompany()) || (this
						.getCompany() != null && castOther.getCompany() != null && this
						.getCompany().equals(castOther.getCompany())))
				&& ((this.getShortName() == castOther.getShortName()) || (this
						.getShortName() != null
						&& castOther.getShortName() != null && this
						.getShortName().equals(castOther.getShortName())))
				&& ((this.getAddress() == castOther.getAddress()) || (this
						.getAddress() != null && castOther.getAddress() != null && this
						.getAddress().equals(castOther.getAddress())))
				&& ((this.getContactNo() == castOther.getContactNo()) || (this
						.getContactNo() != null
						&& castOther.getContactNo() != null && this
						.getContactNo().equals(castOther.getContactNo())))
				&& ((this.getEmail() == castOther.getEmail()) || (this
						.getEmail() != null && castOther.getEmail() != null && this
						.getEmail().equals(castOther.getEmail())))
				&& ((this.getWebSite() == castOther.getWebSite()) || (this
						.getWebSite() != null && castOther.getWebSite() != null && this
						.getWebSite().equals(castOther.getWebSite())))
				&& ((this.getCityId() == castOther.getCityId()) || (this
						.getCityId() != null && castOther.getCityId() != null && this
						.getCityId().equals(castOther.getCityId())))
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
				+ (getCompanyId() == null ? 0 : this.getCompanyId().hashCode());
		result = 37 * result
				+ (getSubId() == null ? 0 : this.getSubId().hashCode());
		result = 37 * result
				+ (getSubName() == null ? 0 : this.getSubName().hashCode());
		result = 37 * result
				+ (getCompany() == null ? 0 : this.getCompany().hashCode());
		result = 37 * result
				+ (getShortName() == null ? 0 : this.getShortName().hashCode());
		result = 37 * result
				+ (getAddress() == null ? 0 : this.getAddress().hashCode());
		result = 37 * result
				+ (getContactNo() == null ? 0 : this.getContactNo().hashCode());
		result = 37 * result
				+ (getEmail() == null ? 0 : this.getEmail().hashCode());
		result = 37 * result
				+ (getWebSite() == null ? 0 : this.getWebSite().hashCode());
		result = 37 * result
				+ (getCityId() == null ? 0 : this.getCityId().hashCode());
		result = 37 * result
				+ (getStateId() == null ? 0 : this.getStateId().hashCode());
		result = 37 * result
				+ (getCountryId() == null ? 0 : this.getCountryId().hashCode());
		return result;
	}

}