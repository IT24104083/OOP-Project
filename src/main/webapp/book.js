document.getElementById("bookingForm").addEventListener("submit", function(event) {
    event.preventDefault();

    let name = document.getElementById("name").value;
    let email = document.getElementById("email").value;
    let service = document.getElementById("service").value;
    let date = document.getElementById("date").value;
    let time = document.getElementById("time").value;

    if (name && email && service && date && time) {
        document.getElementById("confirmationMessage").classList.remove("hidden");
        document.getElementById("bookingForm").reset();
    } else {
        alert("Please fill out all fields!");
    }
});