<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <jsp:include page="/WEB-INF/views/clientSidebar.jsp" />   
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
	                    
	                   
						             <c:choose>
         
							         <c:when test = "${ground.ground_id==0}">
							         
							            <a class="navbar-brand" href="#">
											Add Ground
										</a>
										
							         </c:when>
							         
							        <c:otherwise>
							            <a class="navbar-brand" href="#">
										Update Ground
						       			</a>
							         </c:otherwise>
							      </c:choose>
						
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
		                    
		                    <c:url var="addAction" value="/addGround" ></c:url>
		                        <form id="addGroundForm" class="form-horizontal" action="${addAction}" method="post" novalidate="">
		                            <div class="card-content">
		                                <h4 class="card-title"></h4>
		                                
		                                <input 
		                                type="hidden"
		                                name="ground_id"
		                                value="${ground.ground_id}"
		                                /> 
		                                    
		                                               
		                                     <fieldset>
		                                    <div class="form-group">
		                                        <label class="col-sm-3 control-label">
													Ground Name
												</label>
		                                        <div class="col-sm-6">
		                                            <input class="form-control"
		                                                   type="text"
		                                                   name="ground_name"
		                                                   required="required"
		                                                   value="${ground.ground_name}"
													/>
		                                        </div>
		                                        
		                                    </div>
		                                </fieldset>
		                                
		                                <fieldset>
		                                    <div class="form-group">
		                                        <label class="col-sm-3 control-label">
													Select Sport
												</label>
		                                        <div class="col-sm-6">
		                                             <select name="sport_id" required="required" class="selectpicker" data-style="btn  btn-block" title="Select Sport" data-size="5">
                                                
                                                <c:forEach items="${sports}" var="sport">
                                                
                                                 <c:choose>
												 <c:when test="${ground.sport.sport_id==sport.sport_id}">
												 
												 <option value="${sport.sport_id}" selected>${sport.sport_name}</option>
												 
												  </c:when>
													<c:otherwise>
													
													<option value="${sport.sport_id}">${sport.sport_name}</option>
													
													</c:otherwise>
													</c:choose>
						                           
                                                </c:forEach>
                                               </select>
		                                        </div>
		                                        
		                                    </div>
		                                </fieldset>
		                                
		                                <fieldset>
		                                    <div class="form-group">
		                                        <label class="col-sm-3 control-label">
													Ground Dimentions
												</label>
		                                        <div class="col-sm-6">
		                                            <textarea class="form-control"
		                                                   type="text"
		                                                   name="ground_dimentions"
		                                                   required="required"
		                                                   rows="4"
													>${ground.ground_dimentions}</textarea>
		                                        </div>
		                                        
		                                    </div>
		                                </fieldset>

		                              

		                                <fieldset>
		                                    <div class="form-group">
		                                        <label class="col-sm-3 control-label">
													Ground Description
												</label>
		                                        <div class="col-sm-6">
		                                            <textarea class="form-control"
		                                                   type="text"
		                                                   name="ground_description"
		                                                   rows="4"
		                                              >${ground.ground_description}</textarea>
		                                        </div>
		                                        
		                                    </div>
		                                </fieldset>
		                                
		                              
		                            </div>
									<div class="card-footer text-center">
									<c:choose>
         
							         <c:when test = "${ground.ground_id==0}">
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
    		
    		$("#addGroundForm").validate();
    	});
	</script>

</html>