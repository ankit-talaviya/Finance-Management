<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html lang="en" data-textdirection="LTR" class="loading">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>Emergingfive</title>

<link rel="stylesheet" href="app-assets/css/bootstrap.css"/>
    <!-- BEGIN VENDOR CSS-->
    <!-- BEGIN Font icons-->
    <link rel="stylesheet" type="text/css" href="app-assets/fonts/icomoon.css">
    <link rel="stylesheet" type="text/css" href="app-assets/fonts/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/forms/icheck/icheck.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/forms/icheck/custom.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/ui/jquery-ui.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/forms/selects/select2.min.css">
    <!-- END Font icons-->
    <!-- BEGIN Plugins CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/sliders/slick/slick.css">
    <!-- END Plugins CSS-->
   <!-- BEGIN Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/tables/datatable/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/tables/extensions/rowReorder.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/tables/extensions/responsive.dataTables.min.css">
    <!-- END Vendor CSS-->
    <!-- BEGIN Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/ui/prism.min.css">
    <!-- END Vendor CSS-->
    <!-- BEGIN ROBUST CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/css/core/menu/menu-types/horizontal-menu.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/core/menu/menu-types/vertical-overlay-menu.css">
	<link rel="stylesheet" type="text/css" href="app-assets/css/plugins/forms/checkboxes-radios.css">
	 <link rel="stylesheet" type="text/css" href="app-assets/bootstrap-datepicker/css/datepicker.css">
    <link rel="stylesheet" href="assets/css/app.min.css"/>
    
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>
<body data-open="hover" data-menu="horizontal-menu" data-col="2-columns" class="horizontal-layout horizontal-menu  2-columns  fixed-navbar">
 
<script src="assets/js/header.js"></script> 
<script src="assets/js/menu.js"></script> 
<!--<script language="javascript" type="text/javascript">
 				document.getElementById('cmpny').className="dropdown active";
				document.getElementById('abt').style.backgroundColor="#16baaf";
			</script> -->

<div class="robust-content container-fluid center-layout mt-2 mb-2">
	<div class="content-wrapper">
		<div class="content-body">
