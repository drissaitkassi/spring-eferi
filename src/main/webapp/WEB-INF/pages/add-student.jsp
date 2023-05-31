<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html><html lang="en" ><head>    <meta charset="UTF-8">
<title>Add New User</title>
</head>
<body>
<h2>Add a Student</h2>
<%--@elvariable id="student" type="Student"--%>
<form:form action="saveStudent" modelAttribute="student" method="POST">
    <label>First Name</label><form:input type="text" path="firstName" />
    <BR/>
    <label>Last Name</label><form:input type="text" path="lastName"/>
    <BR/>    <label>Email</label><form:input type="text" path="email"/>
    <BR/>    <input type="submit" value="save">
</form:form>
<a href="${pageContext.request.contextPath }/listStudents">Back to list</a>
</body>
</html>