
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

    const sliderImages = document.querySelector('.slider-images');
    const images = document.querySelectorAll('.slider-images img');
    const prevBtn = document.querySelector('.prev-btn');
    const nextBtn = document.querySelector('.next-btn');

    let currentIndex = 0;
    const totalImages = images.length;

    // Function to move to a specific slide
    function goToSlide(index) {
        if (index < 0) {
            // If index is less than 0, go to the last image
            index = totalImages - 1;
        } else if (index >= totalImages) {
            // If index exceeds the total number of images, go to the first image
            index = 0;
        }
        currentIndex = index;
        sliderImages.style.transform = `translateX(-${currentIndex * 100}%)`;
    }

    // Auto-scroll every 2 seconds
    let autoScrollInterval = setInterval(() => {
        goToSlide(currentIndex + 1); // Move to the next image
    }, 2000);

    // Pause auto-scroll on hover
    sliderImages.addEventListener('mouseenter', () => {
        clearInterval(autoScrollInterval);
    });

    // Resume auto-scroll on mouse leave
    sliderImages.addEventListener('mouseleave', () => {
        autoScrollInterval = setInterval(() => {
            goToSlide(currentIndex + 1);
        }, 2000);
    });

    // Manual navigation
    prevBtn.addEventListener('click', () => {
        goToSlide(currentIndex - 1); // Move to the previous image
    });

    nextBtn.addEventListener('click', () => {
        goToSlide(currentIndex + 1); // Move to the next image
    });
});

document.getElementById('studentLoginBtn').addEventListener('click', function() {
    // Open the student login page in a new tab
    window.open('/student_login', '_blank'); // Replace with the actual URL of your student login page
});
