<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html><html><head><meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<H2>List Of Students</H2>
<table>
    <tr>
        <th>First Name </th>
        <th> Last Name </th>
        <th> Email </th></tr>
    <jsp:useBean id="students" scope="request" type="java.util.List"/>
    <c:forEach var="TempStudent" items="${students }">    <tr>
        <td> ${TempStudent.firstName }</td>
        <td> ${TempStudent.lastName }</td>
        <td>${TempStudent.email }</td>
    </tr>
    </c:forEach>
</table>
</body>
</html>