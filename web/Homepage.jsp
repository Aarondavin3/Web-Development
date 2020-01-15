<%@page pageEncoding="UTF-8" %>
<%@page import="com.kiteapp.model.kiteUser"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <c:set var="loc" value="en_US"/>
    <c:if test="${!(empty param.locale)}">
        <c:set var="loc" value="${param.locale}"/>
    </c:if>
    <fmt:setLocale value="${loc}" />
    <fmt:bundle basename="com.kiteapp.utils/app">
        
   
	<head>
            <title><fmt:message key="newTitle"/></title>
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
                <script type="text/javascript" src="js/ajaxSearch.js"></script>
		
		
	</head>
	<body>
            <div class="header">
             <h1><fmt:message key="newTitle"/></h1>
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
                          <li class="active"><a href="#"><fmt:message key="ourRoots"/></a></li>
                          <li><a href="/KiteWebApplication/ourKites.jsp"><fmt:message key="ourKites"/></a></li>
                          <li><a href="productServlet"><fmt:message key="shop"/></a></li>
                          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><fmt:message key="follow"/></a>
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
                          <li><a href="${pageContext.request.contextPath }/cartServlet"<span class="glyphicon glyphicon-shopping-cart"></span></a></li>
                          <li><a href="#" data-toggle="modal" data-target="#exampleModal" <span class="glyphicon glyphicon-globe"></span></a></li>
                          <c:url value="Homepage.jsp" var="engURL">
                            <c:param name="locale" value="en_US"/>
                          </c:url>    
                         
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                              <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Please Select Language</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                    </button>
                                  </div>
                                  <div class="modal-body">
                                      <a href="${engURL}">
                                          <img src="https://media.giphy.com/media/Mh9fsz5AolnDq/giphy.gif"/>
                                      </a>
                                      <c:url value="Homepage.jsp" var="frenchURL">
                                        <c:param name="locale" value="fr_FR"/>
                                      </c:url>    
                                      <a href="${frenchURL}">
                                          <img src="https://media.giphy.com/media/ErPDvrEYZYNOM/giphy.gif"/>
                                      </a>
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                  </div>
                                </div>
                              </div>
                            </div>
                      </ul>
                  </div>
              </div>
            </nav>
            <script>
                $(document).ready(function(){
                    $('[data-toggle="popover"]').popover();
		});
            </script>
            <div class="carousel-inner">
                <img src="img/Header.jpg">
            </div>	
		
	<div class="container-fluid">
            <div class = "row">
             <div class="col-sm-4">
              <div class="panel panel-primary">
	       <div class="panel-heading">DELTA</div>
                <div class="panel-body"><img src="img/Delta-1.jpg" class="img-responsive" style="width:100%" alt="Delta Kite"></div>
		 <div class="panel-footer panel-custom"><a href="productServlet">SHOP COLLECTION</a></div>
	      </div>
	</div>
	
	<div class ="col-sm-4">
	 <div class="panel panel-primary">
	  <div class="panel-heading">PARAFOIL</div>
	   <div class="panel-body"><img src="img/Parafoil-11.jpg" class="img-responsive" style="width:100%" alt="Parafoil 	Kite"></div>
	    <div class="panel-footer panel-custom"><a href="productServlet">SHOP COLLECTION</a></div>
	</div>
	</div>
	
	<div class="col-sm-4">
	 <div class="panel panel-primary">
	  <div class="panel-heading">DIAMOND</div>
	   <div class="panel-body"><img src="img/Diamond.jpg" class="img-responsive" style="width:100%" alt="Diamond Kite"></div>
	    <div class="panel-footer panel-custom"><a href="productServlet">SHOP COLLECTION</a></div>
	</div>
	</div>
	</div>
	</div>
	
	<div class="container text-left">
	  <h1>OUR ROOTS</h1>
	</div>
	  <div class="container-fluid">
	   <div class="row">
	    <div class="col-sm-6">
	     <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
			Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
			Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
			<br><br>
			Aliquet porttitor lacus luctus accumsan tortor posuere ac. Sagittis nisl rhoncus mattis rhoncus urna neque. Lobortis mattis aliquam faucibus purus in massa tempor nec feugiat. Ut enim blandit volutpat maecenas volutpat blandit. Cras sed felis eget velit aliquet. Aenean vel elit scelerisque mauris pellentesque.
			Imperdiet massa tincidunt nunc pulvinar. Tristique risus nec feugiat in fermentum posuere urna nec. Imperdiet dui accumsan sit amet nulla. Congue quisque egestas diam in. At volutpat diam ut venenatis tellus in metus vulputate eu. Quisque egestas diam in arcu cursus euismod.
			Eget mauris pharetra et ultrices neque. Nisl purus in mollis nunc sed id semper risus. Duis at tellus at urna condimentum.
		 </p>
	   </div>
	   <div class="col-sm-6">
	    <img src ="img/kite.jpg" class="img-responsive" style="width:100%" alt="Kite">
	   </div>	
	  </div> 
	</div>
	
	<div class="container-fluid">
	 <div class="row">
	  <div class="col-sm-6">
		<img src="img/kite1.jpg" class="img-responsive" style="width:100%" alt="Kite">
	  </div>
	  <div class="col-sm-6">
	   <div class="card">
	   <br>
	    <div class="card-body">SHOP NOW<br> & GET 10% OFF
		<br>
		<a href="productServlet" class="btn btn-primary btn-lg">SHOP</a>
		</div>
	   </div>
	  </div>
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
     </fmt:bundle>
	</html>