<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <jsp:include page="/WEB-INF/views/clientSidebar.jsp" />   
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
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
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
	                    <a class="navbar-brand" href="#">
							Manage Slots
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
	                            <div class="card-title">
	                              <h4>${ground.ground_name} Slots</h4>
	                              <hr> 
	                             </div>
	                            
	                            <div class="row">
	                            <div class="col-md-12">
	                              <div class="toolbar">
	                                <div class="text-right">
	                                  <form action="<c:url value="/addSlotPage"/>" method="post">
	                                  <input type="hidden" name="ground_id" value="${ground.ground_id}" >
	                                  <button type="submit" class="btn btn-success" >Add Slot</button>
	                                  </form>
	                                  <!--  <button class="btn btn-success" data-toggle="modal" data-target="#addSlotModal">Add Slot</button> -->
	                                </div>  
	                                <br>
	                                <br>
	                                </div>
                                    <div class="fresh-datatables">
										<table id="clientTable" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
										<thead>
											<tr>
											    <!-- <th>Id</th> -->
												<th>Start Time</th>
												<th>End Time</th>
												<th>Weekends (price/hour)</th>
												<th>Weekdays (price/hour)</th>
												<th class="disabled-sorting">Actions</th>
											</tr>
										</thead>
										
										<tbody>
										
										  <c:forEach items="${slots}" var="slot">
											<tr>
											    <%-- <td>${slot.slot_id}</td> --%>
											    <td>${slot.start_time}</td>
											    <td>${slot.end_time}</td>
											    <td>${slot.weekend_charge}</td>
											    <td>${slot.weekdays_charge}</td>
											    
			
												<td>
												<a href="<c:url value='/editSlot/${slot.slot_id}' />" class="btn btn-simple btn-warning btn-icon edit" ><i class="ti-pencil-alt"></i></a>
												<a href="<c:url value='/deleteSlot/${slot.slot_id}/${slot.ground.ground_id}' />" class="btn btn-simple btn-danger btn-icon remove" onclick="return confirm('Are you sure you want to delete this slot?')"><i class="ti-close"></i></a>
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

 <!-- <!-- Modals -->


<div id="addSlotModal" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Add Slot</h4>
				</div>
				<div class="modal-body">
					
					            
	                    
					
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div> -->



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
	
    	
	</script>

</html>