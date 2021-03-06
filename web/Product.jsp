<%-- 
    Document   : Product
    Created on : 20-Nov-2019, 20:56:29
    Author     : adavi
--%>
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
	<div class="container-fluid">
	  <div class="row">
		 <div class="col-sm-7">
		   <img src="img/1.jpg.jpg"  class="img-responsive" style="width:100%" alt="Delta Kite">
		 </div>
		 
		 <div class="col-sm-5">
			<h4><b>HIGHLIGHTER DELTA</h4>
			<br><br>
			<p style="font-size:22px">€14.99</p>
			<br><br>
			<p style="font-size:20px">Colour: Multi</p>
			<br>
			<h5><b>QUANTITY:</h5>
			<div class="input-group">
				
                <span class="input-group-btn">
	               <button type="button" class="quantity-left-minus btn btn-danger btn-number"  data-type="minus" data-field="">
                      <span class="glyphicon glyphicon-minus"></span>
                    </button>
                      </span>
                    <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="10">
                      <span class="input-group-btn">
                    <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus" data-field="">
                      <span class="glyphicon glyphicon-plus"></span>
                    </button>
                      </span>
            </div>
                        <c:url var="postUrl" value="/cartServlet">
                         <c:param name="action" value="cart"/>
                        </c:url>
			<br><br>
                        <form action="${postUrl}" method="POST">
                            <input type="hidden" name="ID" value=1>
                           <button class="btn btn-sm btn-primary center-block"  type="submit">ADD TO CART</button>
                        </form>
			<br><br>
			<h5><b>PRODUCT INFO</h5>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
				Erat imperdiet sed euismod nisi porta lorem mollis aliquam. Diam donec adipiscing tristique risus nec feugiat. 
				</p>
			<br>
			<h5><b>RETURN & REFUND POLICY</h5>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
				Erat imperdiet sed euismod nisi porta lorem mollis aliquam. Diam donec adipiscing tristique risus nec feugiat. 
				</p>
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
