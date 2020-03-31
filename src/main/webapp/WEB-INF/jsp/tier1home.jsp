<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
  <head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Management</title>
        	<link href="/resources/css/style.css" rel="stylesheet" type="text/css" />
    
    </head>
<body>
<div class="topnav">
<ol id="toc">
      <a href="profile"><span>Profile</span></a></li>
   
      <a href="<c:url value='/logout'/>"><span>Logout</span></a>  
	</ol>
</div>
<div class="content">
  <center><h1>Welcome to Sun Financial</h1></center>
  <div id="login-box-ext-usr">
	
	<div align="center">
	<h2>Select type of change</h2>

		<table>	
		<tr>
			<td>
			<span> ${message}</span>
			</td>
			</tr>
		<tr>
		<td>
      <form:form action="user" method="post" modelAttribute="search">
       <form:input path="userName"  />
            <form:errors path = "userName"/>
      <input id="makechanges" type="submit" value="Search User" />
      </form:form>

		 </td>
			
	
	
		
		<tr>
			<td>
		      <a href="<c:url value='transactions'/>"><span>View Transactions</span></a>  	
			</td>
		</tr>
		

		</table>
		

	</div>
   </div>
</div>
<div class="footer">
  <p>Footer</p>
</div>

</body>
</html>