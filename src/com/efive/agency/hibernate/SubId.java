package com.efive.agency.hibernate;

import java.util.Date;

/**
 * SubId entity. @author MyEclipse Persistence Tools
 */

public class SubId implements java.io.Serializable {

	// Fields

	private Integer subId;
	private String subName;
	private Date startDate;
	private Date endDate;
	private Integer noCompany;
	private Integer noUser;
	private String modules;
	private String contactPer;
	private String address;
	private Integer pincode;
	private Long phoneNo;
	private Long mobileNo;
	private String email;
	private String fax;
	private Integer cityId;
	private Integer stateId;
	private Integer countryId;

	// Constructors

	/** default constructor */
	public SubId() {
	}

	/** minimal constructor */
	public SubId(Integer subId, String subName) {
		this.subId = subId;
		this.subName = subName;
	}

	/** full constructor */
	public SubId(Integer subId, String subName, Date startDate, Date endDate,
			Integer noCompany, Integer noUser, String modules,
			String contactPer, String address, Integer pincode, Long phoneNo,
			Long mobileNo, String email, String fax, Integer cityId,
			Integer stateId, Integer countryId) {
		this.subId = subId;
		this.subName = subName;
		this.startDate = startDate;
		this.endDate = endDate;
		this.noCompany = noCompany;
		this.noUser = noUser;
		this.modules = modules;
		this.contactPer = contactPer;
		this.address = address;
		this.pincode = pincode;
		this.phoneNo = phoneNo;
		this.mobileNo = mobileNo;
		this.email = email;
		this.fax = fax;
		this.cityId = cityId;
		this.stateId = stateId;
		this.countryId = countryId;
	}

	// Property accessors

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

	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public Integer getNoCompany() {
		return this.noCompany;
	}

	public void setNoCompany(Integer noCompany) {
		this.noCompany = noCompany;
	}

	public Integer getNoUser() {
		return this.noUser;
	}

	public void setNoUser(Integer noUser) {
		this.noUser = noUser;
	}

	public String getModules() {
		return this.modules;
	}

	public void setModules(String modules) {
		this.modules = modules;
	}

	public String getContactPer() {
		return this.contactPer;
	}

	public void setContactPer(String contactPer) {
		this.contactPer = contactPer;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getPincode() {
		return this.pincode;
	}

	public void setPincode(Integer pincode) {
		this.pincode = pincode;
	}

	public Long getPhoneNo() {
		return this.phoneNo;
	}

	public void setPhoneNo(Long phoneNo) {
		this.phoneNo = phoneNo;
	}

	public Long getMobileNo() {
		return this.mobileNo;
	}

	public void setMobileNo(Long mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
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
		if (!(other instanceof SubId))
			return false;
		SubId castOther = (SubId) other;

		return ((this.getSubId() == castOther.getSubId()) || (this.getSubId() != null
				&& castOther.getSubId() != null && this.getSubId().equals(
				castOther.getSubId())))
				&& ((this.getSubName() == castOther.getSubName()) || (this
						.getSubName() != null && castOther.getSubName() != null && this
						.getSubName().equals(castOther.getSubName())))
				&& ((this.getStartDate() == castOther.getStartDate()) || (this
						.getStartDate() != null
						&& castOther.getStartDate() != null && this
						.getStartDate().equals(castOther.getStartDate())))
				&& ((this.getEndDate() == castOther.getEndDate()) || (this
						.getEndDate() != null && castOther.getEndDate() != null && this
						.getEndDate().equals(castOther.getEndDate())))
				&& ((this.getNoCompany() == castOther.getNoCompany()) || (this
						.getNoCompany() != null
						&& castOther.getNoCompany() != null && this
						.getNoCompany().equals(castOther.getNoCompany())))
				&& ((this.getNoUser() == castOther.getNoUser()) || (this
						.getNoUser() != null && castOther.getNoUser() != null && this
						.getNoUser().equals(castOther.getNoUser())))
				&& ((this.getModules() == castOther.getModules()) || (this
						.getModules() != null && castOther.getModules() != null && this
						.getModules().equals(castOther.getModules())))
				&& ((this.getContactPer() == castOther.getContactPer()) || (this
						.getContactPer() != null
						&& castOther.getContactPer() != null && this
						.getContactPer().equals(castOther.getContactPer())))
				&& ((this.getAddress() == castOther.getAddress()) || (this
						.getAddress() != null && castOther.getAddress() != null && this
						.getAddress().equals(castOther.getAddress())))
				&& ((this.getPincode() == castOther.getPincode()) || (this
						.getPincode() != null && castOther.getPincode() != null && this
						.getPincode().equals(castOther.getPincode())))
				&& ((this.getPhoneNo() == castOther.getPhoneNo()) || (this
						.getPhoneNo() != null && castOther.getPhoneNo() != null && this
						.getPhoneNo().equals(castOther.getPhoneNo())))
				&& ((this.getMobileNo() == castOther.getMobileNo()) || (this
						.getMobileNo() != null
						&& castOther.getMobileNo() != null && this
						.getMobileNo().equals(castOther.getMobileNo())))
				&& ((this.getEmail() == castOther.getEmail()) || (this
						.getEmail() != null && castOther.getEmail() != null && this
						.getEmail().equals(castOther.getEmail())))
				&& ((this.getFax() == castOther.getFax()) || (this.getFax() != null
						&& castOther.getFax() != null && this.getFax().equals(
						castOther.getFax())))
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
				+ (getSubId() == null ? 0 : this.getSubId().hashCode());
		result = 37 * result
				+ (getSubName() == null ? 0 : this.getSubName().hashCode());
		result = 37 * result
				+ (getStartDate() == null ? 0 : this.getStartDate().hashCode());
		result = 37 * result
				+ (getEndDate() == null ? 0 : this.getEndDate().hashCode());
		result = 37 * result
				+ (getNoCompany() == null ? 0 : this.getNoCompany().hashCode());
		result = 37 * result
				+ (getNoUser() == null ? 0 : this.getNoUser().hashCode());
		result = 37 * result
				+ (getModules() == null ? 0 : this.getModules().hashCode());
		result = 37
				* result
				+ (getContactPer() == null ? 0 : this.getContactPer()
						.hashCode());
		result = 37 * result
				+ (getAddress() == null ? 0 : this.getAddress().hashCode());
		result = 37 * result
				+ (getPincode() == null ? 0 : this.getPincode().hashCode());
		result = 37 * result
				+ (getPhoneNo() == null ? 0 : this.getPhoneNo().hashCode());
		result = 37 * result
				+ (getMobileNo() == null ? 0 : this.getMobileNo().hashCode());
		result = 37 * result
				+ (getEmail() == null ? 0 : this.getEmail().hashCode());
		result = 37 * result
				+ (getFax() == null ? 0 : this.getFax().hashCode());
		result = 37 * result
				+ (getCityId() == null ? 0 : this.getCityId().hashCode());
		result = 37 * result
				+ (getStateId() == null ? 0 : this.getStateId().hashCode());
		result = 37 * result
				+ (getCountryId() == null ? 0 : this.getCountryId().hashCode());
		return result;
	}

}