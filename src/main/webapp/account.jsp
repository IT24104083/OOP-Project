<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Account - Salon Maleesha</title>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="account.css">
</head>
<body>
<div class="container">
    <header>
        <div class="welcome-message">
            <h1>Welcome, ${user.name}!</h1>
            <p>Your personal beauty dashboard</p>
        </div>
        <a href="LogoutServlet" class="logout-btn">
            <i class="fas fa-sign-out-alt"></i> Logout
        </a>
    </header>

    <div class="account-section">
        <div class="profile-card">
            <div class="profile-header">
                <div class="profile-avatar">
                    ${user.name.charAt(0)}
                </div>
                <div class="profile-info">
                    <h2>${user.name}</h2>
                    <p>Valued Member Since 2023</p>
                </div>
            </div>

            <div class="account-details">
                <div class="detail-item">
                    <span class="detail-label"><i class="fas fa-envelope"></i> Email</span>
                    <span class="detail-value">${user.email}</span>
                </div>
                <div class="detail-item">
                    <span class="detail-label"><i class="fas fa-star"></i> Membership</span>
                    <span class="detail-value">Premium</span>
                </div>
                <div class="detail-item">
                    <span class="detail-label"><i class="fas fa-calendar-alt"></i> Last Visit</span>
                    <span class="detail-value">15 Nov 2023</span>
                </div>
            </div>
        </div>

        <div class="actions-card">
            <h3 class="section-title">Beauty Services</h3>

            <div class="action-grid">
                <div class="action-card book-appointment">
                    <div class="action-icon">
                        <i class="fas fa-calendar-check"></i>
                    </div>
                    <h3>Book Appointment</h3>
                    <p>Schedule your next pampering session with our experts</p>
                    <a href="booking.jsp" class="action-btn">Book Now</a>
                </div>

                <div class="action-card update-email">
                    <div class="action-icon">
                        <i class="fas fa-at"></i>
                    </div>
                    <h3>Update Email</h3>
                    <p>Change your account email address</p>
                    <button onclick="openModal('emailModal')" class="action-btn">Update</button>
                </div>

                <div class="action-card update-password">
                    <div class="action-icon">
                        <i class="fas fa-key"></i>
                    </div>
                    <h3>Change Password</h3>
                    <p>Set a new secure password for your account</p>
                    <button onclick="openModal('passwordModal')" class="action-btn">Change</button>
                </div>

                <div class="action-card delete-account">
                    <div class="action-icon">
                        <i class="fas fa-user-times"></i>
                    </div>
                    <h3>Delete Account</h3>
                    <p>Permanently remove your account from our system</p>
                    <button onclick="openModal('deleteModal')" class="action-btn">Delete</button>
                </div>
            </div>

            <% if (request.getAttribute("success") != null) { %>
            <div class="success-message">
                <i class="fas fa-check-circle"></i> <%= request.getAttribute("success") %>
            </div>
            <% } %>

            <% if (request.getAttribute("error") != null) { %>
            <div class="error-message">
                <i class="fas fa-exclamation-circle"></i> <%= request.getAttribute("error") %>
            </div>
            <% } %>
        </div>
    </div>
</div>

<!-- Email Update Modal -->
<div id="emailModal" class="modal">
    <div class="modal-content">
        <span class="close-modal" onclick="closeModal('emailModal')">&times;</span>
        <h3 class="modal-title">Update Email</h3>
        <form action="UpdateEmailServlet" method="post">
            <div class="form-group">
                <label for="newEmail">New Email Address</label>
                <input type="email" id="newEmail" name="newEmail" required>
            </div>
            <div class="form-group">
                <label for="currentPasswordEmail">Current Password</label>
                <input type="password" id="currentPasswordEmail" name="currentPassword" required>
            </div>
            <button type="submit" class="submit-btn">Update Email</button>
        </form>
    </div>
</div>

<!-- Password Update Modal -->
<div id="passwordModal" class="modal">
    <div class="modal-content">
        <span class="close-modal" onclick="closeModal('passwordModal')">&times;</span>
        <h3 class="modal-title">Change Password</h3>
        <form action="UpdatePasswordServlet" method="post" onsubmit="return validatePasswordChange()">
            <div class="form-group">
                <label for="currentPassword">Current Password</label>
                <input type="password" id="currentPassword" name="currentPassword" required>
            </div>
            <div class="form-group">
                <label for="newPassword">New Password</label>
                <input type="password" id="newPassword" name="newPassword" required>
            </div>
            <div class="form-group">
                <label for="confirmPassword">Confirm New Password</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
            </div>
            <div id="passwordError" class="error-message" style="display: none;"></div>
            <button type="submit" class="submit-btn">Change Password</button>
        </form>
    </div>
</div>

<!-- Delete Account Modal -->
<div id="deleteModal" class="modal">
    <div class="modal-content">
        <span class="close-modal" onclick="closeModal('deleteModal')">&times;</span>
        <h3 class="modal-title">Delete Account</h3>
        <p style="margin-bottom: 1.5rem;">Are you sure you want to delete your account? This action cannot be undone.</p>
        <form action="DeleteAccountServlet" method="post">
            <div class="form-group">
                <label for="confirmPasswordDelete">Enter your password to confirm</label>
                <input type="password" id="confirmPasswordDelete" name="password" required>
            </div>
            <button type="submit" class="submit-btn" style="background: linear-gradient(135deg, #FF7E5F, #FEB47B);">Permanently Delete Account</button>
        </form>
    </div>
</div>

<script src="account.js"></script>
</body>
</html>