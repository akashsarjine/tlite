<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <!-- <link href="/resources/css/bootstrap.min.css" rel="stylesheet" /> -->

    <!--  Paper Dashboard core CSS    -->
     <link href="<c:url value="/resources/css/paper-dashboard.css" />" rel="stylesheet">
    <!-- <link href="/resources/css/paper-dashboard.css" rel="stylesheet"/> -->


    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"  rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet"  type='text/css'>
    <link href="<c:url value="resources/css/themify-icons.css" />" rel="stylesheet">
</head>

<body>

	    <div class="sidebar" data-background-color="brown" data-active-color="danger">
	    <!--
			Tip 1: you can change the color of the sidebar's background using: data-background-color="white | brown"
			Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
		-->
			<div class="logo">
				<a href="http://google.com" class="simple-text logo-mini">
					TS
				</a>

				<a href="http://google.com" class="simple-text logo-normal" >
					Tlite Sports
				</a>
			</div>
	    	<div class="sidebar-wrapper">
				<div class="user">
	                <div class="info">
						<div class="photo">
		                    <img src="<c:url value="/resources/img/faces/face-2.jpg" />" />
		                </div>

	                    <a data-toggle="collapse" href="#collapseExample" class="collapsed">
	                        <span>
								Client
		                        <b class="caret"></b>
							</span>
	                    </a>
						<div class="clearfix"></div>

	                    <div class="collapse" id="collapseExample">
	                        <ul class="nav">
	                        
	                            <li>
									<a href="<c:url value="/logout"/>">
										<span class="sidebar-mini">LO</span>
										<span class="sidebar-normal">Log Out</span>
									</a>
								</li>
	                           <!--  <li>
									<a href="#profile">
										<span class="sidebar-mini">Mp</span>
										<span class="sidebar-normal">My Profile</span>
									</a>
								</li>
	                            <li>
									<a href="#edit">
										<span class="sidebar-mini">Ep</span>
										<span class="sidebar-normal">Edit Profile</span>
									</a>
								</li>
	                            <li>
									<a href="#settings">
										<span class="sidebar-mini">S</span>
										<span class="sidebar-normal">Settings</span>
									</a>
								</li> -->
	                        </ul>
	                    </div>
	                </div>
	            </div>
	            <ul class="nav sidebarClass">
	                <li class="">
	                    <a data-toggle="collapse" href="#dashboard" aria-expanded="true">
	                        <i class="ti-dashboard"></i>
	                        <p>Dashboard
                                <b class="caret"></b>
                            </p>
	                    </a>
						<div class="collapse" id="dashboard">
							<ul class="nav">
								<li class="">
									<a href="<c:url value="/clientDashboard" />">
										<span class="sidebar-mini">DB</span>
										<span class="sidebar-normal">Dashboard</span>
									</a>
								</li>
							</ul>
						</div>
	                </li>
	            
	                <li >
	                    <a data-toggle="collapse" href="#groundManagement" aria-expanded="true">
	                        <i class="ti-basketball"></i>
	                        <p>Ground Management
                                <b class="caret"></b>
                            </p>
	                    </a>
						<div class="collapse" id="groundManagement">
							<ul class="nav">
								<li class="">
									<a href="<c:url value="/addGroundPage" />">
										<span class="sidebar-mini">AG</span>
										<span class="sidebar-normal">Add Ground</span>
									</a>
								</li>
								<li class="">
									<a href="<c:url value="/manageGrounds" />">
										<span class="sidebar-mini">MG</span>
										<span class="sidebar-normal">Manage Grounds</span>
									</a>
								</li>
								
							</ul>
						</div>
	                </li>
	                 <li >
	                    <a data-toggle="collapse" href="#slotManagement" aria-expanded="true">
	                        <i class="ti-time"></i>
	                        <p>Time Slot Management
                                <b class="caret"></b>
                            </p>
	                    </a>
						<div class="collapse" id="slotManagement">
							<ul class="nav">
								<li class="">
									<a href="<c:url value="/selectGround" />">
										<span class="sidebar-mini">Ms</span>
										<span class="sidebar-normal">Manage Slots</span>
									</a>
								</li>
								
							</ul>
						</div>
	                </li>
					<!-- <li>
						<a data-toggle="collapse" href="#componentsExamples">
							<i class="ti-package"></i>
							<p>Components
							   <b class="caret"></b>
							</p>
						</a>
						<div class="collapse" id="componentsExamples">
							<ul class="nav">
	                            <li>
									<a href="../components/buttons.html">
										<span class="sidebar-mini">B</span>
										<span class="sidebar-normal">Buttons</span>
									</a>
								</li>
	                            <li>
									<a href="../components/grid.html">
										<span class="sidebar-mini">GS</span>
										<span class="sidebar-normal">Grid System</span>
									</a>
								</li>
	                            <li>
									<a href="../components/panels.html">
										<span class="sidebar-mini">P</span>
										<span class="sidebar-normal">Panels</span>
									</a>
								</li>
	                            <li>
									<a href="../components/sweet-alert.html">
										<span class="sidebar-mini">SA</span>
										<span class="sidebar-normal">Sweet Alert</span>
									</a>
								</li>
	                            <li>
									<a href="../components/notifications.html">
										<span class="sidebar-mini">N</span>
										<span class="sidebar-normal">Notifications</span>
									</a>
								</li>
	                            <li>
									<a href="../components/icons.html">
										<span class="sidebar-mini">I</span>
										<span class="sidebar-normal">Icons</span>
									</a>
								</li>
	                            <li>
									<a href="../components/typography.html">
										<span class="sidebar-mini"><i class="ti-panel"></i></span>
										<span class="sidebar-normal">Typography</span>
									</a>
								</li>
	                        </ul>
						</div>
					</li>
					<li>
						<a data-toggle="collapse" href="#formsExamples">
	                        <i class="ti-clipboard"></i>
	                        <p>
								Forms
	                           <b class="caret"></b>
	                        </p>
	                    </a>
	                    <div class="collapse" id="formsExamples">
							<ul class="nav">
								<li>
									<a href="../forms/regular.html">
										<span class="sidebar-mini">Rf</span>
										<span class="sidebar-normal">Regular Forms</span>
									</a>
								</li>
								<li>
									<a href="../forms/extended.html">
										<span class="sidebar-mini">Ef</span>
										<span class="sidebar-normal">Extended Forms</span>
									</a>
								</li>
								<li>
									<a href="../forms/validation.html">
										<span class="sidebar-mini">Vf</span>
										<span class="sidebar-normal">Validation Forms</span>
									</a>
								</li>
	                            <li>
									<a href="../forms/wizard.html">
										<span class="sidebar-mini">W</span>
										<span class="sidebar-normal">Wizard</span>
									</a>
								</li>
	                        </ul>
	                    </div>
	                </li>
	                <li>
						<a data-toggle="collapse" href="#tablesExamples">
	                        <i class="ti-view-list-alt"></i>
	                        <p>
								Table list
	                           <b class="caret"></b>
	                        </p>
	                    </a>
	                    <div class="collapse" id="tablesExamples">
							<ul class="nav">
								<li>
									<a href="../tables/regular.html">
										<span class="sidebar-mini">RT</span>
										<span class="sidebar-normal">Regular Tables</span>
									</a>
								</li>
								<li>
									<a href="../tables/extended.html">
										<span class="sidebar-mini">ET</span>
										<span class="sidebar-normal">Extended Tables</span>
									</a>
								</li>
								<li>
									<a href="../tables/bootstrap-table.html">
										<span class="sidebar-mini">BT</span>
										<span class="sidebar-normal">Bootstrap Table</span>
									</a>
								</li>
								<li>
									<a href="../tables/datatables.net.html">
										<span class="sidebar-mini">DT</span>
										<span class="sidebar-normal">DataTables.net</span>
									</a>
								</li>
	                        </ul>
	                    </div>
	                </li>
					<li>
						<a data-toggle="collapse" href="#mapsExamples">
	                        <i class="ti-map"></i>
	                        <p>
								Maps
	                           <b class="caret"></b>
	                        </p>
	                    </a>
	                    <div class="collapse" id="mapsExamples">
							<ul class="nav">
								<li>
									<a href="../maps/google.html">
										<span class="sidebar-mini">GM</span>
										<span class="sidebar-normal">Google Maps</span>
									</a>
								</li>
								<li>
									<a href="../maps/vector.html">
										<span class="sidebar-mini">VM</span>
										<span class="sidebar-normal">Vector maps</span>
									</a>
								</li>
								<li>
									<a href="../maps/fullscreen.html">
										<span class="sidebar-mini">FSM</span>
										<span class="sidebar-normal">Full Screen Map</span>
									</a>
								</li>
	                        </ul>
	                    </div>
	                </li>
					<li>
	                    <a href="../charts.html">
	                        <i class="ti-bar-chart-alt"></i>
	                        <p>Charts</p>
	                    </a>
	                </li>
					<li>
	                    <a href="../calendar.html">
	                        <i class="ti-calendar"></i>
	                        <p>Calendar</p>
	                    </a>
	                </li>
					<li>
						<a data-toggle="collapse" href="#pagesExamples">
	                        <i class="ti-gift"></i>
	                        <p>
								Pages
	                           <b class="caret"></b>
	                        </p>
	                    </a>
	                    <div class="collapse" id="pagesExamples">
							<ul class="nav">
								<li>
									<a href="../pages/timeline.html">
										<span class="sidebar-mini">TP</span>
										<span class="sidebar-normal">Timeline Page</span>
									</a>
								</li>
								<li>
									<a href="../pages/user.html">
										<span class="sidebar-mini">UP</span>
										<span class="sidebar-normal">User Page</span>
									</a>
								</li>
								<li>
									<a href="../pages/login.html">
										<span class="sidebar-mini">LP</span>
										<span class="sidebar-normal">Login Page</span>
									</a>
								</li>
								<li>
									<a href="../pages/register.html">
										<span class="sidebar-mini">RP</span>
										<span class="sidebar-normal">Register Page</span>
									</a>
								</li>
								<li>
									<a href="../pages/lock.html">
										<span class="sidebar-mini">LSP</span>
										<span class="sidebar-normal">Lock Screen Page</span>
									</a>
								</li>
	                        </ul>
	                    </div>
	                </li> -->
	            </ul>
	    	</div>
	    </div>

	   
	