<!-- Basic initialization -->

			<section id="initialization">
			<form method="post" name="add"  id="add" action="Agency_Add"  enctype="multipart/form-data">
			 <input type="hidden" name="SubId" id="SubId" value="${SubId }"> 
 				<div class="row">
    				<div class="col-xs-12">
      					<div class="card">
        					<div class="card-header">
          						<h4 class="card-title" id="basic-layout-form">Add Subscription Details</h4>
          				
        					</div>
                            <div class="card-body">
                            	<div class="card-block">
                                	<form class="form form-horizontal">
                                  		<div class="form-body">
                                    		<div class="row" >
                                      			<div class="col-md-4">
                                        			<div class="form-group row">
                                          				<label class="col-md-5 label-control m-t-5" for="userinput1">Subscriber Name</label>
                                          					<div class="col-md-7">
                                            					<input  class="form-control" name="SubName" id="SubName"  placeholder="Subscriber Name" value="${SubName}"/>
                                          					</div>
                                        			</div>
                                        			<div class="form-group row">
                                         				<label class="col-md-5 label-control m-t-5" for="userinput1">No of Company</label>
                                          					<div class="col-md-7">
                                            					<input  class="form-control" name="NoCompany" id="NoCompany" value="${NoCompany}" placeholder="No of Company"/>
                                          					</div>
                                        			</div>
                                      			</div>
                                                <div class="col-md-4">
                                               
                                                    <div class="form-group row">
                                                      <label class="col-md-4 label-control m-t-5" for="userinput2">Start Date</label>
                                                      <div class="col-md-8">
                                                       <div class="input-group date">
                                                    <input type="text" data-date-format="yyyy-mm-dd" name="StartDate" id="StartDate" 
                                                     autocomplete="off" placeholder="yyyy-mm-dd" class="datepicker-default form-control" value="${StartDate}"/>
                                                    <span class="input-group-addon">
                                                        <span class="icon-calendar3"></span>
                                                    </span>
                                                </div>
                                                      </div>
                                                    </div>
                                                    <div class="form-group row">
                                                      <label class="col-md-4 label-control m-t-5" for="userinput1">No of User</label>
                                                      <div class="col-md-8">
                                                        <input  class="form-control" name="NoUser" id="NoUser" value="${NoUser}"  placeholder="No of User"/>
                                                      </div>
                                                    </div>
                                                 </div>
                                                 <div class="col-md-4">
                                                    <div class="form-group row">
                                                      <label class="col-md-4 label-control m-t-5" for="userinput2">End Date</label>
                                                      <div class="col-md-8">
                                                       <div class="input-group date">
                                                    <input type="text" data-date-format="yyyy-mm-dd" name="EndDate" id="EndDate" autocomplete="off" placeholder="yyyy-mm-dd" class="datepicker-default form-control" value="${EndDate}"/>
                                                    <span class="input-group-addon">
                                                        <span class="icon-calendar3"></span>
                                                    </span>
                                                </div>
                                                      </div>
                                                    </div>
                                                    <div class="form-group row">
                                                      <label class="col-md-4 label-control m-t-5" for="userinput2">Modules</label>
                                                      <div class="col-md-8">
                                                        <select  name="Modules" value="${Modules}" id="Modules" class="form-control select2 col-md-4">
                                                          <option value="0">Select Modules</option>
                                                          <option value="1">Module 1</option>
                                                          <option value="2">Module 2</option>
                                                        </select>
                                                      </div>
                                                    </div>
                                                 </div>
                                    		</div>
                                            <div class="row">
                                              <div class="col-xl-12 col-lg-12">
                                                <div class="card">
                                                  <div class="card-body">
                                                    <div class="card-block">
                                                      <ul class="nav nav-tabs nav-top-border no-hover-bg">
                                                        <li class="nav-item"> <a class="nav-link active" id="baseIcon-tab11" data-toggle="tab" aria-controls="tabIcon11" href="#personal_info" aria-expanded="true"><i class="icon-user4"></i> Personal Information </a> </li>
                                                        <li class="nav-item"> <a class="nav-link" id="baseIcon-tab12" data-toggle="tab" aria-controls="tabIcon12" href="#additional_information" aria-expanded="false"><i class="icon-bank"></i> Additional Information</a> </li>
                                                          <li class="nav-item"> <a class="nav-link" id="baseIcon-tab13" data-toggle="tab" aria-controls="tabIcon13" href="#additional_file" aria-expanded="false"><i class="icon-bank"></i>Add File</a> </li>
                                                      </ul>
                                                      <div class="tab-content px-1 pt-1">
                                                        <div role="tabpanel" class="tab-pane active" id="personal_info" aria-expanded="true" aria-labelledby="baseIcon-tab11">
                                                          <div class="row">
                                                            <div class="col-md-5">
                                                              <div class="form-group row">
                                                                <label class="col-md-3 label-control m-t-5" for="userinput2">Contact Person</label>
                                                                <div class="col-md-9">
                                                                  <input  class="form-control" name="ContactPer" id="ContactPer" value="${ContactPer}"  placeholder="Contact Person" />
                                                                </div>
                                                              </div>
                                                              <div class="form-group row">
                                                                <label class="col-md-3 label-control m-t-5" for="userinput2">Address</label>
                                                                <div class="col-md-9">
                                                                  <input  class="form-control" name="Address" id="Address"  placeholder="Address line 1" value="${address}"/>
                                                                  <input  class="form-control m-t-5"  placeholder="Address line 2" />
                                                                  <input  class="form-control m-t-5"  placeholder="Address line 3" />
                                                                </div>
                                                              </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                              <div class="form-group row">
                                                                <label class="col-md-3 label-control m-t-5" for="userinput5">Country</label>
                                                                <div class="col-md-9">
                                                                  <select  name="CountryId" value="${CountryId}" class="form-control select2">
                                                                    <option selected>Select Country</option>
												  						<c:forEach  items="${countrylist}" var="data">
												  						<c:if test="${data[0]==CountryId}">
																							<option value="${data[0] }" selected="selected">${data[1]}</option>
																					</c:if>
																					<c:if test="${data[0]!=CountryId}">
																							<option value="${data[0] }">${data[1]}</option>
																					</c:if>									  							
												  						</c:forEach> 	
                                                                  </select>
                                                                </div>
                                                              </div>
                                                              <div class="form-group row">
                                                                <label class="col-md-3 label-control m-t-5" for="userinput5">State</label>
                                                                <div class="col-md-9">
                                                                  <select  name="StateId" value="${StateId}" class="form-control select2">
                                                                   <option selected>Select State</option>
												  						<c:forEach  items="${statelist}" var="data">
												  						<c:if test="${data[0]==StateId}">
																							<option value="${data[0] }" selected="selected">${data[1]}</option>
																					</c:if>
																					<c:if test="${data[0]!=StateId}">
																							<option value="${data[0] }">${data[1]}</option>
																					</c:if>									  							
												  						</c:forEach> 	
                                                                  </select>
                                                                </div>
                                                              </div>
                                                              <div class="form-group row">
                                                                <label class="col-md-3 label-control m-t-5" for="userinput5">City</label>
                                                                <div class="col-md-9">
                                                                  <select  name="CityId" value="${CityId}" class="form-control select2">
                                                                    <option selected>Select City</option>
												  						 <c:forEach  items="${citylist}" var="data">
												  						<c:if test="${data[0]==CityId}">
																							<option value="${data[0] }" selected="selected">${data[1]}</option>
																					</c:if>
																					<c:if test="${data[0]!=CityId}">
																							<option value="${data[0] }">${data[1]}</option>
																					</c:if>									  							
												  						</c:forEach>  
                                                                  </select>
                                                                </div>
                                                              </div>
                                                              <div class="form-group row">
                                                                <label class="col-md-3 label-control m-t-5" for="userinput2">Pincode</label>
                                                                <div class="col-md-9">
                                                                  <input  class="form-control" name="Pincode" id="Pincode" value="${Pincode}" placeholder="Pincode"/>
                                                                </div>
                                                              </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                              <div class="form-group row">
                                                                <label class="col-md-4 label-control m-t-5" for="userinput2">Phone No.</label>
                                                                <div class="col-md-8">
                                                                  <input  class="form-control" name="PhoneNo" id="PhoneNo" value="${PhoneNo}"  placeholder="Phone No."/>
                                                                </div>
                                                              </div>
                                                              <div class="form-group row">
                                                                <label class="col-md-4 label-control m-t-5" for="userinput2">Mobile No.</label>
                                                                <div class="col-md-8">
                                                                  <input  class="form-control" name="MobileNo" id="MobileNo" value="${MobileNo}"  placeholder="Mobile No."/>
                                                                </div>
                                                              </div>
                                                              <div class="form-group row">
                                                                <label class="col-md-4 label-control m-t-5" for="userinput2">FAX</label>
                                                                <div class="col-md-8">
                                                                  <input  class="form-control" name="Fax" id="Fax" value="${Fax}"  placeholder="FAX"/>
                                                                </div>
                                                              </div>
                                                              <div class="form-group row">
                                                                <label class="col-md-4 label-control m-t-5" for="userinput2">Email</label>
                                                                <div class="col-md-8">
                                                                  <input  class="form-control" name="Email" id="Email" value="${Email}"  placeholder="Email"/>
                                                                </div>
                                                              </div>
                                                            </div>
                                                          </div>
                                                        </div>
                                                        <div role="tabpanel" class="tab-pane" id="additional_information" aria-expanded="true" aria-labelledby="baseIcon-tab12">
                                                          <div class="col-md-4">
                                                              <div class="row ">
                                                                  <fieldset>
                                                                      <input type="checkbox" name="Ch1" id="Ch1">
                                                                        <input value="${checkbox1h}" type="hidden" name="checkbox1h" id="checkbox1h">
                                                                      <label for="input-15">Estimate Approval Before Sending PO</label>
                                                                  </fieldset>
                                                              </div>
                                                            <div class="row ">
                                                              <fieldset>
                                                                <input type="checkbox" name="Ch2" id="Ch2">
                                                                 <input value="${checkbox2h}" type="hidden" name="checkbox2h" id="checkbox2h">
                                                                <label for="input-15">Estimate Approval Before Sending PO</label>
                                                              </fieldset>
                                                            </div>
                                                          </div>
                                                          <div class="col-md-4">
                                                            <div class="row ">
                                                              <fieldset>
                                                                <input type="checkbox" name="Ch3" id="Ch3">
                                                                 <input value="${checkbox3h}" type="hidden" name="checkbox3h" id="checkbox3h">
                                                                <label for="input-15">Doc in Pdf Only</label>
                                                              </fieldset>
                                                            </div>
                                                            <div class="row ">
                                                              <fieldset>
                                                                <input type="checkbox" name="Ch4" id="Ch4">
                                                                 <input value="${checkbox4h}" type="hidden" name="checkbox4h" id="checkbox4h">
                                                                <label for="input-15">Sub Ledger Enable </label>
                                                              </fieldset>
                                                            </div>
                                                          </div>
                                                          <div class="col-md-4">
                                                            <div class="row ">
                                                              <fieldset>
                                                                <input type="checkbox" name="Ch5" id="Ch5">
                                                                 <input value="${checkbox5h}" type="hidden" name="checkbox5h" id="checkbox5h">
                                                                <label for="input-15">Record Fridge After Download</label>
                                                              </fieldset>
                                                            </div>
                                                          </div>
                                                        </div>
                                                          <div role="tabpanel" class="tab-pane" id="additional_file" aria-expanded="true" aria-labelledby="baseIcon-tab12">
                                                              <div class="col-md-4">
                                                                  <div class="row ">
                                                                      <label id="projectinput7" class="file center-block mb-0">
                                                                          <input type="file" name="myFile" id="myFile" >
                                                                          <span class="file-custom"></span>
                                                                          ======${myFileFileName  }<img alt="no image to display" src="file:///C://Users/Admin/Pictures/store/${myFileFileName  }" height="50" width="50">
                                                                      </label>
                                                                  </div>
                                                              </div>
                                                          </div>

                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                              </div>
                                              <div class="form-actions mt-0">
                                               <!-- <input type="button" onclick="Add()" class="ui-button ui-widget ui-corner-all btn-info borderbtn mr-1"> <span class="ui-icon icon-check2"></span>Save --> 
                                               <a href="javascript:savedata();" id="save" class="ui-button ui-widget ui-corner-all btn-info borderbtn mr-1"> <span class="ui-icon icon-check2"></span>Save</a> 												
                                                <a href="Agency_main" class="ui-button ui-widget ui-corner-all btn-danger borderbtn mr-1"> <span class="ui-icon icon-cross2"></span>Cancel </a>
                                                 
                                              </div>
                                            </div>
                                </form>
                              </div>
                            </div>
      </div>
    </div>
  </div>
