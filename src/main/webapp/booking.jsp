<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Booking Page</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
  <h2>Book an Appointment</h2>
  <form id="bookingForm">
    <label for="name">Full Name:</label>
    <input type="text" id="name" required>

    <label for="email">Email:</label>
    <input type="email" id="email" required>

    <label for="service">Select Service:</label>
    <select id="service" required>
      <option value="">-- Choose a Service --</option>
      <option value="Haircut">Haircut</option>
      <option value="Facial">Facial</option>
      <option value="Massage">Massage</option>
    </select>

    <label for="date">Select Date:</label>
    <input type="date" id="date" required>

    <label for="time">Select Time:</label>
    <input type="time" id="time" required>

    <button type="submit">Book Now</button>
  </form>
  <p id="confirmationMessage" class="hidden">Booking Confirmed!</p>
</div>
<script src="script.js"></script>
</body>
</html>