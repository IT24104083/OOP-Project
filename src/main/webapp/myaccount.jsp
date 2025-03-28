<%--
  Created by IntelliJ IDEA.
  User: thami
  Date: 3/23/2025
  Time: 7:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Account</title>
    <link rel="stylesheet" href="myaccount.css">
</head>
<body>
<div class="account-container">
    <h2>My Account</h2>
    <p><strong>Name:</strong> <span id="userName"></span></p>
    <p><strong>Gender:</strong> <span id="userGender"></span></p>
    <p><strong>Email:</strong> <span id="userEmail"></span></p>

    <h3>Update Email</h3>
    <input type="email" id="newEmail" placeholder="Enter new email">
    <button onclick="updateEmail()">Update Email</button>

    <h3>Delete Account</h3>
    <button class="delete-btn" onclick="deleteAccount()">Delete Account</button>
</div>

<script src="myaccount.js"></script>
</body>
</html>
