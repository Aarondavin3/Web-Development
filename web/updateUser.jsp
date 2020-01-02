<%-- 
    Document   : addUser
    Created on : 02-Jan-2020, 12:29:28
    Author     : adavi
--%>

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
                        <li><a href="/adminHomepage.jsp">OUR ROOTS</a></li>
                        <li><a href="/Product.jsp">OUR KITES</a></li>
                        <li class="active"><a href="/KiteWebApplication/userManagement.jsp">USER MANAGEMENT</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/KiteWebApplication/index.html" data-toggle="popover" title="WELCOME BACK"  
                               data-content=<% kiteUser user = (kiteUser) session.getAttribute("SKUSER");%>
                               Admin:<%= user.getFirstName()%> data-placement="bottom" data-trigger="hover">
                                <span class="glyphicon glyphicon-user"></span></a></li> 
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
                            <li><a href="userManagementServlet?action=List">User Management</a></li>
                            <li class="active"><a href="#">Add users</a></li>
                            <li><a href="#">Modify details</a></li>
                            <li class="nav-header">Product Tasks</li>
                            <li><a href="productManagementServlet?action=List">View Products</a></li>
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
                    
                    <c:url var="postUrl" value="/userManagementServlet">
                        <c:param name="action" value="update"/>
                    </c:url>
                    
                    <% kiteUser user1 = (kiteUser) request.getAttribute("R");%>
                        <c:out value="${tempuser.getId()}"/>
                    <h3>UPDATE USER:</h3>
                    <div class="inputboxes">
                    <form action="${postUrl}" method="POST">
                        <div class="form-group">
                            <label for="email">Email Address:</label>
                            <input type="email" name="EMAIL" class="form-control" value="<%=user1.getEmail()%>" id="email">
                        </div>
                        <div class="form-group">
                            <label for="pwd">Password:</label>
                            <input type="password" name="PASSWORD"class="form-control" value="<%=user1.getPassword()%>" id="pwd">
                        </div>
                        <div class="form-group">
                            <label for="fname">First Name:</label>
                            <input type="fname" name="FNAME" class="form-control" value="<%=user1.getFirstName()%>" id="fname">
                        </div>
                        <div class="form-group">
                            <label for="lname">Last Name:</label>
                            <input type="lname" name="LNAME" class="form-control" value="<%=user1.getLastName()%>" id="lname">
                        </div>
                        <div class="form-group">
                            <label for="usertype">User Type:</label>
                            <input type="usertype" name="USERTYPE" class="form-control" value="<%=user1.getUserType()%>" id="usertype">
                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox"> Remember me</label>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                    
                    </div>
                </div>
    
    </body>
</html>
