<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member's area</title>
</head>
<body>
<%
	String username = null, sessionId = null;
	if(request.getSession().getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	} else {
		username = request.getSession().getAttribute("username").toString();
		sessionId = request.getSession().getId();
	}

%>
Username: <%=username %> <br/>
SessionID: <%=sessionId %> <br/>
<h2>Member's area</h2>
<form action="<%= request.getContextPath() %>/MemberAreaController" method="get">
    <input type="hidden" name="action" value="destroy">
    <input type="submit" value="Logout">
</form>

</body>
</html>