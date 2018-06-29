<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <jsp:include page="/WEB-INF/views/adminSidebar.jsp" />   
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
							Manage Clients
						</a>
	                </div>
	                <div class="collapse navbar-collapse">

	                </div>
	            </div>
	        </nav>

	        <div class="content">
	            <div class="container-fluid">
	                          <div class="row">
	                           <div class="card">
	                            <div class="card-content">
	                            <div class="row">
	                            <div class="col-md-12">
	                              <div class="toolbar">
	                                    <!--Here you can write extra buttons/actions for the toolbar-->
	                                </div>
                                    <div class="fresh-datatables">
										<table id="clientTable" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
										<thead>
											<tr>
											    <th>Id</th>
												<th>Name</th>
												<th>Email</th>
												<th>Mobile</th>
												<th>Office No.</th>
												<th>Address</th>
												<th class="disabled-sorting">Actions</th>
											</tr>
										</thead>
										
										<tbody>
										
										  <c:forEach items="${clientList}" var="client">
											<tr>
											    <td>${client.client_id}</td>
											    <td>${client.client_name}</td>
												<td>${client.client_email}</td>
												<td>${client.client_mobile}</td>
												<td>${client.client_office_number}</td>
												<td>${client.client_address}</td>
												<td>
													<a href="#" class="btn btn-simple btn-warning btn-icon edit" ><i class="ti-pencil-alt"></i></a>
													<a href="#" class="btn btn-simple btn-danger btn-icon remove" onclick="confirm('Are you sure you want to delete this client?')"><i class="ti-close"></i></a>
												</td>
											</tr>
											</c:forEach>
											
										   </tbody>
									    </table>
									</div>


	                            </div>
	                             </div>
	                            </div>
	                        </div><!--  end card  -->
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
	  
	 $('#clientTable').DataTable({
         "pagingType": "full_numbers",
         "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
         responsive: true,
         language: {
         search: "_INPUT_",
	            searchPlaceholder: "Search records",
	        }
     });
	
    	$(document).ready(function(){
			

    	});
	</script>

</html>