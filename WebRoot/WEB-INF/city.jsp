<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
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
    <!-- Horizontal navigation-->
    <div class="robust-content container-fluid center-layout mt-2">
      <div class="content-wrapper">
        
        <div class="content-body"><!-- Basic initialization -->
<section id="initialization">


	<div class="row">
		<div class="col-xs-12">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title">Company Master</h4>
					<a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
					<br>
					
					<form name="main" id="main">
					 <div class="col-sm-3 ">
                           <div class="form-group m-b-0">
                               
                               <div class="fg-line">
                                   <input type="text" name="ser" id="ser" class="form-control input-sm" value="${ser}" placeholder="Type Text to Search">
                               </div>
                           </div>
                       </div>
                                
                                 <div class="col-md-4 m-t-20">
                                    <button onclick="Ser()" class="btn btn-primary btn-icon-text waves-effect pull-right"><i class="zmdi zmdi-search"></i> Search</button>
                                </div>
					</form>
					
					<div class="heading-elements">
						 <div class="content-header-right text-md-right col-md-12 col-xs-12">
            <a href="#custom"  data-toggle="modal"><button class="ui-button ui-widget ui-corner-all btn-info borderbtn">Company <span class="ui-icon icon-android-add"></span></button></a>
          </div>
					</div>
				</div>
				<div class="card-body collapse in">
					<div class="card-block card-dashboard">
						<div class="row">
							<div class="col-md-12">
								<div class="table-responsive">
									<table class="table table-striped table-bordered">
										<thead>
										<tr>
											<th>Company ID</th>
											<th>Company Name</th>
											<th>State Name</th>
											<th>City Name</th>
											<th>Action</th>
										</tr>
										</thead>
										<tbody id="tdata">
										<c:forEach  items="${list3}" var="data">
                        
								<tr>
      								<td>${data[0]}</td>
      								<td>${data[1]}</td>
      								<td>${data[2]}</td>
      								<td>${data[3]}</td>
      								<td><a href="#" onclick="editdata('${data[0]}','${data[1]}','${data[11]}',
      								'${data[10]}','${data[9]}','${data[4]}','${data[5]}','${data[6]}','${data[7]}',
      								'${data[3]}','${data[11]}','${data[12]}')" class="text-primary"><i class="icon-edit"></i></a><a href="#" onclick="checkDelete('${data[0]}')" class="m-l-10 text-danger"><i class="icon-close"></i></a></td>
										</tr>
							 </c:forEach>

										
										</tbody>
										<tfoot>
										<tr>
											<th>Company ID</th>
											<th>Company Name</th>
											<th>State Name</th>
											<th>City Name</th>
											<th>Action</th>
										</tr>
										</tfoot>
									</table>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
							
							<input type="hidden" name="SubId" id="subvalset" value=" ">
 <input type="hidden" name="displayrec" value="${displayrec}" id="dis">
<input type="hidden" name="currentpage" value="${currentpage}" id="page">
<input type="hidden" name="totalpage" value="${totalpage}" id="tp"> 
<input type="hidden" name="totalrecord" value="${totalrecord}" id="totalrecord">
<input type="hidden" name="page" value="${page}" id="curpage"/>                	
							
							
								 <a href="javascript:calpage(1,0);"  class="btn btn-icon btn-secondary btn-round mr-1"><i class="icon-rewind"></i></a>
								<a href="javascript:calpage(${page},-1);" class="btn btn-icon btn-secondary btn-round mr-1"><i class="icon-chevron-left"></i></a>
								
								<c:forEach var='a' begin="1" end="${tp}">
								<a href="javascript:calpage(${a},0);" class="btn btn-icon btn-outline-danger btn-round mr-1">${a}</a>
								</c:forEach>
								<a href="javascript:calpage(${page},+1);" class="btn btn-icon btn-secondary btn-round mr-1"><i class="icon-chevron-right"></i></a>
								<a href="javascript:calpage(${tp},0);" class="btn btn-icon btn-secondary btn-round mr-1"><i class="icon-fast-forward2"></i></a>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!--/ Basic initialization -->
        </div>
      </div>
    </div>