</body>

	<!--   Core JS Files. Extra: TouchPunch for touch library inside jquery-ui.min.js   -->
	<script src="<c:url value="/resources/js/jquery-3.1.1.min.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/js/jquery-ui.min.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/js/perfect-scrollbar.min.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>" type="text/javascript"></script>

	 <!--  Forms Validations Plugin -->
<!-- 	<script src="/resources/js/jquery.validate.min.js"></script>

	Promise Library for SweetAlert2 working on IE
	<script src="/resources/js/es6-promise-auto.min.js"></script>

	 Plugin for Date Time Picker and Full Calendar Plugin
	<script src="/resources/js/moment.min.js"></script>

	 Date Time Picker Plugin is included in this js file
	<script src="/resources/js/bootstrap-datetimepicker.js"></script>

	 Select Picker Plugin
	<script src="/resources/js/bootstrap-selectpicker.js"></script>

	 Switch and Tags Input Plugins
	<script src="/resources/js/bootstrap-switch-tags.js"></script>

	Circle Percentage-chart
	<script src="/resources/js/jquery.easypiechart.min.js"></script>

	 Charts Plugin
	<script src="/resources/js/chartist.min.js"></script>

	 Notifications Plugin   
	<script src="/resources/js/bootstrap-notify.js"></script>

	Sweet Alert 2 plugin
	<script src="/resources/js/sweetalert2.js"></script>

	Vector Map plugin
	<script src="/resources/js/jquery-jvectormap.js"></script>

	 Google Maps Plugin   
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

	Wizard Plugin   
	<script src="/resources/js/jquery.bootstrap.wizard.min.js"></script>

	 Bootstrap Table Plugin   
	<script src="/resources/js/bootstrap-table.js"></script>

	 Plugin for DataTables.net 
	<script src="/resources/js/jquery.datatables.js"></script>

	 Full Calendar Plugin   
	<script src="/resources/js/fullcalendar.min.js"></script>

	Paper Dashboard PRO Core javascript and methods for Demo purpose
	<script src="/resources/js/paper-dashboard.js"></script>

	Paper Dashboard PRO DEMO methods, don't include it in your project!
	<script src="/resources/js/demo.js"></script>

	<script type="text/javascript">
    	$(document).ready(function(){
			demo.initOverviewDashboard();
			demo.initCirclePercentage();

    	});
	</script> --> 
		<script>
		$(document).ready(function () {
			
		    var activeli;
		    
		    /* $(".nav").find(".active").removeClass("active");
		       
			 $(".collapse,.in").removeClass("in");  */
		    
		     $('.sidebarClass li').each(function () {
		    	
		    	  
		    	url = $(this).find("a").attr("href");
		        if (url != "/" && location.href.indexOf(url) > 0){
		        	activeli = $(this);
		        	 $(this).parent().closest("li").addClass("active"); 
		            $(this).closest("div").addClass("in"); 
		            activeli.addClass("active");
		        }
		    });
		    
		    
		       if (!activeli){ 
		    	   
		    	activeli = $("#navbar li:first-child");
		    	
		    	activeli.parent().closest("li").addClass("active"); 
		    	activeli.closest("div").addClass("in"); 
		        activeli.addClass("active"); 
		        
		        
		       }
		       
		        
		        
		});
		    </script>
</html>
