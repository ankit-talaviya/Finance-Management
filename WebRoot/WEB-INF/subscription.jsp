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

    <link rel="stylesheet" type="text/css" href="app-assets/fonts/icomoon.css">
    <link rel="stylesheet" type="text/css" href="app-assets/fonts/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/forms/icheck/icheck.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/forms/icheck/custom.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/ui/jquery-ui.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/forms/selects/select2.min.css">

    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/sliders/slick/slick.css">
	<link rel="stylesheet" type="text/css" href="app-assets/vendors/css/ui/jquery-ui.min.css">

    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/tables/datatable/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/tables/extensions/rowReorder.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/tables/extensions/responsive.dataTables.min.css">

    <link rel="stylesheet" type="text/css" href="app-assets/css/core/menu/menu-types/horizontal-menu.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/core/menu/menu-types/vertical-overlay-menu.css">
	<link rel="stylesheet" type="text/css" href="app-assets/css/plugins/ui/jqueryui.css">
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
<form id="sform" name="sform">
<input type="hidden" name="SubId" id="subvalset" value=" ">
 <input type="hidden" name="displayrec" value="${displayrec}" id="dis">
<input type="hidden" name="currentpage" value="${currentpage}" id="page">
<input type="hidden" name="totalpage" value="${totalpage }" id="tp"/> 
<input type="hidden" name="totalrecord" value="${totalrecord}" id="totalrecord">
<input type="hidden" name="page" value="${page}" id="curpage"/>                	
</form>

	<div class="row">
	
		<div class="col-xs-12">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title">Subscription Master</h4>
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
          	 <a href="Agency_redirecttoadd"><button  class="ui-button ui-widget ui-corner-all btn-info borderbtn">Subscription Detail <span class="ui-icon icon-android-add"></span></button><!-- </a> -->
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
											<th>Subscriber Id </th>
											<th>Subscriber Name</th>
											<th>Start Date</th>
											<th>End Date</th>
											<th>Address</th>
											<th>Action</th>
										</tr>
										</thead>
										<tbody id="tdata">
										<c:forEach  items="${list}" var="data">
                        
								<tr>
      								<td>${data[0]}</td>
      								<td>${data[1]}</td>
      								<td>${data[2]}</td>
      								<td>${data[3]}</td>
      								
      								<td>
										<a class="text-primary show-tooltip-animation mt-1" title="'${data[4]}'"><i class="icon-eye"></i></a>
									</td>
      								<td><a href="#" onclick="editdata('${data[0]}','${data[1]}','${data[2]}',
      								'${data[3]}','${data[4]}','${data[5]}','${data[6]}','${data[7]}','${data[8]}',
      								'${data[9]}','${data[10]}','${data[11]}','${data[12]}','${data[13]}','${data[14]}',
      								'${data[15]}','${data[16]}','${data[17]}')" class="text-primary"><i class="icon-edit"></i></a><a href="#" onclick="checkDelete('${data[0]}')" class="m-l-10 text-danger"><i class="icon-close"></i></a></td>
										</tr>
							 </c:forEach>

										</tbody>
										<tfoot>
										<tr>
											<th>Subscriber Id </th>
											<th>Subscriber Name</th>
											<th>Start Date</th>
											<th>End Date</th>
											<th>Address</th>
											<th>Action</th>
										</tr>
										</tfoot>
									</table>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
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

   <script src="assets/js/footer.js"></script>
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
	<script src="app-assets/js/core/libraries/jquery_ui/jquery-ui.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="app-assets/vendors/js/ui/prism.min.js"></script>
    <!-- END PAGE VENDOR JS-->
    <script src="app-assets/vendors/js/tables/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/tables/datatable/dataTables.rowReorder.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/forms/icheck/icheck.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/forms/select/select2.min.js" type="text/javascript"></script>
     <script src="app-assets/js/core/app-menu.js" type="text/javascript"></script>
    <script src="app-assets/js/core/app.js" type="text/javascript"></script>
    <script src="app-assets/js/scripts/ui/fullscreenSearch.js" type="text/javascript"></script>
    <script src="app-assets/js/scripts/pages/project-task-list.js" type="text/javascript"></script>
	<script src="app-assets/js/scripts/ui/jquery-ui/dialog-tooltip.js" type="text/javascript"></script>
    <!--<script src="app-assets/js/core/app.min.js"></script>
    <script src="app-assets/js/scripts/tables/datatables-extensions/datatable-rowreorder.js" type="text/javascript"></script>-->
    	<script src="assets/js/scripts.js" type="text/javascript"></script> 
 
 <script type="text/javascript">
  function calpage(page,incr){
		
		$.ajax({url:"Agency_calpage",
		data:{
	  	page:page,incr:incr
	  	},
		success: function(result){
	  		
	  		$('#tdata').empty().append(result);}
		});
	}
 
 
 
 function Add()
       {
       		
      		window.open("Agency_Add","_self");
       }
 
 /*-----------------Search------------------*/
 
 
  function Ser()
       {		
       			var ser=$("#ser").val();
       			
       			document.main.method="POST";
				document.main.action="Agency_Ser";
      			document.main.submit();	
       } 
       
       /*--------------Edit-----------------------*/
 
 function editdata(SubId,SubName,StartDate,EndDate,NoCompany,NoUser,Modules,ContactPer,Address,Pincode,PhoneNo,MobileNo,Email,Fax,Countryname,Statename,Cityname)
      		{
				$("#subvalset").val(SubId);
				
				
					
					document.sform.method="post";
					document.sform.action="Agency_redirecttoadd";
					document.sform.submit();
					
			}
			
/*-------------------------Delete-----------------------------*/
		
			function checkDelete(SubId)
       		{	
				$("#subvalset").val(SubId);
				alert($("#subvalset").val());
				document.sform.method="POST";
				document.sform.action="Agency_Deletedata";
				document.sform.submit();
			}
			
 </script>
 
 
  </body>
</html>