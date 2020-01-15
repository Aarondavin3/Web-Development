<%-- 
    Document   : Cart
    Created on : 04-Jan-2020, 15:33:05
    Author     : adavi
--%>

<%@page import="com.kiteapp.model.kiteUser"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                          <li class="active"><a href="/KiteWebApplication/Homepage.jsp">OUR ROOTS</a></li>
                          <li><a href="/KiteWebApplication/ourKites.jsp">OUR KITES</a></li>
                          <li><a href="productServlet">SHOP</a></li>
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
            	
    
        <section class="jumbotron text-center">
            <div class="container">
                 <h1 class="jumbotron-heading">E-COMMERCE CART</h1>
            </div>
        </section>

        <div class="container mb-4">
            <div class="row">
                <div class="col-12">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col"> </th>
                                    <th scope="col">Product</th>
                                    <th scope="col">Available</th>
                                    <th scope="col" class="text-center">Quantity</th>
                                    <th scope="col" class="text-right">Price &euro;</th>
                                    <th> </th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="item" items="${sessionScope.cart}">
                                    <c:set var="total" value="${total + item.kite.cost * item.quantity}"></c:set>
                                    
                                <tr>
                               
                                
                                
                                    <td><img src="img/<c:out value="${tempproduct.getKiteID()}"/>.jpg" class="img-responsive" style="width:100%" alt="Delta Kite"> </td>
                                    <td>${item.kite.name}</td>
                                    <td>In Stock</td>
                                    <td>
                                        <form action="${postUrl}" method="POST">
                                         <input type="hidden" name="id" value="${item.kite.kiteID}">
                                         <input class="form-control" name="QUANTITY" type="text" value="${item.quantity}" id="quantity" />
                                         <input type="submit" value="Update">
                                        </form>
                                    </td>
                                    <td class="text-right">${item.kite.cost}</td>
                                    <td class="text-right"><a href="${pageContext.request.contextPath }/cartServlet?action=remove&kiteID=${item.kite.kiteID}"><span class="glyphicon glyphicon-trash"></span></a> </td>
                                </tr>
                                
                                </c:forEach>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>Sub-Total</td>
                                    <td class="text-right">&euro;&nbsp;${total}</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>Shipping</td>
                                    <td class="text-right">0.00</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td><strong>Total</strong></td>
                                    <td class="text-right"><strong></strong>&euro;&nbsp;${total}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col mb-2">
                    <div class="row">
                        <div class="col-sm-12  col-md-6">
                             <a href="productServlet" class="btn btn-primary btn-lg">CONTINUE SHOPPING</a>
                        </div>
                        <div class="col-sm-12 col-md-6 text-right">
                          <a href="/KiteWebApplication/Checkout.jsp" class="btn btn-primary btn-lg">CHECKOUT</a>
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
