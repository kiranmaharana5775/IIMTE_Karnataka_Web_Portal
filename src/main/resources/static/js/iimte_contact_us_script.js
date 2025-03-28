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

function validateError() {
    let isValid = true;

    let name = document.getElementById("name").value.trim();
    if (name === "") {
        showError("name", "Please enter your Name");
        isValid = false;
    }

    let email = document.getElementById("email").value.trim();
    let emailRegex = /^[a-zA-Z0-9._%+-]+@gmail\.com$/;
    if (email === "") {
        showError("email", "Please enter your Email");
        isValid = false;
    } else if (!emailRegex.test(email)) {
        showError("email", "Please enter a valid Gmail address (example@gmail.com)");
        isValid = false;
    }

    let phone = document.getElementById("phone").value.trim();
    let phoneRegex = /^[0-9]{10}$/;
    if (phone === "") {
        showError("phone", "Please enter your Phone Number");
        isValid = false;
    } else if (!phoneRegex.test(phone)) {
        showError("phone", "Please enter a valid 10-digit phone number");
        isValid = false;
    }

    let message = document.getElementById("message").value.trim();
    if (message === "") {
        showError("message", "Please enter a Message");
        isValid = false;
    }

    if (isValid) {
        document.getElementById("contactForm").reset();
        showSuccessPopup();
    }
}

function showError(field, message) {
    let errorElement = document.getElementById(field + "Error");
    errorElement.textContent = message;
    errorElement.style.display = "block";
}

function removeError(field) {
    let errorElement = document.getElementById(field + "Error");
    let inputValue = document.getElementById(field).value.trim();

    if (field === "phone") {
        if (!/^[0-9]*$/.test(inputValue)) {
            showError("phone", "Only numbers allowed");
        } else if (inputValue.length > 0 && inputValue.length < 10) {
            showError("phone", "Please enter a valid 10-digit phone number");
        } else {
            errorElement.style.display = "none";
        }
    } else if (field === "email") {
        let emailRegex = /^[a-zA-Z0-9._%+-]+@gmail\.com$/;
        if (inputValue.length > 0 && !emailRegex.test(inputValue)) {
            showError("email", "Please enter a valid Gmail address (example@gmail.com)");
        } else {
            errorElement.style.display = "none";
        }
    } else {
        errorElement.style.display = "none";
    }
}

function showSuccessPopup() {
    let popup = document.getElementById("successPopup");
    popup.style.display = "block";

    setTimeout(() => {
        popup.style.display = "none";
    }, 10000); 
}