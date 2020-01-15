<%@page import="com.kiteapp.model.kiteUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
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
		<script type = "text/javascript" src ="js/Increment.js"></script>
                <script type = "text/javascript" src ="js/iconClick.js"></script>
                <script type = "text/javascript" src ="js/ajaxSearch.js"></script>
		
	</head>
	<body onload="init();">
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
				 <li><a href="/KiteWebApplication/ourKites.jsp">OUR KITES</a></li>
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
                             <li><form name="autofillform" action="searchResultServlet" method="GET"><input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search" size="40" name="search" id="complete-field" onkeyup="doCompletion()"></form>
            <div class="dropdown-content" style="" id="complete-table">
                        <table  class="popupBox" > </table>
                      </div></li>
    			<li><a href="/KiteWebApplication/index.html" data-toggle="popover" title="WELCOME BACK"  
                               data-content=<% kiteUser user = (kiteUser)session.getAttribute("SKUSER"); %>
                              User:<%= user.getFirstName() %> data-placement="bottom" data-trigger="hover">
                                     <span class="glyphicon glyphicon-user"></span></a></li>
				 <li><a href="${pageContext.request.contextPath }/cartServlet"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
			 </ul>
			</div>
		  </div>
	     </nav>
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
         <c:forEach items="${RKALLPRODUCTS}" var="tempproduct">
	  <div class="col-sm-4">
	   <div class="panel panel-primary">
	    <div class="panel-heading"> <c:out value="${tempproduct.getName()}"/> </div>
            <div class="panel-body"><img src="img/<c:out value="${tempproduct.getKiteID()}"/>.jpg"  class="img-responsive" style="width:100%" alt="Delta Kite">
			&nbsp;
		    <ul>
				<li><span style="font-weight:bold"> MATERIAL:</span><c:out value="${tempproduct.getMaterial()}"/></li>
				<li><span style="font-weight:bold"> COLOUR:</span><c:out value="${tempproduct.getColour()}"/></li>
				<li><span style="font-weight:bold"> LEVEL:</span><c:out value="${tempproduct.getLevel()}"/></li>
				<li><span style="font-weight:bold"> SHAPE:</span><c:out value="${tempproduct.getShape()}"/></li>
			</ul>
		 
		  </div>
		   
		   <div class="panel-footer panel-custom">
				<p>&euro;<c:out value="${tempproduct.getCost()}"/></p>
                                <%if(session.getAttribute("SKUSER") != null){
                                        
                                    %>
                                    <a href="${pageContext.request.contextPath }/cartServlet?&action=buy&kiteID=${tempproduct.getKiteID()}" class="btn btn-primary btn-lg">BUY NOW</a>
                                    <%}else{%>
                                   
                                    <a href="/KiteWebApplication/index.html" class="btn btn-primary btn-lg">BUY NOW</a>
                                     <%}%>
		   </div>  
		</div>
	</div>
                   </c:forEach>
         
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
