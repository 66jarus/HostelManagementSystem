<%@page import="com.Administration.AdminDAO"%>
<%@page import="com.hostel.Hostel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student In Room ?</title>
</head>
<body>
	<%
	int hId = Integer.parseInt(request.getParameter("hId"));
	int rId = Integer.parseInt(request.getParameter("rId"));
	int studId = Integer.parseInt(request.getParameter("studId"));
	
	int successFlag = AdminDAO.deleteStudentFromRoom(studId);
	%>
	<input type="hidden" id="hId" value="<%=hId%>">
	<input type="hidden" id="rId" value="<%=rId%>">
	<%if(successFlag>0){%>
	<script>
		var hId = document.getElementById("hId").value;
		var rId = document.getElementById("rId").value;
		alert("Student deleted successfully.");
		window.location.href = "manageHostel.jsp?hId="+hId+"&rId="+rId;
	</script>
	<%}else{%>
	<script>
		var hId = document.getElementById("hId").value;
		var rId = document.getElementById("rId").value;
		alert("Some error occured.\nStudent not deleted successfully.\nPlease TRY AGAIN !!!");
		window.location.href = "manageHostel.jsp?hId="+hId+"&rId="+rId;
	</script>
	<%}	%>

</body>
</html>