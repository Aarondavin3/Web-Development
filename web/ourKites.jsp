
<%@page import="com.kiteapp.model.kiteUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
	<head>
	    <title>Kites Boutique </title>
		<!--- required meta tags --->
		<meta charset="utf-8">	
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		
		<!-- BootStrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		
		
		<!--External Stylesheet-->
		<link rel="stylesheet" type="text/css" href="css/bootstrapHomepage.css"/>
                <script type = "text/javascript" src ="js/iconClick.js"></script>
		
		
	</head>
	<body>
		<div class="header">
		  <h1>KITES BOUTIQUE</h1>
		 </div>
		 <nav class="navbar navbar-inverse">
              <div class="container-fluid">
	       <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
		 <span class="icon-bar"></span>
		 <span class="icon-bar"></span>
                 <span class="icon-bar"></span>                        
                </button>
               </div>
                  <div class="collapse navbar-collapse" id="myNavbar">
                      <ul class="nav navbar-nav">
                          <li><a href="/KiteWebApplication/Homepage.jsp">OUR ROOTS</a></li>
                          <li class="active"><a href="/KiteWebApplication/ourKites.jsp">OUR KITES</a></li>
                          <li><a href="/KiteWebApplication/ProductBrowse.jsp">SHOP</a></li>
                          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">FOLLOW</a>
                              <ul class="dropdown-menu">
                                  <li><a href="https://www.instagram.com/explore/tags/kite/?hl=en">INSTAGRAM</a></li>
                                  <li><a href="#">FACEBOOK</a></li>
                                  <li><a href="#">PINTEREST</a></li>                                  
                              </ul>
                          </li>
                      </ul>
                      <ul class="nav navbar-nav navbar-right">
                          <li><a href="/KiteWebApplication/index.html" data-toggle="popover" title="WELCOME BACK"  
                                 data-content=<% kiteUser user = (kiteUser)session.getAttribute("SKUSER"); %>
                              User:<%= user.getFirstName() %> data-placement="bottom" data-trigger="hover">
                              <span class="glyphicon glyphicon-user"></span></a></li> 
                          <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
                      </ul>
                  </div>
              </div>
            </nav>
            <script>
                $(document).ready(function(){
                    $('[data-toggle="popover"]').popover();
		});
            </script>
			
			<div class="carousel-inner1">
				<img src="img/Login.jpg" alt="kite on beach">
			</div>	
			<br>
                        
			
			<div class="container text-left-center">
				<h2>OUR KITES</h2>

			
		     <div class=col-sm-8>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pellentesque sit amet porttitor eget dolor. Nec ullamcorper sit amet risus nullam. Id porta nibh venenatis cras sed felis. Ac tortor vitae purus faucibus ornare suspendisse sed. Semper viverra nam libero justo laoreet sit amet. Porttitor rhoncus dolor purus non enim praesent elementum facilisis leo. Cursus euismod quis viverra nibh cras.
							<br><br>		Adipiscing enim eu turpis egestas. Ut tortor pretium viverra suspendisse potenti nullam ac. In dictum non consectetur a.
					Adipiscing elit duis tristique sollicitudin nibh sit amet commodo nulla. Vel quam elementum pulvinar etiam non quam.
					 In est ante in nibh mauris. Sed augue lacus viverra vitae congue eu consequat ac felis. Nunc sed blandit libero volutpat sed.
					 Vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis.
						<br><br>Vitae nunc sed velit dignissim sodales.
					 Turpis egestas sed tempus urna. Vitae turpis massa sed elementum. Lectus quam id leo in vitae turpis massa sed elementum.
					 Vitae purus faucibus ornare suspendisse sed nisi lacus sed viverra. Pellentesque id nibh tortor id aliquet lectus. 
					 Magnis dis parturient montes nascetur. Interdum velit laoreet id donec ultrices.
 Dignissim suspendisse in est ante in. Quam vulputate dignissim suspendisse in est ante in nibh.
	</p>
	<br>
	<a href="productServlet" class="btn btn-primary btn-lg">VISIT OUR SHOP</a>
	</div>
	</div>
	<br><br>
	<footer class="container-fluid text-center">
	
	  <h4> KITES BOUTIQUE</h4>
	   
	    <ul class="list-unstyled list-inline text-center">
		   <i class="fa fa-envelope" id="emailIcon" onclick="emailClick()"></i>
		   <i class="fa fa-facebook-square" id="facebook" onclick="iconClick()"></i>
		   <i class="fa fa-pinterest" id="pinterest" onclick="pinterestClick()"></i>
		   <i class="fa fa-instagram" id="insta" onclick="instaClick()"></i>
           </ul>
   <!--Google map-->
	<div id="map-container-google-1" class="z-depth-1-half map-container" style="height: 350px">
	  <iframe src="https://maps.google.com/maps?q=midelton&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0"
		style="border:0" allowfullscreen></iframe>
	</div>
	</footer>
	</body>
</html>	
