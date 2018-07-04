<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <jsp:include page="/WEB-INF/views/adminSidebar.jsp" />   
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--  <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> --%>
 <%-- <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="/resources/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="/resources/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Tlite Sport</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


     <!-- Bootstrap core CSS     -->
      <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
    <!-- <link href="/resources/css/bootstrap.min.css" rel="stylesheet" /> -->

    <!--  Paper Dashboard core CSS    -->
     <link href="<c:url value="/resources/css/paper-dashboard.css"/>" rel="stylesheet">
    <!-- <link href="/resources/css/paper-dashboard.css" rel="stylesheet"/> -->


    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"  rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet"  type='text/css'>
    <link href="<c:url value="resources/css/themify-icons.css" />"rel="stylesheet">
    
</head>

<body>
	<div class="wrapper">
	     <div class="main-panel">
			<nav class="navbar navbar-default">
	            <div class="container-fluid">
					<div class="navbar-minimize">
						<button id="minimizeSidebar" class="btn btn-fill btn-icon"><i class="ti-more-alt"></i></button>
					</div>
	                <div class="navbar-header">
	                    <button type="button" class="navbar-toggle">
	                        <span class="sr-only">Toggle navigation</span>
	                        <span class="icon-bar bar1"></span>
	                        <span class="icon-bar bar2"></span>
	                        <span class="icon-bar bar3"></span>
	                    </button>
	                    <a class="navbar-brand" href="#Dashboard">
							Add Clients
						</a>
	                </div>
	                <div class="collapse navbar-collapse">

	                </div>
	            </div>
	        </nav>


             <div class="content">
	            <div class="container-fluid">
	                <div class="row">
	                 <div class="col-md-12">
		                    <div class="card">
		                    
		                    <h3 class="text-center">${message}</h3>
		                    
		                        <form id="addClientForm" class="form-horizontal" action="addClient" method="post" novalidate="">
		                            <div class="card-content">
		                                <h4 class="card-title"></h4>
		                                
		                               <%--  <input 
		                                type="text"
		                                name="client_id"
		                                value="${client.client_id}"
		                                /> --%>
		                                
		                                  <fieldset>
		                                    <div class="form-group">
		                                        <label class="col-sm-3 control-label">
													Email
												</label>
		                                        <div class="col-sm-6">
		                                            <input class="form-control"
		                                                   type="text"
		                                                   name="client_email"
		                                                   email="true"
		                                                   value="${client.client_email}"
													/>
		                                        </div>
		                                        
		                                    </div>
		                                </fieldset>
		                                
		                                <fieldset>
		                                    <div class="form-group">
		                                        <label class="col-sm-3 control-label">
													Password
												</label>
		                                        <div class="col-sm-6">
		                                            <input class="form-control"
		                                                   type="password"
		                                                   name="client_password"
		                                                   required="required"
		                                                   value="${client.client_password}"
													/>
		                                        </div>
		                                        
		                                    </div>
		                                </fieldset>
		                                
		                                <fieldset>
		                                    <div class="form-group">
		                                        <label class="col-sm-3 control-label">
													Name
												</label>
		                                        <div class="col-sm-6">
		                                            <input class="form-control"
		                                                   type="text"
		                                                   name="client_name"
		                                                   required="required"
		                                                   value="${client.client_name}"
													/>
		                                        </div>
		                                        
		                                    </div>
		                                </fieldset>

		                              

		                                <fieldset>
		                                    <div class="form-group">
		                                        <label class="col-sm-3 control-label">
													Mobile
												</label>
		                                        <div class="col-sm-6">
		                                            <input class="form-control"
		                                                   type="text"
		                                                   name="client_mobile"
		                                                   number="true"
		                                                   maxlength="10"
		                                                   value="${client.client_mobile}"
													/>
		                                        </div>
		                                        
		                                    </div>
		                                </fieldset>
		                                
		                                <fieldset>
		                                    <div class="form-group">
		                                        <label class="col-sm-3 control-label">
													Office Number
												</label>
		                                        <div class="col-sm-6">
		                                            <input class="form-control"
		                                                   type="text"
		                                                   name="client_office_number"
		                                                   number="true"
		                                                   maxlength="14"
		                                                   value="${client.client_office_number}"
													/>
		                                        </div>
		                                        
		                                    </div>
		                                </fieldset>
		                                
		                                <fieldset>
		                                    <div class="form-group">
		                                        <label class="col-sm-3 control-label">
													Address
												</label>
		                                        <div class="col-sm-6">
		                                            <input class="form-control"
		                                                   type="text"
		                                                   name="client_address"
		                                                   required="required"
		                                                   value="${client.client_address}"
													/>
		                                        </div>
		                                        
		                                    </div>
		                                </fieldset>
		                                

		                               
		                            </div>
									<div class="card-footer text-center">
									<c:choose>
         
							         <c:when test = "${empty client.client_id}">
							            <button type="submit" class="btn btn-info btn-fill">Submit</button>
							         </c:when>
							         
							        <c:otherwise>
							             <button type="submit" class="btn btn-info btn-fill">Update</button>
							         </c:otherwise>
							      </c:choose>
										
									
									</div>
									
		  						</form>    
	                    
	                    
						</div>
					</div>
                </div>
	        </div>
          
	    </div>
	    </div>
	    </div>
</body>

	<!--   Core JS Files. Extra: TouchPunch for touch library inside jquery-ui.min.js   -->
	<%-- <script src="<c:url value="/resources/js/jquery-3.1.1.min.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/js/jquery-ui.min.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/js/perfect-scrollbar.min.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>" type="text/javascript"></script>
 --%>
	<!--  Forms Validations Plugin -->
	<script src="<c:url value="/resources/js/jquery.validate.min.js"/>"></script>


	<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
	<script src="<c:url value="/resources/js/moment.min.js"/>"></script>

	<!--  Date Time Picker Plugin is included in this js file -->
	<script src="<c:url value="/resources/js/bootstrap-datetimepicker.js"/>"></script>

	<!--  Select Picker Plugin -->
	<script src="<c:url value="/resources/js/bootstrap-selectpicker.js"/>"></script>

	<!--  Switch and Tags Input Plugins -->
	<script src="<c:url value="/resources/js/bootstrap-switch-tags.js"/>"></script>

	<!-- Circle Percentage-chart -->
	<script src="<c:url value="/resources/js/jquery.easypiechart.min.js"/>"></script>

	<!--  Charts Plugin -->
	<script src="<c:url value="/resources/js/chartist.min.js"/>"></script>

	<!--  Notifications Plugin    -->
	<script src="<c:url value="/resources/js/bootstrap-notify.js"/>"></script>

	
	<!--  Google Maps Plugin    -->
	<!-- <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script> -->

	
	<!--  Bootstrap Table Plugin    -->
	<script src="<c:url value="/resources/js/bootstrap-table.js"/>"></script>

	<!--  Plugin for DataTables.net  -->
	<script src="<c:url value="/resources/js/jquery.datatables.js"/>"></script>

	
	<!-- Paper Dashboard PRO Core javascript and methods for Demo purpose -->
	<script src="<c:url value="/resources/js/paper-dashboard.js"/>"></script>

	

	<script type="text/javascript">
    	$(document).ready(function(){
    		
    		$("#addClientForm").validate();
    	});
	</script>

</html>