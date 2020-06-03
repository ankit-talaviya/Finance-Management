package Agency;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
public class AgencyBean extends ActionSupport implements ServletRequestAware,ServletResponseAware{
	
	

	List list = new ArrayList();
	
	List list1 = new ArrayList();
	
	List list3 = new ArrayList();
	
	List statelist =  new ArrayList();
	
	List citylist =  new ArrayList();
	
	List countrylist =new ArrayList();
	
	public HttpServletRequest request;
	

	public HttpServletResponse response;
	
	public String ser,username,password,SubId,SubName,StartDate,EndDate,NoCompany,NoUser,Image,
	Modules,ContactPer,Address,Pincode,PhoneNo,MobileNo,Email,Fax,CityName,StateName,CountryName,
	CityId,StateId,CountryId,type,Company,ShortName,ContactNo,Website,destpath,FileName,myFileFileName,CompanyId,SortName,Contact,WebSite,Ch1,Ch2,Ch3,Ch4,Ch5;

	public int incr,totalrecord,currentpage,start,end,totalpage,displayrec,page,tp,dis,cur;
	
	
	File myFile;


	
	
	
	public String getCh1() {
		return Ch1;
	}

	public void setCh1(String ch1) {
		Ch1 = ch1;
	}

	public String getCh2() {
		return Ch2;
	}

	public void setCh2(String ch2) {
		Ch2 = ch2;
	}

	public String getCh3() {
		return Ch3;
	}

	public void setCh3(String ch3) {
		Ch3 = ch3;
	}

	public String getCh4() {
		return Ch4;
	}

	public void setCh4(String ch4) {
		Ch4 = ch4;
	}

	public String getCh5() {
		return Ch5;
	}

	public void setCh5(String ch5) {
		Ch5 = ch5;
	}

	public String getImage() {
		return Image;
	}

	public void setImage(String image) {
		Image = image;
	}

	public String getSortName() {
		return SortName;
	}

	public void setSortName(String sortName) {
		SortName = sortName;
	}

	
	
	
	public List getList3() {
		return list3;
	}

	public void setList3(List list3) {
		this.list3 = list3;
	}

	public int getIncr() {
		return incr;
	}

	public void setIncr(int incr) {
		this.incr = incr;
	}

	public int getTotalrecord() {
		return totalrecord;
	}

	public void setTotalrecord(int totalrecord) {
		this.totalrecord = totalrecord;
	}

	public int getCurrentpage() {
		return currentpage;
	}

	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getTotalpage() {
		return totalpage;
	}

	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}

	public int getDisplayrec() {
		return displayrec;
	}

	public void setDisplayrec(int displayrec) {
		this.displayrec = displayrec;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getTp() {
		return tp;
	}

	public void setTp(int tp) {
		this.tp = tp;
	}

	public int getDis() {
		return dis;
	}

	public void setDis(int dis) {
		this.dis = dis;
	}

	public int getCur() {
		return cur;
	}

	public void setCur(int cur) {
		this.cur = cur;
	}

	public String getContact() {
		return Contact;
	}

	public void setContact(String contact) {
		Contact = contact;
	}

	public String getWebSite() {
		return WebSite;
	}

	public void setWebSite(String webSite) {
		WebSite = webSite;
	}

	public String getCompanyId() {
		return CompanyId;
	}

	public void setCompanyId(String companyId) {
		CompanyId = companyId;
	}

	public String getMyFileFileName() {
		return myFileFileName;
	}

	public void setMyFileFileName(String myFileFileName) {
		this.myFileFileName = myFileFileName;
	}

	public String getDestpath() {
		return destpath;
	}

	public void setDestpath(String destpath) {
		this.destpath = destpath;
	}

	public File getMyFile() {
		return myFile;
	}

	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}

	public String getFileName() {
		return FileName;
	}

	public void setFileName(String fileName) {
		FileName = fileName;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public HttpServletResponse getResponse() {
		return response;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}
	
	
	public String getSer() {
		return ser;
	}

	public void setSer(String ser) {
		this.ser = ser;
	}

	public String getCompany() {
		return Company;
	}

	public void setCompany(String company) {
		Company = company;
	}

	public String getShortName() {
		return ShortName;
	}

	public void setShortName(String shortName) {
		ShortName = shortName;
	}

	public String getContactNo() {
		return ContactNo;
	}

	public void setContactNo(String contactNo) {
		ContactNo = contactNo;
	}

	public String getWebsite() {
		return Website;
	}

	public void setWebsite(String website) {
		Website = website;
	}

	public List getList1() {
		return list1;
	}

	public void setList1(List list1) {
		this.list1 = list1;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSubId() {
		return SubId;
	}

	public void setSubId(String subId) {
		SubId = subId;
	}

	public String getSubName() {
		return SubName;
	}

	public void setSubName(String subName) {
		SubName = subName;
	}

	public String getStartDate() {
		return StartDate;
	}

	public void setStartDate(String startDate) {
		StartDate = startDate;
	}

	public String getEndDate() {
		return EndDate;
	}

	public void setEndDate(String endDate) {
		EndDate = endDate;
	}

	public String getNoCompany() {
		return NoCompany;
	}

	public void setNoCompany(String noCompany) {
		NoCompany = noCompany;
	}

	public String getNoUser() {
		return NoUser;
	}

	public void setNoUser(String noUser) {
		NoUser = noUser;
	}

	public String getModules() {
		return Modules;
	}

	public void setModules(String modules) {
		Modules = modules;
	}

	public String getContactPer() {
		return ContactPer;
	}

	public void setContactPer(String contactPer) {
		ContactPer = contactPer;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getPincode() {
		return Pincode;
	}

	public void setPincode(String pincode) {
		Pincode = pincode;
	}

	public String getPhoneNo() {
		return PhoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		PhoneNo = phoneNo;
	}

	public String getMobileNo() {
		return MobileNo;
	}

	public void setMobileNo(String mobileNo) {
		MobileNo = mobileNo;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getFax() {
		return Fax;
	}

	public void setFax(String fax) {
		Fax = fax;
	}

	public String getCityName() {
		return CityName;
	}

	public void setCityName(String cityName) {
		CityName = cityName;
	}

	public String getStateName() {
		return StateName;
	}

	public void setStateName(String stateName) {
		StateName = stateName;
	}

	public String getCountryName() {
		return CountryName;
	}

	public void setCountryName(String countryName) {
		CountryName = countryName;
	}

	public String getCityId() {
		return CityId;
	}

	public void setCityId(String cityId) {
		CityId = cityId;
	}

	public String getStateId() {
		return StateId;
	}

	public void setStateId(String stateId) {
		StateId = stateId;
	}

	public String getCountryId() {
		return CountryId;
	}

	public void setCountryId(String countryId) {
		CountryId = countryId;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	public List getStatelist() {
		return statelist;
	}

	public void setStatelist(List statelist) {
		this.statelist = statelist;
	}

	public List getCitylist() {
		return citylist;
	}

	public void setCitylist(List citylist) {
		this.citylist = citylist;
	}

	public List getCountrylist() {
		return countrylist;
	}

	public void setCountrylist(List countrylist) {
		this.countrylist = countrylist;
	}

	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		// TODO Auto-generated method stub
		this.response =arg0;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		// TODO Auto-generated method stub
		this.request=arg0;
	}

	
	
	
	/*--------------------------------------------------*/
	
	
	
}