</form>
</section>
</div>
</div>
</div>

<!--/ Basic initialization -->

<div class="modal fade text-xs-left" id="addressmodal"  role="dialog" aria-labelledby="myModalLabel13" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body">
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label for="projectinput1">Pincode</label>
              <input  class="form-control"  placeholder="Pincode"/>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label for="projectinput1">Contact No</label>
              <input  class="form-control"  placeholder="Pincode"/>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="modal fade text-xs-left" id="codegenerate"  role="dialog" aria-labelledby="myModalLabel13" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-blue-grey white">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
        <h4 class="modal-title">GSTIN Details</h4>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-12">
            <label for="projectinput1">GSTIN No</label>
          </div>
          <div class="col-md-2">
            <div class="form-group mb-0">
              <input  class="form-control" />
              <div class="text-md-center"> <span class="icon-arrow-up3 text-md-center font-medium-3"></span></div>
              <div class="text-md-center">
                <label for="projectinput1">State Code</label>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group mb-0">
              <input  class="form-control"/>
              <div class="text-md-center"> <span class="icon-arrow-up3 text-md-center font-medium-3"></span></div>
              <div class="text-md-center">
                <label for="projectinput1">PAN Number</label>
              </div>
            </div>
          </div>
          <div class="col-md-2">
            <div class="form-group mb-0">
              <input  class="form-control"/>
              <div class="text-md-center"> <span class="icon-arrow-up3 text-md-center font-medium-3"></span></div>
              <div class="text-md-center">
                <label for="projectinput1">1/z/Seq</label>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="form-group">
              <label for="projectinput1">Address</label>
              <input  class="form-control"  placeholder="Address line 1" />
              <input  class="form-control m-t-5"  placeholder="Address line 2" />
              <input  class="form-control m-t-5 "  placeholder="Address line 3" />
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4">
            <div class="form-group">
              <label for="projectinput1">Country</label>
              <select  name="interested" class="form-control select2">
                <option value="none">India</option>
                <option value="design">Canada</option>
                <option value="development">Amrica</option>
                <option value="illustration">UK</option>
              </select>
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label for="projectinput1">State</label>
              <select  name="interested" class="form-control select2">
                <option value="none">Gujarat</option>
                <option value="design">Panjab</option>
                <option value="development">Rajasthan</option>
              </select>
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label for="projectinput1">City</label>
              <select  name="interested" class="form-control select2">
                <option value="none">Junagadh</option>
                <option value="design">Ahmedabad</option>
                <option value="development">Surat</option>
                <option value="illustration">Rajkot</option>
              </select>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label for="projectinput1">Pincode</label>
              <input  class="form-control"  placeholder="Pincode"/>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label for="projectinput1">Contact No</label>
              <input  class="form-control"  placeholder="Pincode"/>
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn grey btn-outline-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-outline-blue-grey">Save changes</button>
      </div>
    </div>
  </div>
