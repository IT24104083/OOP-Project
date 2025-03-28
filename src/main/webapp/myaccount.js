document.addEventListener("DOMContentLoaded", function () {
    fetchAccountDetails();
});

function fetchAccountDetails() {
    fetch('/getAccountDetails') // Replace with your actual backend endpoint
        .then(response => response.json())
        .then(data => {
            document.getElementById("userName").innerText = data.name;
            document.getElementById("userGender").innerText = data.gender;
            document.getElementById("userEmail").innerText = data.email;
        })
        .catch(error => console.error("Error fetching account details:", error));
}

function updateEmail() {
    const newEmail = document.getElementById("newEmail").value;
    if (newEmail.trim() === "") {
        alert("Please enter a valid email.");
        return;
    }

    fetch('/updateEmail', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ email: newEmail })
    })
        .then(response => response.text())
        .then(message => {
            alert(message);
            fetchAccountDetails();
        })
        .catch(error => console.error("Error updating email:", error));
}

function deleteAccount() {
    if (confirm("Are you sure you want to delete your account?")) {
        fetch('/deleteAccount', { method: 'DELETE' })
            .then(response => response.text())
            .then(message => {
                alert(message);
                window.location.href = "register.html"; // Redirect to registration page
            })
            .catch(error => console.error("Error deleting account:", error));
    }
}
