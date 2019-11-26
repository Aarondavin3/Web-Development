<%@page import="java.util.Vector"%>
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
                        <li><a href="#">OUR ROOTS</a></li>
                        <li><a href="#">OUR KITES</a></li>
                        <li><a href="#">SHOP</a></li>
                        <li class="active"><a href="/KiteWebApplication/userManagement.jsp">USER MANAGEMENT</a></li>
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
                               data-content=<% kiteUser user = (kiteUser) session.getAttribute("SKUSER");%>
                               Admin:<%= user.getFirstName()%> data-placement="bottom" data-trigger="hover">
                                <span class="glyphicon glyphicon-user"></span></a></li> 
                        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <script>
            $(document).ready(function () {
                $('[data-toggle="popover"]').popover();
            });
        </script>


        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-0" id="mySidenavContainer">
                    <div id="mySidenav" class="sidenav">
                        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                        <ul class="nav nav-list">
                            <li class="nav-header">User Tasks</li>
                            <li class="active"><a href="/BootStrapLogin/UserManagement">User Management</a></li>
                            <li><a href="#">Add users</a></li>
                            <li><a href="#">Modify details</a></li>
                         
                            <li class="nav-header">Product Tasks</li>
                            <li><a href="#">Set up products</a></li>
                            <li><a href="#">Allocate delivery</a></li>
                        </ul>
                    </div>
                </div>


                <script>
                    function openNav() {
                        document.getElementById("mySidenavContainer").className = "col-sm-3";
                        document.getElementById("contentContainer").className = "col-sm-9";
                        document.getElementById("mySidenav").style.width = "250px";
                    }

                    function closeNav() {
                         document.getElementById("mySidenavContainer").className = "col-sm-0";
                        document.getElementById("contentContainer").className = "col-sm-12";
                        document.getElementById("mySidenav").style.width = "0";
                    }
                </script>



                <div class="col-sm-12" id="contentContainer">
                    <span style="font-size:30px;cursor:pointer;position:relative;left:1em;" onclick="openNav()">&#9776;</span>

                    <div class="jumbotron">

                        <% Vector<kiteUser> allUsers = (Vector<kiteUser>) session.getAttribute("SKALLUSERS");%>
                        <h1>User Management</h1>
                        
                        <p><a href="#" class="btn btn-primary btn-large">LEARN MORE &raquo;</a></p>
                        <p><table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Email</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${SKALLUSERS}" var="tempuser">    
                                <tr>
                                <td scope="row"><c:out value="${tempuser.getId()}"/></td>
                                <td>${tempuser.firstName}"</td>
                                <td>${tempuser.lastName}"</td>
                                <td>${tempuser.email}"</td>
                                <td><a> link to edit </a> </td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
                        <br><br><br><br><br><br>               
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