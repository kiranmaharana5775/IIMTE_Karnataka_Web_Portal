document.addEventListener("DOMContentLoaded", function () {
    const menuToggle = document.querySelector(".menu-toggle");
    const navMenu = document.querySelector(".navbar ul");

    menuToggle.addEventListener("click", function () {
        navMenu.classList.toggle("active");

        if (navMenu.classList.contains("active")) {
            menuToggle.innerHTML = "&#10006;"; 
        } else {
            menuToggle.innerHTML = "&#9776;"; 
        }
    });
    
});