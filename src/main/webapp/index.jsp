<%--
  Created by IntelliJ IDEA.
  User: thami
  Date: 3/1/2025
  Time: 2:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <title>Salary Management</title>
</head>
<body>
<h1>Net Salary Calculator</h1>
<form action="employee" method="post">
    Employee ID: <input type="text" name="emId"><br>
    Employee Name: <input  type="text" name="emName"><br>
    Basic Salary: <input type="text" name="salary"><br>
    Perfomance Rating <input type="text" name="rating"><br>
    <input type="submit" value="Calculate Salary">

</form>
</body>
</html>