</div>
<script src="assets/js/footer.js"></script>

<!-- BEGIN VENDOR JS-->
    <script src="app-assets/js/core/libraries/jquery.min.js"></script>
   
    <!-- BEGIN VENDOR JS-->
    <script src="app-assets/vendors/js/ui/tether.min.js" type="text/javascript"></script>
    <script src="app-assets/js/core/libraries/bootstrap.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/ui/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/ui/unison.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/ui/blockUI.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/ui/jquery.matchHeight-min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/ui/jquery-sliding-menu.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/sliders/slick/slick.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/ui/screenfull.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/extensions/pace.min.js" type="text/javascript"></script>
    <!-- BEGIN PAGE VENDOR JS-->
    <script type="text/javascript" src="app-assets/vendors/js/ui/jquery.sticky.js"></script>
	<script src="app-assets/vendors/js/forms/icheck/icheck.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="app-assets/vendors/js/ui/prism.min.js"></script>
    <!-- END PAGE VENDOR JS-->
    <script src="app-assets/vendors/js/tables/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/tables/datatable/dataTables.rowReorder.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/forms/icheck/icheck.min.js" type="text/javascript"></script>
    <script src="app-assets/js/core/libraries/jquery_ui/jquery-ui.min.js" type="text/javascript"></script>
    <script src="app-assets/bootstrap-datepicker/js/bootstrap-datepicker.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/forms/select/select2.min.js" type="text/javascript"></script>
    <script src="app-assets/js/core/app-menu.js" type="text/javascript"></script>
    <script src="app-assets/js/core/app.js" type="text/javascript"></script>
    <script src="app-assets/js/scripts/ui/fullscreenSearch.js" type="text/javascript"></script>
    <script src="app-assets/js/scripts/pages/project-task-list.js" type="text/javascript"></script>
	
	<script src="app-assets/js/scripts/forms/checkbox-radio.js" type="text/javascript"></script>
    <!--<script src="app-assets/js/core/app.min.js"></script>
    <script src="app-assets/js/scripts/tables/datatables-extensions/datatable-rowreorder.js" type="text/javascript"></script>-->
