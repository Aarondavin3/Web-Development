<%@page import="java.util.Vector"%>
<%@page import="com.kiteapp.model.Kite"%>
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
                            <li class="active"><a href="userManagementServlet?action=List">User Management</a></li>
                            <li><a href="userManagementServlet?action=addInit">Add users</a></li>
                            <li><a href="#">Modify details</a></li>
                            <li class="nav-header">Product Tasks</li>
                            <li><a href="productManagementServlet?action=List">View Products</a></li>
                            <li><a href="productManagementServlet?action=addInit">Set up products</a></li>
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

                       
                        <h1>Product Management</h1>
                        
                        <div class="container-fluid">
                          <div class="row">
                            <div class="col-sm-3">
                                <p><a href="<c:url value='/productManagementServlet?action=addInit' />" class="btn btn-primary btn-large">ADD PRODUCT</a></p>
                            </div>
                              <div class="col-sm-3">
                        <c:url var="postUrl" value="/productManagementServlet">
                         <c:param name="action" value="delete"/>
                        </c:url>
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                         DELETE PRODUCT
                        </button>
                        <form action="${postUrl}" method="POST">
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                         <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">DELETE USER</h5
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                
                                </div>
                            <div class="modal-body">
                               <input type="text"name="link" id="delete" placeholder=" Enter kite name to delete">
                            </div>
                              <div class="modal-footer">
                                 <button class="btn btn-lg btn-primary center-block"  type="submit">DELETE PRODUCT</button>
                              </div>
                        </div>
                    </div>
                </div>
                </form>
                    </div>   
                       </div>    
                              
                        <br><br>     
                        <c:url var="posTUrl" value="/productManagementServlet">
                         <c:param name="action" value="update"/>
                        </c:url>
                        <div class="container-fluid">
                                <div class="col-sm-2" style="color: #70B5C3">
                                    <strong>USER ID</strong>
                                </div>
                                <div class="col-sm-2" style="color: #70B5C3">
                                    <strong>PRODUCT NAME</strong>
                                </div>
                                <div class="col-sm-2" style="color: #70B5C3">
                                    <strong>COLOUR</strong>
                                </div>
                                <div class="col-sm-2" style="color: #70B5C3">
                                    <strong>MATERIAL</strong>
                                </div>
                                <div class="col-sm-2" style="color: #70B5C3">
                                    <strong>COST</strong>
                                </div>
                                
                            </div>                        
                                                  
                            <c:forEach items="${RKALLPRODUCTS}" var="tempKite">    
                                
                            <form action="${posTUrl}" method="POST">  
                                
                                <div class="container-fluid">
                                    <div class="form-row">
                                        <div class="col-sm-2">
                                            <input type="text" name="id" value="${tempKite.getKiteID()}" id="ID"/>
                                        </div>
                                        <div class="col-sm-2">
                                            <input type="text" name="pName" value="${tempKite.name}" id="pName"/>
                                        </div>
                                        <div class="col-sm-2">
                                            <input type="text" name="colour" value="${tempKite.colour}" id="colour"/>
                                        </div>
                                        <div class="col-sm-2">
                                            <input type="text" name="material" value="${tempKite.material}" id="material"/>
                                        </div>
                                        
                                        <div class="col-sm-2">
                                            <input type="text" name="cost" value="${tempKite.cost}" id="cost"/>
                                       </div>
                                       <div class="col-sm-2">
                                            <button class="btn btn-sm btn-primary center-block"  type="submit">UPDATE PRODUCT</button>
                                       </div>  
                                       
                                    </div>
                                </div>
                                       
                                      
                            </form>   
                            </c:forEach>

                           
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