// Modal functions
function openModal(modalId) {
    document.getElementById(modalId).style.display = 'block';
}

function closeModal(modalId) {
    document.getElementById(modalId).style.display = 'none';
    const errorElement = document.getElementById('passwordError');
    if (errorElement) {
        errorElement.style.display = 'none';
    }
}

// Close modal when clicking outside
window.onclick = function(event) {
    if (event.target.className === 'modal') {
        document.querySelectorAll('.modal').forEach(modal => {
            modal.style.display = 'none';
        });
    }
}

// Password validation
function validatePasswordChange() {
    const newPassword = document.getElementById('newPassword').value;
    const confirmPassword = document.getElementById('confirmPassword').value;
    const errorElement = document.getElementById('passwordError');

    if (newPassword !== confirmPassword) {
        errorElement.textContent = "Passwords do not match!";
        errorElement.style.display = 'block';
        return false;
    }

    if (newPassword.length < 8) {
        errorElement.textContent = "Password must be at least 8 characters long!";
        errorElement.style.display = 'block';
        return false;
    }

    return true;
}