<form name="cform" id="cform">
<input type="hidden" name="add" id="add" value=" ">
<input type="hidden" name="CompanyId" id="CompanyId"/>
<div class="modal fade text-xs-left" id="custom" role="dialog" aria-labelledby="myModalLabel13" aria-hidden="true">
									  <div class="modal-dialog modal-lg" role="document">
										<div class="modal-content">
										  <div class="modal-header bg-blue-grey white">
											<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											  <span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel13">Add Company</h4>
										  </div>
										
                                          <div class="modal-body">
											<div class="row">
                                           
                                             <div class="col-md-4">
                                            <div class="form-group">
											<label for="projectinput1">Subscription</label>
			    	                        <select  name="SubId" id="SubId" class="form-control select2">
			                                <option selected>Select Subcriber</option>
					  						<c:forEach  items="${list1}" var="data">
					  						<option value="${ data[0]}">${data[1]}</option>									  							
					  						</c:forEach> 
			                            </select>
										</div>
                                        </div>
												<div class="col-md-4">
													<div class="form-group">
														<label for="projectinput1">Company</label>
														<input  class="form-control" name="Company" id="Company"  placeholder="Enter Company Name"/>
													</div>
												</div>

												<div class="col-md-4">
													<div class="form-group">
														<label for="projectinput1">Short Name</label>
														<input  class="form-control" name="ShortName" id="ShortName" placeholder="Enter Compnay Short Name"/>
													</div>
												</div>

                                        </div>
                                        <div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label for="projectinput1">Address</label>
													<textarea  class="form-control" name="Address" id="Address"  placeholder="Address"></textarea>
												</div>
											</div>
                                    	</div>

											  <div class="row">

												  <div class="col-md-4">
													  <div class="form-group">
														  <label for="projectinput1">Country</label>
														  <select name="CountryId" id="CountryId" class="form-control select2">
															   <option selected>Select Country</option>
											  						<c:forEach items="${countrylist}" var="data">
											  						<option value="${ data[0]}">${data[1]}</option>									  							
											  						</c:forEach>
														  </select>
													  </div>
												  </div>
												  <div class="col-md-4">
													  <div class="form-group">
														  <label for="projectinput1">State</label>
														  <select  name="StateId" id="StateId" class="form-control select2">
															  <option selected>Select State</option>
											  						<c:forEach  items="${statelist}" var="data">
											  						<option value="${ data[0]}">${data[1]}</option>									  							
											  						</c:forEach> 
														  </select>
													  </div>
												  </div>
												  <div class="col-md-4">
													  <div class="form-group">
														  <label for="projectinput1">City</label>
														  <select  name="CityId" id="CityId" class="form-control select2">
													   <option selected>Select City</option>
										  						<c:forEach  items="${citylist}" var="data">
										  						<option value="${data[0]}">${data[1]}</option>									  							
										  						</c:forEach>
														  </select>
													  </div>
												  </div>
											  </div>

											  <div class="row">
												  <div class="col-md-4">
													  <div class="form-group">
														  <label for="projectinput1">Contact No</label>
														  <input  class="form-control" name="ContactNo" id="ContactNo"  placeholder="Enter Compnay Contact Number"/>
														  </div>
													  
												  </div>
												  <div class="col-md-4">
													  <div class="form-group">
														  <label for="projectinput1">Email</label>
														  <input  class="form-control" name="Email" id="Email"   placeholder="Enter Compnay Email"/>
													  </div>
												  </div>
												  <div class="col-md-4">
													  <div class="form-group">
														  <label for="projectinput1">Website</label>
														  <input  class="form-control" name="Website" id="Website"  placeholder="Enter Compnay Website"/>
													  </div>
												  </div>
											  </div>

                                         </div>
										  <div class="modal-footer">
											<button type="button" class="btn grey btn-outline-secondary" data-dismiss="modal">Close</button>
											<button type="button" onclick="Add()" class="btn btn-outline-blue-grey">Save changes</button>
										
										  </div>
										</div>
									  </div>
									</div>
									</form>
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
    <script type="text/javascript" src="app-assets/vendors/js/ui/prism.min.js"></script>
    <!-- END PAGE VENDOR JS-->
    <script src="app-assets/vendors/js/tables/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/tables/datatable/dataTables.rowReorder.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/forms/icheck/icheck.min.js" type="text/javascript"></script>
    <script src="app-assets/js/core/libraries/jquery_ui/jquery-ui.min.js" type="text/javascript"></script>
    <script src="app-assets/js/scripts/ui/jquery-ui/date-pickers.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/forms/select/select2.min.js" type="text/javascript"></script>
     <script src="app-assets/js/core/app-menu.js" type="text/javascript"></script>
    <script src="app-assets/js/core/app.js" type="text/javascript"></script>
    <script src="app-assets/js/scripts/ui/fullscreenSearch.js" type="text/javascript"></script>
    <script src="app-assets/js/scripts/pages/project-task-list.js" type="text/javascript"></script>
    <!--<script src="app-assets/js/core/app.min.js"></script>
    <script src="app-assets/js/scripts/tables/datatables-extensions/datatable-rowreorder.js" type="text/javascript"></script>-->
    <script src="assets/js/scripts.js" type="text/javascript"></script> 
  
  <script type="text/javascript">
  var editstate_id=0,editcity_id=0;
  var editsubid=0;
  var edit=0;
  
  
  function calpage(page,incr){
		
		$.ajax({url:"Company_calpage",
		data:{
	  	page:page,incr:incr
	  	},
		success: function(result){
	  		
	  		$('#tdata').empty().append(result);}
		});
	}
  
  
     function Add()
       {
    	if(check_add())
    		{
    		$("#add").val(add);
    	   	document.cform.method="post";
    		document.cform.action="Company_Add";
    		document.cform.submit();
    		}
		
       } 
    
   function editdata(SubName,Company,CountryName,StateName,CityName,ShortName,Address,ContactNo,Email,Website)
		{
	   editsubid=SubName;
	   
		 $("#SubId").val(SubName).trigger('change');
		 	$("#Company").val(Company);
			$("#ShortName").val(ShortName);
			$("#Address").val(Address);
			$("#ContactNo").val(ContactNo);
			$("#Email").val(Email);
			$("#WebSite").val(Website);
			$("#CountryId").val(CountryName).trigger('change');
			$("#StateId").val(StateName).trigger('change');
			$("#CityId").val(CityName).trigger('change');
			//document.cform.method="post";
			//document.cform.action="Company_redirecttoadd";
			//document.cform.submit();
			$("#custom").modal('show');		
			edit=0;
	}
	
   function checkDelete(SubName)
		{	
	   $("#CompanyId").val(SubName);
		document.cform.method="POST";
		document.cform.action="Company_Deletedata";
		document.cform.submit();
	}

   
   function Ser()
   {		
   			var ser=$("#ser").val();
   			alert("ser=="+ser);
   			document.main.method="POST";
			document.main.action="Company_Ser";
  			document.main.submit();	
   } 

   
   $("#SubId").change(function(){
	   var  value= $('#SubId').val();
	   
	   if(value!=0)
	   {
	   		if(editsubid==value)
	   		{
	   			$('#SubId').prop("disabled",true);
	   			edit=0;
	   			
	   			
	   			
			   		$("#Company").prop("disabled",false);
			   		$("#ShortName").prop("disabled",false);
			   		$("#Address").prop("disabled",false);
			   		$("#CountryName").prop("disabled",false);
			   		$("#StateName").prop("disabled",false);
			   		$("#CityName").prop("disabled",false);
			   		$("#ContactNo").prop("disabled",false);
			   		$("#Email").prop("disabled",false);
			   		$("#WebSite").prop("disabled",false);
			   
	   			return false;
	   		}
	   		if(edit==1)
	   		{
	   			$('#SubId').prop("disabled",true);
	   			edit=0;
	   			return false;
	   		}
	   		
		   $.ajax({url:"SubId",
			   data:{
			   SubId:$('#SubId').val()
		   },
		   datatype:'text',
		   type:'post',
		   success: function(result){
		   if(result=="Y")
		   {
		   		$("#Company").prop("disabled",true);
		   		$("#ShortName").prop("disabled",true);
		   		$("#Address").prop("disabled",true);
		   		$("#CountryId").prop("disabled",true);
		   		$("#StateId").prop("disabled",true);
		   		$("#CityId").prop("disabled",true);
		   		$("#ContactNo").prop("disabled",true);
		   		$("#Email").prop("disabled",true);
		   		$("#Website").prop("disabled",true);
		   		alert("This subscriber have already maximum compny");
		   }  
		   else
		   {
		   		$("#Company").prop("disabled",false);
		   		$("#ShortName").prop("disabled",false);
		   		$("#Address").prop("disabled",false);
		   		$("#CountryId").prop("disabled",false);
		   		$("#StateId").prop("disabled",false);
		   		$("#CityId").prop("disabled",false);
		   		$("#ContactNo").prop("disabled",false);
		   		$("#Email").prop("disabled",false);
		   		$("#Website").prop("disabled",false);
		   } 
	   }
	   });
	  }
	  else
	  {
	  			$("#Company").prop("disabled",false);
		   		$("#ShortName").prop("disabled",false);
		   		$("#Address").prop("disabled",false);
		   		$("#CountryId").prop("disabled",false);
		   		$("#StateId").prop("disabled",false);
		   		$("#CityId").prop("disabled",false);
		   		$("#ContactNo").prop("disabled",false);
		   		$("#Email").prop("disabled",false);
		   		$("#Website").prop("disabled",false);
	  }   		
});

   
   
   function check_add()
	{	
	   
		var SubId = $("#SubId").val();
		var Company = $("#Company").val();
		var ShortName = $("#ShortName").val();
		var Email = $("#Email").val();
		var Website = $("#Website").val();
		var ContactNo = $("#ContactNo").val();
		var Address = $("#Address").val();
		
		
		if(SubId==0)
		{
			alert("Select subscriber");
			return false;
		}
		else if(Company=="")
		{
			alert("Enter compny name");
			return false;
		}
		else if(ShortName=="")
		{
			alert("Enter short name");
			return false;
		}
		else if(Address=="")
		{
			alert("Enter address");
			return false;
		}
		
		else if(ContactNo=="")
		{
			alert("Enter contact number");
			return false;
		}
		else if(Email=="")
		{
			alert("Enter email");
			return false;
		}
		else if(Website=="")
		{
			alert("Enter website");
			return false;
		}
		if(!ValidatePhoneNo(ContactNo))
		{
			alert('Contact number must be 10 digits.');
  			return false;
		}
		if (!ValidateEmail(Email)) 
      	{
      		alert("Invalid email address.");
      		return false;
  		}
		
		function ValidateEmail(email) 
		{
			var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
			return expr.test(email);
			};	
		
		function ValidatePhoneNo(number)
		{
			
			number = number.replace(/[^0-9]/g,''); 
			$("#ContactNo").val(number);
			if (number.length != 10)
			{
    			return false;
			}
			else
			{
				return true;
			}
		}
		
		document.cform.method="post";
		document.cform.action="Company_Add";
		document.cform.submit();
	}
   
   
  </script>
  
  </body>
</html>