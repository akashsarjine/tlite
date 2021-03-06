<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="<c:url value="/resources/img/apple-icon.png"/>">
	<link rel="icon" type="image/png" sizes="96x96" href="<c:url value="/resources/img/favicon.png"/>">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Tlite Sport:Login</title>

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
    <nav class="navbar navbar-transparent navbar-absolute">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Technolite Sports</a>
            </div>
          <!--   <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                       <a href="register.html">
                            Register
                        </a>
                    </li>
					<li>
                       <a href="../dashboard/overview.html">
                            Dashboard
                        </a>
                    </li>
                </ul>
            </div> -->
        </div>
    </nav>

    <div class="wrapper wrapper-full-page">
        <div class="full-page login-page" data-color="" data-image="<c:url value="/resources/img/background/stadium.jpeg"/>">
        <!--   you can change the color of the filter page using: data-color="blue | azure | green | orange | red | purple" -->
            <div class="content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3">
                            <form method="post" action="<c:url value="/adminLogin"/>">
                                <div class="card" data-background="color" data-color="blue">
                                   
                                    <div class="card-header">
                                        <h3 class="card-title">Admin Login</h3>
                                    </div>
                                    
                                    
                                    <div class="card-content">
                                   
                                        <h5 style="color:red" class="text-center">${error}</h5>
                                    
                                        <div class="form-group">
                                            <label>Email address</label>
                                            <input name="email" type="email" placeholder="Enter email" class="form-control input-no-border">
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input name="password" type="password" placeholder="Password" class="form-control input-no-border">
                                        </div>
                                    </div>
                                    <div class="card-footer text-center">
                                        <button type="submit" class="btn btn-fill btn-wd ">Let's go</button>
                                       <!--  <div class="forgot">
                                            <a href="#pablo">Forgot your password?</a>
                                        </div> -->
                                        
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        	
        </div>
    </div>
</body>

	<!--   Core JS Files. Extra: TouchPunch for touch library inside jquery-ui.min.js   -->
	<script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>" type="text/javascript""></script>
	<script src="<c:url value="/resources/js/jquery-ui.min.js"/>" type="text/javascript"></script>
	<script src="<c:url value="/resources/js/perfect-scrollbar.min.js"/>" type="text/javascript"/></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>" type="text/javascript"/></script>


    <!-- Paper Dashboard PRO Core javascript and methods for Demo purpose -->
	<script src="<c:url value="/resources/js/paper-dashboard.js"/>"></script>
	
	
       <script type="text/javascript">
        $().ready(function(){
        	
        	$page = $('.full-page');
            image_src = $page.data('image');

            if(image_src !== undefined){
                image_container = '<div class="full-page-background" style="background-image: url(' + image_src + ') "/>'
                $page.append(image_container);
            }
        	
            setTimeout(function(){
                // after 1000 ms we add the class animated to the login/register card
                $('.card').removeClass('card-hidden');
            }, 700)
        });
	</script>
</html>
