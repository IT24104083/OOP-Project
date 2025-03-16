<%--
  Created by IntelliJ IDEA.
  User: thami
  Date: 3/14/2025
  Time: 12:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link rel="stylesheet" href="ss.css">
</head>
<body>
<div class="container">
    <form>
        <h2>Registration</h2>

        <div class="form-group">
            <label for="fullname">Full Name</label>
            <input type="text" id="fullname" placeholder="Enter your name">
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" placeholder="Enter your email">
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" placeholder="Enter your password">
        </div>

        <div class="form-group">
            <label>Gender</label>
            <div class="gender-options">
                <input type="radio" id="male" name="gender">
                <label for="male">Male</label>

                <input type="radio" id="female" name="gender">
                <label for="female">Female</label>

                <input type="radio" id="other" name="gender">
                <label for="other">Prefer not to say</label>
            </div>
        </div>

        <button type="submit">Register</button>
    </form>
</div>
</body>
</html>
