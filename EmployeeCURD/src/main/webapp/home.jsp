<%@page import="java.util.List"%>
<%@page import="com.example.demo.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<% List<Employee> employees = (List<Employee>) request.getAttribute("employees"); %>
<div class="container mt-5">
	<div style="display: flex;flex-direction: row;justify-content: space-between;margin-bottom: 2rem;">
		<h1>Employee Dashboard</h1>
		<a href="/create" class="btn btn-lg btn-secondary mb-2">Add Employee</a>
	</div>
	<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Age</th>
      <th scope="col">Designastion</th>
      <th scope="col">Salary</th>
      <th scope="col">Update</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  	<% for(Employee e : employees) { %>
    <tr>
    	<td><%=e.getEmpid() %></td>
    	<td><%=e.getName() %></td>
    	<td><%=e.getDesignation() %></td>
    	<td><%=e.getSalary() %></td>
    	<td><%=e.getAge() %></td>
    	<td><a href="/update/<%=e.getEmpid() %>" class="btn btn-success">Update</a></td>
    	<td><a href="/delete/<%= e.getEmpid() %>" class="btn btn-danger">Delete</a></td>
    </tr>
    <% } %>
  </tbody>
</table>
</div>
</body>
</html>