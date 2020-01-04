<%-- 
    Document   : Cart
    Created on : 04-Jan-2020, 15:33:05
    Author     : adavi
--%>

<%@page import="com.kiteapp.model.kiteUser"%>
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
                          <li class="active"><a href="#">OUR ROOTS</a></li>
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
                                    <th scope="col" class="text-right">Price ?</th>
                                    <th> </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><img src="https://dummyimage.com/50x50/55595c/fff" /> </td>
                                    <td></td>
                                    <td>In Stock</td>
                                    <td><input class="form-control" type="text" value="1" /></td>
                                    <td class="text-right"></td>
                                    <td class="text-right"><button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> </button> </td>
                                </tr>
                                
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>Sub-Total</td>
                                    <td class="text-right"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>Shipping</td>
                                    <td class="text-right"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td><strong>Total</strong></td>
                                    <td class="text-right"><strong></strong></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col mb-2">
                    <div class="row">
                        <div class="col-sm-12  col-md-6">
                            <button class="btn btn-block btn-light">Continue Shopping</button>
                        </div>
                        <div class="col-sm-12 col-md-6 text-right">
                          <a href="/KiteWebApplication/Checkout.jsp" class="btn btn-primary btn-lg">CHECKOUT</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
