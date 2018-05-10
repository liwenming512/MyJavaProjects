<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<title>Spring MVC eg1</title>
</head>
<body>
	<h2>All Employees inSystem</h2>
	<table border="1">
		<tr>
			<th>Employee Id</th>
			<th>First Name</th>
			<th>Last Name</th>
		</tr>
		<c:forEach items="${employees}" var="employee">
			<tr>
				<td>${employee.id}</td>
				<td>${employee.firstname}</td>
				<td>${employee.lastname}</td>
			</tr>
        </c:forEach>
    </table>
</body>
</html>