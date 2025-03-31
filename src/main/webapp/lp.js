document.addEventListener("DOMContentLoaded", function () {
    // Smooth scrolling for navigation links
    const links = document.querySelectorAll("nav ul li a:not([href='customerLogin.jsp']), footer a:not([href='employeeLogin.jsp'])");

    links.forEach(link => {
        link.addEventListener("click", function (e) {
            // Only prevent default for anchor links
            if (this.getAttribute('href').startsWith('#')) {
                e.preventDefault();
                const targetId = this.getAttribute("href").substring(1);
                document.getElementById(targetId).scrollIntoView({ behavior: "smooth" });
            }
        });
    });
});