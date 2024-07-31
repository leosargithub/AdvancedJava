<%@page import="com.crud.dao.UserDao" %>
<jsp:useBean id="u" class="com.crud.bean.User"></jsp:useBean> 
<jsp:setProperty property="*" name="u"/>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 

int i = UserDao.save(u);
if(i>0){
	response.sendRedirect("adduser-sucess.jsp");
	
	
}
else {
	response.sendRedirect("adduser-error.jsp");
}
%>
</body>
</html>