<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Welcome Page Menus</title>
	<link rel="stylesheet" type="text/css" href="../css/master_css.css" />	
	<style type="text/css">
			ul {list-style: none;padding: 0px;margin: 0px;}
		  	ul li {display: block;position: relative;float: left;border:0px solid #000}
		  	li ul {display: none;}
		  	ul li a {display: block;background: #085753;padding: 5px 10px 5px 10px;text-decoration: none;
		           white-space: nowrap;color: #085753;}
		  	ul li a:hover {background: #085753;}
		  	li:hover ul {display: block; position: absolute;}
		  	li:hover li {float: none;}
		  	li:hover a {background: #085753;}
		  	li:hover li a:hover {background: #085753;}
		
		  	#drop-nav li ul li {border-top: 0px;}
		  	
			<!-- org colors #00BFFF -->
		</style>
</head>
<body bgcolor="#085753">
	<table width="100%" border="0" align="center" bgcolor="#085753" cellspacing="0" cellpadding="5">
		<tr>
		
	    	<td align="center" width="5%">
				<ul id="drop-nav">
  					<li> <a href="home.jsp" style=" color:#ffffff;" > <b>Home</b> </a> </li>
  				</ul>
			</td> 
			
			<td align="center" style=" color:#ffffff;" width="1%">
			|
			</td>
		
			

			
	
			<td align="left" width="5%">
				<div class="nav">
					<ul id="drop-nav">
						<li><a href="#" style=" color:#ffffff;">Facilities</a>
							<ul>
								<li><a href="readingHall.jsp" style=" color:#ffffff;">Reading Hall</a></li>
								<li><a href="hostelMess.jsp" style=" color:#ffffff;">Hostel Mess</a></li>
								<!-- <li><a href="parkingFacility.jsp" style=" color:#ffffff;">Parking Facility</a></li> -->
							 </ul>
						</li>
					</ul>
				</div>
			</td>

			<td align="center"  style=" color:#ffffff;" width="1%">
			|
			</td>
	
			<td align="center" width="5%">
				<ul id="drop-nav">
  					<li> <a href="contactUs.jsp" style=" color:#ffffff;"> Contact Us </a> </li>
  				</ul>
			</td> 
					
			<td align="center" style=" color:#ffffff;" width="1%">
			|
			</td>
			
			<td align="right" width="83%">
				<a href="createUser.jsp" style=" color:#ffffff;"> Create Account </a>
			</td>
			<td align="right" width="83%">
				<a href="logIn.jsp" style="color: #ffffff;"> Login </a>
			</td>
			
		</tr> 
	</table>
</body>
</html>