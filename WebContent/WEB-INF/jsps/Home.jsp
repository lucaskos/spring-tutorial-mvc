<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<h3>Hello world!</h3>
	<p>
		Request using session object
		<%=session.getAttribute("name")%></p>
	<p>
		Request using request object
		<%=request.getAttribute("name")%></p>
	<p>Request using EL ${name}</p>
	<p>
		<c:out value="${name}"></c:out>
	</p>

	<sql:query var="rs" dataSource="jdbc/spring">
	select id, name, email, offer from offers
	</sql:query>

	<c:forEach var="row" items="${rs.rows}">
    ID ${row.id}<br />
    Name ${row.name}<br />
    E-mail ${row.email }<br />
    Offers ${row.offer } <br />
	</c:forEach>
</body>
</html>