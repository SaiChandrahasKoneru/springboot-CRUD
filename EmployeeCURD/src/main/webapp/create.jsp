<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Employee</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
<div>
	<form action="/create" method="post" class="container mt-4">
		<h1>Add Employee</h1>
		<div class="mb-3">
		  <label for="name" class="form-label">Name</label>
		  <input type="text" class="form-control" id="name" name="name" placeholder="Enter name"/>
		</div>
		<div class="mb-3">
		  <label for="designation" class="form-label">Designation</label>
		  <input type = "text" class="form-control" id="designation" name="designation" placeholder="Enter the designation">
		</div>
		<div class="mb-3">
		  <label for="salary" class="form-label">Salary</label>
		  <input type = "number" class="form-control" id="salary"name="salary" placeholder="Enter the Salary">
		</div>
		<div class="mb-3">
		  <label for="age" class="form-label">Age</label>
		  <input type = "number" class="form-control" id="age" name="age" placeholder="Enter the Age">
		</div>
		<div class="mb-3">
		  <input type = "submit" class="btn btn-primary" value = "Submit">
		</div>
		
	</form>
</div>
</body>
</html>