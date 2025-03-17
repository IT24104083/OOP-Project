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
    <form action="register" method="post">
        <h2>Registration</h2>

        <div class="form-group">
            <label for="fullname">Full Name</label>
            <input type="text" id="fullname" name="fullname" placeholder="Enter your name" required>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>
        </div>

        <div class="form-group">
            <label>Gender</label>
            <div class="gender-options">
                <input type="radio" id="male" name="gender" value="Male">
                <label for="male">Male</label>

                <input type="radio" id="female" name="gender" value="Female">
                <label for="female">Female</label>

                <input type="radio" id="other" name="gender" value="Other">
                <label for="other">Prefer not to say</label>
            </div>
        </div>

        <button type="submit">Register</button>
    </form>
</div>
</body>
</html>