<script src="assets/js/scripts.js" type="text/javascript"></script> 
<script type="text/javascript">
   
 var editState_Id=0,editCity_Id=0;
 $(document).ready(function(){
 if($('#Ch1').val()=="Y")
 {
 $('#checkbox1').prop('checked',true);
 	
 }
 else{
  $('#Ch1').prop('checked',false);
 }
 
  if($('#Ch2').val()=="Y")
 {
$('#checkbox2').prop('checked',true); 	
 }
 else{
  $('#Ch2').prop('checked',false);
 }
 
  if($('#Ch3').val()=="Y")
 {
$('#checkbox3').prop('checked',true); 	
 }
 else{
  $('#Ch3').prop('checked',false);
 }
 
  if($('#Ch4').val()=="Y")
 {
$('#checkbox4').prop('checked',true); 	
 }
 else{
  $('#Ch4').prop('checked',false);
 }
 
  if($('#Ch5').val()=="Y")
 {
$('#checkbox5').prop('checked',true); 	
 }
 else{
  $('#Ch5').prop('checked',false);
 }
 });
   
   
   
   
   
   
   
   
     function savedata()
{	
	document.add.method="post";
	document.add.action="Agency_Add";
	document.add.submit();
}
       
       

     $(document).on('click','#save',function(){
		var StartDate =new Date( $('#StartDate').val());
		var EndDate = new Date($('#EndDate').val());
		
		if($('#SubName').val().trim()==""){
						alert("enter Name");
            			$("#SubName").val('');
            			$("#SubName").focus();
            			return false;
		}
		else if($('#NoCompany').val().trim()==""){
				alert("enter totalcompany");
	            			$("#NoCompany").val('');
	            			$("#NoCompany").focus();
	            			return false;
		}
		else if($('#StartDate').val().trim()==""){
		alert("enter StartDate");
           			$("#StartDate").val('');
           			$("#StartDate").focus();
           			return false;
		}
		else if($('#EndDate').val().trim()==""){
		alert("Enter EndDate");
           			$("#EndDate").val('');
           			$("#EndDate").focus();
           			return false;
		}
		else if($('#NoUser').val().trim()==""){
		alert("Enter totaluser");
           			$("#NoUser").val('');
           			$("#NoUser").focus();
           			return false;
		}
		
		else if($('#Modules').val()=="0")
            		{
            			alert("Select Modules");
            			return false;
            		}
   		else if($('#ContactPer').val().trim()=="")
   		{
   			alert("Enter Contact person");
           			$("#ContactPer").val('');
           			$("#ContactPer").focus();
           			return false;
   		}
   		else if($('#Pincode').val().trim()=="")
   		{
   			alert("Enter pincode");
           			$("#Pincode").val('');
           			$("#Pincode").focus();
           			return false;
   		}
   		else if($('#Address').val().trim()=="")
   		{
   			alert("Enter Address");
           			$("#Address").val('');
           			$("#Address").focus();
           			return false;
   		}
   		
  		else if($('#PhoneNo').val()=='')
   		{
   			alert("Enter PhoneNo");
           			$("#PhoneNo").val('');
           			$("#PhoneNo").focus();
           			return false;
   		}
   		else if($('#MobileNo').val().trim()==""|| $('#MobileNo').val()==undefined)
   		{
   			alert("Enter mobileNo");
           			$("#MobileNo").val('');
           			$("#MobileNo").focus();
           			return false;
   		}
   		else if($('#Fax').val().trim()==""|| $('#Fax').val()==undefined)
   		{
   			alert("Enter fax");
           			$("#Fax").val('');
           			$("#Fax").focus();
           			return false;
   		}
   		else if($('#Email').val().trim()==""|| $('#Email').val()==undefined)
            		{
            			alert("Enter Email");
            			$("#Email").val('');
            			$("#Email").focus();
            			return false;
            		}
   		if(!ValidateSubName($("#SubName").val()))
   		{
   			alert("Enter only character in name");
   			$("#SubName").focus();
   			return false;
   		} 
    	if (!ValidateEmail($("#Email").val())) 
           		{
           			alert("Invalid Email address.");
           			$("#Email").focus();
           			return false;
       			}
       	if(!ValidatePincode($("#Pincode").val()))
       			{
       				alert('Pincode number must be 6 digits.');
       				$("#Pincode").focus();
           			return false;
       			}
       			
     
		 if(!ValidateMobileNo($("#MobileNo").val()))
		{
			alert('Mobile number must be 10 digits. and contain only digits');
			$("#MobileNo").focus();
   			return false;
		}	
        if(!ValidateFax($("#Fax").val()))
       			{
       				alert('Fax number must be 11 digits. and contain only digits');
       				$("#Fax").focus();
           			return false;
       			}
       	if(EndDate<StartDate)
       	{
       		alert("end date must greter then start date");
       		return false;
       	}
       	
			
		});
			function ValidatePhoneNo(number)
				{
					
					number = number.replace(/[^0-9]/g,''); 
					$("#PhoneNo").val(number);
        			if (number.length != 9)
        			{
            			return false;
        			}
        			else
        			{
        				return true;
        			}
				}
				function ValidateFax(number)
				{
					
					number = number.replace(/[^0-9]/g,''); 
					$("#Fax").val(number);
        			if (number.length != 11)
        			{
            			return false;
        			}
        			else
        			{
        				return true;
        			}
				}
				
			function ValidateMobileNo(number)
				{
					
					number = number.replace(/[^0-9]/g,''); 
					$("#MobileNo").val(number);
        			if (number.length != 10)
        			{
            			return false;
        			}
        			else
        			{
        				return true;
        			}
				}
				
				function ValidatePincode(number)
				{
					
					number = number.replace(/[^0-9]/g,''); 
					$("#Pincode").val(number);
        			if (number.length != 6)
        			{
            			return false;
        			}
        			else
        			{
        				return true;
        			}
				}
				
			function ValidateSubName(name)
				{
					var expr=/^[A-Za-z ]*$/;
					return expr.test(name);
				}
				function ValidateEmail(email) 
				{
        			var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        			return expr.test(email);
   				};	
			      
     
 		</script>
       
 
</body>
</html>