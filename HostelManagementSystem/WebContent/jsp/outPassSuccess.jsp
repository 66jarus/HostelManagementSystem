<%@page import="org.apache.catalina.connector.Request"%>
<%@page import="com.Student.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
	<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
	<%@page import="java.util.Iterator" %>
<%@page import="java.io.File" %>
<%@page import="com.Student.OutPass"%>
<%@page import="com.Mail.userMail" %>
<%@page import="com.User.User" %>
	
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title> Out Pass Submited ?</title>
	</head>
	<body>
		<table width="100%" border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td width="100%" colspan="5"><img src="../images/header.jpg" width="100%"
				height="150"></td>
		</tr>
		<tr>
			<td colspan="5">
				<%@page import="com.User.User"%>
				<%
				User user1 = (User)session.getAttribute("user");
				if(user1 == null){
				%>
			   <%@ include file="topMenusForPublic.jsp" %>
			   <%
			   	}
				else{
					String role = user1.getRole();
				%>
					<%
					if(role.equalsIgnoreCase("student")){
					%>
					<%@ include file="topMenusForStudent.jsp" %>
					<!-- <script>alert("Welcome : "+document.getElementById("welcome").value);</script> -->
					
					<%}else if(role.equalsIgnoreCase("security")){ %>
					<%@ include file="topMenusForSecurity.jsp" %>
					<!-- <script>alert("Welcome : "+document.getElementById("welcome").value);</script> -->
					
					<%}else if(role.equalsIgnoreCase("rector")){ %>
					<%@ include file="topMenusForRector.jsp" %>
					<!-- <script>alert("Welcome : "+document.getElementById("welcome").value);</script> -->
					
					<%}else if(role.equalsIgnoreCase("admin")){ %>
					<%@ include file="topMenusForAdmin.jsp" %>
					<!-- <script>alert("Welcome : "+document.getElementById("welcome").value);</script> -->
					
					<%}else{ %>
					<%@ include file="topMenusForPublic.jsp" %>
					<%} %>
					
				<%}%>
			</td>
		</tr>
		<tr bgcolor="white">
			<td align="center" colspan="5" height="30px"><u><b>Out Pass</b></u></td>
		</tr> 
		
		<!-- Start Work From Here -->
		
			
			<tr>
				<td align="center" colspan="5" width="40% "><br>
					<form name="frm" method="post"  action="outPass.jsp" >
						<table border="0" cellspacing="0" cellpadding="0">
						<%

								int successFlag=0;
								int outPassId = 0; 
								OutPass outPass = new OutPass();
								
								String appliedDate=request.getParameter("appliedDate");
								String name=request.getParameter("name");
								String classN=request.getParameter("classN");
								String department=request.getParameter("department");
								String rollNo=request.getParameter("rollNo");
								String roomNo=request.getParameter("roomNo");
								String hostelNo=request.getParameter("hostelNo");
								String leaveDate=request.getParameter("leaveDate");
								String reportDate=request.getParameter("reportDate");
								String address=request.getParameter("address");
								String contact=request.getParameter("contact");
								String guardianContact=request.getParameter("guardianContact");
								
								outPass.setAppliedDate(appliedDate);
								outPass.setName(name);
								outPass.setClassN(classN);
								outPass.setDepartment(department);
								outPass.setRollNo(rollNo);
								outPass.setRoomNo( roomNo);
								outPass.setHostelNo(hostelNo);
								outPass.setLeaveDate(leaveDate);
								outPass.setReportDate(reportDate);
								outPass.setAddress(address);
								outPass.setContact(contact);
								outPass.setGuardianContact(guardianContact);
								
								User user=new User();
								user=(User)session.getAttribute("user");
								session.setAttribute("user", user);
								String userId = user.getUserId();
								outPass.setUserId(userId);
								successFlag = StudentDAO.addOutPass(outPass);
								%>
							<tr>
								<%if(successFlag>0){ 
									outPassId=StudentDAO.getOutPassId(outPass);
									/*try{
					      				userMail.latePassIdMail(userId,latePassId);
					      			    RequestDispatcher rd = request.getRequestDispatcher("logInHome.jsp");
					    				rd.forward(request, response); 
								    }catch (Exception e){
									    System.out.println("in main \nerror occur while  sending  the mail");
										e.printStackTrace();
								    }*/
								%>
								<script>
								alert("Your Request Has Been Approval");
								document.frm.submit();
								</script>
	<!-- 							<td style="color: green;" align="center"><h1>Your Request Forwarded For Approval</h1></td>
	 -->							<%}else{ %>
								<script>
								alert("Your Request Not Approval\nSome Error Is Occurred\nPlease Try Again !!!");
								document.frm.submit();
								</script>
	<!-- 							<td style="color: red;" align="center"><h1>Your Request Not Forwarded Successfully For Approval<br>Some Error Is Occurred <br>Please Try Again !!! </h1></td>
	 -->							<%} %>
							</tr>
							
							<tr><td colspan="3">&nbsp;</td></tr>
							<tr>
								<td align="center" colspan="3">
									<input type="submit"  name="add" value="Add More Data" style="width: 50%;height: 25px;font-size: 17px">&nbsp;&nbsp;&nbsp;
								</td>		
							</tr>
						</table>
					</form>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				</td>
			</tr> 
		</table>
	</body>
</html>