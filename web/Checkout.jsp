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
            
            <div class="container-fluid">
  <div class="page-header">
    <h1>Checkout <small>Step 2 of 3</small></h1>
  </div>
  <div class="row">
    <div class="col-xs-12">
      <div class="well">
        &hellip;
      </div>
      <div class="checkbox">
        <label data-toggle="collapse" data-target="#promo">
          <input type="checkbox"> I have a promo code
        </label>
      </div>
      <div class="collapse" id="promo">
        <div class="form-group">
          <label for="inputpromo" class="control-label">Promo Code</label>
          <div class="form-inline">
            <input type="text" class="form-control" id="inputpromo" placeholder="Enter promo code">
            <button class="btn btn-sm">Apply</button>
          </div>
        </div>
      </div>
      <h3>Ship my order to&hellip;</h3>
      <div class="list-group">
        <div class="list-group-item">
          <div class="list-group-item-heading">          
              <div class="row radio">
                <div class="col-xs-3">
                  <label>
                    <input type="radio" name="optionShipp" id="optionShipp1" value="option2">
                    1509 Latona St
                  </label>
                </div>
                <div class="col-xs-5">
                  <dl class="dl-small">
                    <dt>Miguel Perez</dt>
                    <dd>1509 Latona St, Philadelphia, PA 19146 </dd>
                  </dl>
                  <button class="btn btn-sm">Edit</button>
                  <button class="btn btn-sm btn-link">Delete this address</button>
                  <br><br>
                </div>
              </div>
          </div>
        </div>
          
        <div class="list-group-item">
          <div class="list-group-item-heading">          
              <div class="row">
                <div class="col-xs-3">
                  <div class="radio">
                    <label>
                      <input type="radio" name="optionShipp" id="optionShipp2" value="option2" checked>
                      A new address
                    </label>
                  </div>
                </div>
                <div class="col-xs-9">                      
                  <form role="form" class="">
                    <div class="form-group">
                      <label for="inputname">Name</label>
                      <input type="text" class="form-control form-control-large" id="inputname" placeholder="Enter name">
                    </div>
                    <div class="form-group">
                      <label for="inputAddress1">Street address 1</label>
                      <input type="text" class="form-control form-control-large" id="inputAddress1" placeholder="Enter address">
                    </div>
                    <div class="form-group">
                      <label for="inputAddress2">Street address 2</label>
                      <input type="text" class="form-control form-control-large" id="inputAddress2" placeholder="Enter address">
                    </div>
                    <div class="row">
                      <div class="col-xs-3">
                        <div class="form-group">
                          <label for="inputZip">ZIP Code</label>
                          <input type="text" class="form-control form-control-small" id="inputZip" placeholder="Enter zip">
                        </div>
                      </div>
                      <div class="col-xs-9">
                        <div class="form-group">
                          <label for="inputCity">City</label>
                          <input type="text" class="form-control" id="inputCity" placeholder="Enter city">
                        </div>
                      </div>
                    </div>
                      <br>
                    <div class="form-group">
                      <label for="inputState" class="control-label">State</label>
                      <select class="form-control form-control-large">
                        <option>Select state</option>
                      </select>
                    </div>
                  </form>
                  <button class="btn btn-sm">Save Address</button>
                  <br><br>
                </div>
              </div>
          </div>
        </div>
      </div>
      <form role="form">
          <div class="checkbox">
            <label data-toggle="collapse" data-target="#gift">
              <input type="checkbox"> I'd like to include a gift message
            </label>
          </div>
          <div class="form-group collapse" id="gift">
            <label for="inputGift" class="control-label">Gift Message</label>
            <textarea class="form-control form-control-large" rows="3"></textarea>
            <p class="help-block">256 characters left</p>
          </div>
      </form>
      <h3>I'll pay with&hellip;</h3>
      <div class="list-group">
        <div class="list-group-item">
          <div class="list-group-item-heading">          
              <div class="row radio">
                <div class="col-xs-3">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2" checked>
                    My Visa Card
                  </label>
                </div>
                <div class="col-sm-9">
                  <div class="row">
                    <div class="col-xs-4">                      
                      <dl class="dl-small">
                        <dt>Credit Card Number</dt>
                        <dd>**********1111</dd>
                      </dl>
                    </div>
                    <div class="col-xs-2">
                      <dl class="dl-small">
                        <dt>Expiration</dt>
                        <dd>07/2016</dd>
                      </dl>
                    </div>
                    <div class="col-xs-6">
                      <dl class="dl-small">
                        <dt>Billing Address</dt>
                        <dd>1509 Latona St, Philadelphia, PA 19146 </dd>
                      </dl>
                    </div>
                  </div>
                  <button class="btn btn-sm">Edit</button>
                  <button class="btn btn-sm btn-link">Delete this card</button>
                  <br><br>
                </div>
              </div>
          </div>
        </div>
        <div class="list-group-item">
          <div class="list-group-item-heading">          
              <div class="row radio">
                <div class="col-xs-3">
                  <label data-toggl-e="collapse" data-target="#newcard">
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                    A New Credit Card
                  </label>
                </div>
                <div class="col-xs-9"> 
                <div class="media-body" id="newcard">
                    We accept these credit cards.
                </div>
                  <div class="media">
                    <a class="media-left" href="#">
                      <img src="img/cardslogo.png" alt=""/>
                    </a>         
                    <br><br>
                  </div>
                </div>
              </div>
          </div>
        </div>
        <div class="list-group-item">
          <div class="list-group-item-heading">          
              <div class="row radio">
                <div class="col-xs-3">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                    PayPal
                  </label>
                </div>
                <div class="col-xs-9"> 
                  <div class="media-body">
                      When you click "Place Order", you will be taken to the PayPal website.
                  </div>  
                  <div class="media">
                    <a class="media-left" href="#">
                      <img src="img/Paypal.png" id="paypal" alt="" />
                    </a>
                  </div>
                </div>
              </div>
          </div>
        </div>
      </div>
      <div class="orderButton">
        <a href="#" class="btn btn-primary btn-lg" >PLACE ORDER</a>
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
</html>