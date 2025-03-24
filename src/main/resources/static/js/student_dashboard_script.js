 const dashboardOption = document.getElementById('dashboard-option');
    const enrolledSubjectOption = document.getElementById('subjects-option');
    const admitCardOption = document.getElementById('admit-card-option');
    const resultOption = document.getElementById('result-option');

    // Get content sections
    const dashboardContent = document.getElementById('dashboard-content');
    const enrolledSubjectContent = document.getElementById('enrolled-subject-content');
    const admitCardContent = document.getElementById('admit-card-content');
    const resultContent = document.getElementById('result-content');

    // Function to hide all content
    function hideAllContent() {
      dashboardContent.style.display = 'none';
      enrolledSubjectContent.style.display = 'none';
      admitCardContent.style.display = 'none';
      resultContent.style.display = 'none';
    }

    // Function to remove the 'selected' class from all menu items
    function removeSelectedClass() {
      dashboardOption.classList.remove('selected');
      enrolledSubjectOption.classList.remove('selected');
      admitCardOption.classList.remove('selected');
      resultOption.classList.remove('selected');
    }

    // Add event listeners to sidebar options
    dashboardOption.addEventListener('click', () => {
      hideAllContent();
      dashboardContent.style.display = 'block';
      removeSelectedClass();
      dashboardOption.classList.add('selected');
    });

    enrolledSubjectOption.addEventListener('click', () => {
      hideAllContent();
      enrolledSubjectContent.style.display = 'block';
      removeSelectedClass();
      enrolledSubjectOption.classList.add('selected');
    });

    admitCardOption.addEventListener('click', () => {
      hideAllContent();
      admitCardContent.style.display = 'block';
      removeSelectedClass();
      admitCardOption.classList.add('selected');
    });

    resultOption.addEventListener('click', () => {
      hideAllContent();
      resultContent.style.display = 'block';
      removeSelectedClass();
      resultOption.classList.add('selected');
    });

    // Set Dashboard as the default selected option on page load
    dashboardOption.classList.add('selected');


  // Function to animate the name typing effect
	function typeName() {
	  const nameElement = document.getElementById('animated-name');
	  // Replace with the student's name
	  let index = 0;
	
	  function type() {
	    if (index < studentName.length) {
	      nameElement.textContent += studentName.charAt(index); // Add one character
	      index++;
	      setTimeout(type, 100); // Typing speed (100ms per character)
	    } else {
	      setTimeout(() => {
	        nameElement.textContent = ''; // Clear the name
	        index = 0;
	        setTimeout(type, 4); // Wait 5 seconds before starting again
	      }, 5000); // Wait 2 seconds after finishing typing
	    }
	  }
	
	  type(); // Start the animation
	}
	
	function fetchResult() {
	    var semester = document.getElementById("semester-select").value;
	    semester = semester.charAt(semester.length - 1);
	    var errorMessage = document.getElementById("error-message");
	
	    if (!semester) {
	        errorMessage.textContent = "⚠️ Please select a semester.";
	        errorMessage.style.display = "block";
	        return;
	    }
	
	    fetch("/student_result?semester=" + encodeURIComponent(semester), {
	        method: "GET",
	    })
	    .then(response => response.json())
	    .then(data => {
	        if (data.error) {
	            errorMessage.textContent = data.error;
	            errorMessage.style.display = "block";
	        } else if (data.redirect) {
				errorMessage.style.display = "none";
	            window.open(data.redirect, "_blank");
	        }
	    })
	    .catch(error => {
	        console.error("Error:", error);
	        errorMessage.textContent = "⚠️ Something went wrong.";
	        errorMessage.style.display = "block";
	    });
	}
	
	function logoutAndCloseTab() {
    fetch('/logout', { method: 'GET' }) // Call logout endpoint
      .then(() => {
        window.close(); // Close the dashboard tab
        window.open("/home", "_self"); // Redirect to home in previous tab
      })
      .catch(() => alert("Logout failed!"));
  }
	

    // Function to display the current date
    function displayDate() {
    const dateElement = document.getElementById('date');
    const date = new Date();
    const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
    dateElement.textContent = date.toLocaleDateString('en-US', options);
    }

    // Initialize functions on page load
    window.onload = () => {
    displayDate();
    typeName();
    };