<%@page import="com.kiteapp.model.kiteUser"%>
<html lang="en">
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
	<head>
	    <title> SHOP</title>
		<!--- required meta tags --->
		<meta charset="utf-8">	
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		
		<!-- BootStrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		
		
		<!--External Stylesheet-->
		<link rel="stylesheet" type="text/css" href="css/ProductBrowse.css"/>
                <script type = "text/javascript" src ="js/iconClick.js"></script>
		
	</head>
	<body onload="init()">
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
                             <%if(session.getAttribute("SKUSER") != null){
                                        
                                    %>
                                 <li><a href="/KiteWebApplication/Homepage.jsp">OUR ROOTS</a></li>
                                 <li><a href="/KiteWebApplication/ourKites.jsp">OUR KITES</a></li>
				 <li class="active"><a href="/KiteWebApplication/ProductBrowse.jsp">SHOP</a></li>
				 <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">FOLLOW</a>
                              <ul class="dropdown-menu">
                                 <li><a href="https://www.instagram.com/explore/tags/kite/?hl=en">INSTAGRAM</a></li>
                                 <li><a href="#">FACEBOOK</a></li>
                                 <li><a href="https://www.pinterest.ie/kduplechain/kites/">PINTEREST</a></li>                                  
                              </ul>
                          </li>
                           </ul>
                        
			 <ul class="nav navbar-nav navbar-right">
                             <li>
                                 <form name="autofillform" action="autocomplete"
                             </li>
                            <li><a href="/KiteWebApplication/index.html" data-toggle="popover" title="WELCOME BACK"  
                                   data-content=<%if(session.getAttribute("SKUSER") != null){
                                       kiteUser user = (kiteUser)session.getAttribute("SKUSER");
                                       
                                    %>
                                   User:<%= user.getFirstName() %> <%}else{%>
                                   Guest:
                                   <%}%>
                                  data-placement="bottom" data-trigger="hover">
                              <span class="glyphicon glyphicon-user"></span></a></li> 
                              <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
			 </ul>
			</div>
		  </div>
	     </nav>
                            <%}else{%>
                                 <li><a href="/KiteWebApplication/index.html">OUR ROOTS</a></li>
              			 <li><a href="/KiteWebApplication/index.html">OUR KITES</a></li>
				 <li class="active"><a href="/KiteWebApplication/index.html">SHOP</a></li>
				 <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">FOLLOW</a>
                              <ul class="dropdown-menu">
                                  <li><a href="https://www.instagram.com/explore/tags/kite/?hl=en">INSTAGRAM</a></li>
                                  <li><a href="#">FACEBOOK</a></li>
                                  <li><a href="https://www.pinterest.ie/kduplechain/kites/">PINTEREST</a></li>                                  
                              </ul>
                          </li>
			 </ul>
                        
			 <ul class="nav navbar-nav navbar-right">
                            <li><a href="/KiteWebApplication/index.html" data-toggle="popover" title="WELCOME BACK"  
                                   data-content=<%if(session.getAttribute("SKUSER") != null){
                                       kiteUser user = (kiteUser)session.getAttribute("SKUSER");
                                       
                                    %>
                                   User:<%= user.getFirstName() %> <%}else{%>
                                   Guest:
                                   <%}%>
                                  data-placement="bottom" data-trigger="hover">
                              <span class="glyphicon glyphicon-user"></span></a></li> 
                              <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
			 </ul>
			</div>
		  </div>
	     </nav>
                                   <%}%>
             <script>
		$(document).ready(function(){
                    $('[data-toggle="popover"]').popover();
		});
            </script>
		
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			  <!-- Indicators -->
			  <ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			  </ol>
				
			  <!-- Wrapper for slides -->
			  <div class="carousel-inner">
				<div class="item active">
				 <div class="carousel-caption">
					<h2>OUR PRODUCTS</h2>
				 </div>
				  <img src="img/kites1.jpg" alt="Kite">
				</div>

				<div class="item">
				  <img src="img/pexels.jpeg" alt="Kite">
				</div>

				<div class="item">
				  <img src="img/Diamond-1.jpg" alt="Kite">
			  </div>

			  <!-- Left and right controls -->
			  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
				<span class="sr-only">Previous</span>
			  </a>
			  <a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
				<span class="sr-only">Next</span>
			  </a>
			  
			 </div>
			 </div>
			 <br><br>
			 
	 <div class="container-fluid">
     <div class = "row">
	  <div class="col-sm-4">
	   <div class="panel panel-primary">
	    <div class="panel-heading"> HIGLIGHTER DELTA</div>
		  <div class="panel-body"><img src="img/1.jpg.jpg"  class="img-responsive" style="width:100%" alt="Delta Kite">
			&nbsp;
		    <ul>
				<li><span style="font-weight:bold"> MATERIAL:</span> RIP STOP NYLON</li>
				<li><span style="font-weight:bold"> COLOUR:</span> MULTI</li>
				<li><span style="font-weight:bold"> LEVEL:</span> BEGINNER</li>
				<li><span style="font-weight:bold"> SHAPE:</span> TRIANGULAR</li>
			</ul>
		 
		  </div>
		   
		   <div class="panel-footer panel-custom">
				<p>&euro;14.99</p>
                               
                                   
                                    <a href="/KiteWebApplication/index.html" class="btn btn-primary btn-lg">BUY NOW</a>
                                     
		   </div>  
		</div>
	</div>
	
	<div class ="col-sm-4">
	 <div class="panel panel-primary">
	  <div class="panel-heading">ROCKY MOUNTAIN DIAMOND</div>
	   <div class="panel-body"><img src="img/2.jpg" class="img-responsive" style="width:100%" alt="DIAMOND Kite">
	    &nbsp;
		 <ul>
			<li><span style="font-weight:bold"> MATERIAL:</span> MYLAR SHEETS</li>
			<li><span style="font-weight:bold"> COLOUR:</span> MULTI</li>
			<li><span style="font-weight:bold"> LEVEL:</span> BEGINNER</li>
			<li><span style="font-weight:bold"> SHAPE:</span> DIAMOND</li>
		</ul>
	   </div>
	    <div class="panel-footer panel-custom">
			<p> &euro;9.99</p>
			
                                    
                                   
                                   
                                    <a href="/KiteWebApplication/index.html" class="btn btn-primary btn-lg">BUY NOW</a>
                                     
		</div>
	</div>
	</div>
	
	<div class="col-sm-4">
	 <div class="panel panel-primary">
	  <div class="panel-heading">PARACHUTE PARAFOIL</div>
	   <div class="panel-body"><img src="img/3.jpg" class="img-responsive" style="width:100%" alt="Diamond Kite">
	   &nbsp;
		 <ul>
			<li><span style="font-weight:bold"> MATERIAL:</span> RIP STOP NYLON</li>
			<li><span style="font-weight:bold"> COLOUR:</span> MULTI</li>
			<li><span style="font-weight:bold"> LEVEL:</span> INTERMEDIATE</li>
			<li><span style="font-weight:bold"> SHAPE:</span> FRAMELESS</li>
		</ul>
	   </div>
	    <div class="panel-footer panel-custom">
			<p> &euro;22.99</p>
			
                                        
                                
                                   
                                   
                                   
                                    <a href="/KiteWebApplication/index.html" class="btn btn-primary btn-lg">BUY NOW</a>
                                    
		</div>
	</div>
	</div>
	</div>
	</div>
	
	<div class="container-fluid">
     <div class = "row">
	  <div class="col-sm-4">
	   <div class="panel panel-primary">
	    <div class="panel-heading"> DUAL LINE DELTA</div>
		  <div class="panel-body"><img src="img/4.jpg"  class="img-responsive" style="width:100%" alt="Delta Kite">
			&nbsp;
		    <ul>
				<li><span style="font-weight:bold"> MATERIAL:</span> RIP STOP NYLON</li>
				<li><span style="font-weight:bold"> COLOUR:</span> GREEN & BLACK</li>
				<li><span style="font-weight:bold"> LEVEL:</span> INTERMEDIATE</li>
				<li><span style="font-weight:bold"> SHAPE:</span> DUAL LINE TRIANGULAR</li>
			</ul>
		 
		  </div>
		   
		   <div class="panel-footer panel-custom">
				<p> &euro;18.99</p>
				
                                   
                                   
                                   
                                    <a href="/KiteWebApplication/index.html" class="btn btn-primary btn-lg">BUY NOW</a>
                                    
		   </div>  
		</div>
	</div>
	
	<div class ="col-sm-4">
	 <div class="panel panel-primary">
	  <div class="panel-heading">RETRO DIAMOND</div>
	   <div class="panel-body"><img src="img/5.jpg" class="img-responsive" style="width:100%" alt="DIAMOND Kite">
	    &nbsp;
		 <ul>
			<li><span style="font-weight:bold"> MATERIAL:</span> RIP STOP NYLON</li>
			<li><span style="font-weight:bold"> COLOUR:</span> RETRO</li>
			<li><span style="font-weight:bold"> LEVEL:</span> BEGINNER</li>
			<li><span style="font-weight:bold"> SHAPE:</span> DIAMOND</li>
		</ul>
	   </div>
	    <div class="panel-footer panel-custom">
			<p> &euro;11.99</p>
			
                                        
                                    
                                    
                                   
                                   
                                    <a href="/KiteWebApplication/index.html" class="btn btn-primary btn-lg">BUY NOW</a>
                                    
		</div>
	</div>
	</div>
	
	<div class="col-sm-4">
	 <div class="panel panel-primary">
	  <div class="panel-heading"> WIND SURFING PARAFOIL</div>
	   <div class="panel-body"><img src="img/6.jpg" class="img-responsive" style="width:100%" alt="Diamond Kite">
	   &nbsp;
		 <ul>
			<li><span style="font-weight:bold"> MATERIAL:</span> RIP STOP NYLON</li>
			<li><span style="font-weight:bold"> COLOUR:</span> MULTI</li>
			<li><span style="font-weight:bold"> LEVEL:</span> ADVANCED</li>
			<li><span style="font-weight:bold"> SHAPE:</span> FRAMELESS</li>
		</ul>
	   </div>
	    <div class="panel-footer panel-custom">
			<p> &euro;27.99</p>
			
                                   
                                    <a href="/KiteWebApplication/index.html" class="btn btn-primary btn-lg">BUY NOW</a>
                                    
		</div>
	</div>
	</div>
	</div>
	</div>
	<br><br><br><br>
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