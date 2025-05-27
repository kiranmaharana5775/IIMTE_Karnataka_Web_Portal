<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Indian Institute of Management and Technical Education</title>
        <link rel="stylesheet" href="./css/index_styles.css">
        <link rel="icon" type="image/png" href="./img/college_logo.jpg">
	</head>
	<body>
		<!-- Sticky Outer Container -->
        <div class="sticky-container">
            <!-- Logo and Name -->
            <div class="name_and_logo_container">
                <img class="for_default" src="./img/logo_and_name.jpg" alt="Indian Institute of Management and Technical Education">
            </div>
        
            <!-- Navigation Bar -->
            <nav class="navbar">
                <div class="nav-container">
                    <!-- Hamburger Menu Button (for mobile) -->
                    <div class="menu-toggle">&#9776;</div>
        
                    <!-- Navigation Menu -->
                    <ul class="nav-menu">
                        <li><a href="home" style = "background-color: rgb(51, 51, 122); color: white; border-radius: 5px">Home</a></li>
                        <li><a href="about_us">About Us</a></li>
                        <li><a href="academic">Academic</a></li>
                        <li><a href="students_zone">Students Zone</a></li>
                        <li><a href="programmes">Programmes</a></li>
                        <li><a href="apply">Apply</a></li>
                        <li><a href="contact_us">Contact Us</a></li>
                    </ul>
                </div>
            </nav>
        </div>


        <!-- Image Slider -->
        <div class="image-slider">
            <!-- Navigation Buttons -->
            <button class="slider-btn prev-btn">&lt;</button>
            <button class="slider-btn next-btn">&gt;</button>

            <!-- Images -->
            <div class="slider-images">
                <img src="./img/slider_one.png" alt="Slide 1">
                <img src="./img/slider_two.png" alt="Slide 2">
                <img src="./img/slider_three.png" alt="Slide 3">
                <img src="./img/slider_one.png" alt="Slide 1">
                <img src="./img/slider_two.png" alt="Slide 2">
                <img src="./img/slider_three.png" alt="Slide 3">
                <img src="./img/slider_one.png" alt="Slide 1">
                <img src="./img/slider_two.png" alt="Slide 2">
                <img src="./img/slider_three.png" alt="Slide 3">
                <img src="./img/slider_one.png" alt="Slide 1">
                <img src="./img/slider_two.png" alt="Slide 2">
                <img src="./img/slider_three.png" alt="Slide 3">
            </div>
        </div>

        <!-- Full-width Container -->
        <div class="full-width-container">
            <!-- First Partition (70%) - Notice Board -->
            <!-- <div class="notice-section">
                <img src="./img/notice_board2.jpg" alt="Notice Icon" class="section-icon">
                <div class="notice-content">
                    <h3>Kind Attention Here for Your Notices</h3>
                    <div class="scrolling-text">
                        <p>Important Notice: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        <p>Important Notice: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>  -->

            <!-- Second Partition (30%) - Login Button -->
            <div class="login-section">
                <!-- <img src="./img/user.jpg" alt="Login Icon" class="section-icon" style="border-radius: 50%;"> -->
                <button class="login-btn" id="studentLoginBtn">Student Login</button>
            </div>
        </div>

        <!-- Small Image Collection Slider -->
        <div class="image-collection">
            <div class="collection-images">
                <img src="./img/img_col_0.jpg" alt="Small Image 0">
                <img src="./img/img_col_1.jpg" alt="Small Image 1">
                <img src="./img/img_col_2.jpg" alt="Small Image 2">
                <img src="./img/img_col_3.jpg" alt="Small Image 3">
                <img src="./img/img_col_4.jpg" alt="Small Image 4">
                <img src="./img/img_col_5.jpg" alt="Small Image 5">
                <img src="./img/img_col_6.jpg" alt="Small Image 6">
                <img src="./img/img_col_7.jpg" alt="Small Image 7">
                <img src="./img/img_col_8.jpg" alt="Small Image 8">
                <img src="./img/img_col_9.jpg" alt="Small Image 9">
                <img src="./img/img_col_0.jpg" alt="Small Image 0">
                <img src="./img/img_col_1.jpg" alt="Small Image 1">
                <img src="./img/img_col_2.jpg" alt="Small Image 2">
                <img src="./img/img_col_3.jpg" alt="Small Image 3">
                <img src="./img/img_col_4.jpg" alt="Small Image 4">
                <img src="./img/img_col_5.jpg" alt="Small Image 5">
                <img src="./img/img_col_6.jpg" alt="Small Image 6">
                <img src="./img/img_col_7.jpg" alt="Small Image 7">
                <img src="./img/img_col_8.jpg" alt="Small Image 8">
                <img src="./img/img_col_9.jpg" alt="Small Image 9">
                <img src="./img/img_col_0.jpg" alt="Small Image 0">
                <img src="./img/img_col_1.jpg" alt="Small Image 1">
                <img src="./img/img_col_2.jpg" alt="Small Image 2">
                <img src="./img/img_col_3.jpg" alt="Small Image 3">
                <img src="./img/img_col_4.jpg" alt="Small Image 4">
                <img src="./img/img_col_5.jpg" alt="Small Image 5">
                <img src="./img/img_col_6.jpg" alt="Small Image 6">
                <img src="./img/img_col_7.jpg" alt="Small Image 7">
                <img src="./img/img_col_8.jpg" alt="Small Image 8">
                <img src="./img/img_col_9.jpg" alt="Small Image 9">
                <img src="./img/img_col_0.jpg" alt="Small Image 0">
                <img src="./img/img_col_1.jpg" alt="Small Image 1">
                <img src="./img/img_col_2.jpg" alt="Small Image 2">
                <img src="./img/img_col_3.jpg" alt="Small Image 3">
                <img src="./img/img_col_4.jpg" alt="Small Image 4">
                <img src="./img/img_col_5.jpg" alt="Small Image 5">
                <img src="./img/img_col_6.jpg" alt="Small Image 6">
                <img src="./img/img_col_7.jpg" alt="Small Image 7">
                <img src="./img/img_col_8.jpg" alt="Small Image 8">
                <img src="./img/img_col_9.jpg" alt="Small Image 9">
            </div>
        </div>
        <!-- Full-width Container -->
        <div class="full-width-container2">
            <!-- Centered Inner Container -->
            <div class="inner-container">

                
                <!-- First Sector (65%) -->
                <div class="sector sector-left">
                    <h2 class="about-college-header">About Our College</h2>

                    <!-- Content with Image -->
                    <div class="about-college-content">
                        <!-- Image -->
                        <img src="./img/about.jpg" alt="College Image" class="college-image">

                        <!-- Text Content -->
                        <div class="college-text">
                            <p>
                                IIMTE KARNATAKA IS AN INSTITUTION, ESTABLISHED FOR THE DEVELOPMENT OF EDUCATION UNDER THE   GUIDELINES OF NATIONAL EDUCATION POLICY 1986 GOVT. OF INDIA, AND PROGRAMME OF ACTION 1992 GOVT. OF   INDIA.
                            </p>
                            <br>
                            <p>
                                IIMTE KARNATAKA IS RUNNED BY WME EDUCATION SOCIETY, REGISTERED UNDER SOCIETY REGISTRATION ACT   1950, GOVERNMENT OF KARNATAKAWITH VIDE REGISTRATION NO.80/2005-06.
                            </p>
                            <br>
                            <br>
                            <p>
                                IIMTE KARNATAKA IS INTERNATIONALLY AFFILIATED WITH UNITED STATES DISTANCE LEARNING ASSOCIATION   (USDLA), 840 FIRST STREET, NE, 3RD FLOOR, WASHINGTON, DC 20002.
                            </p>
                            <br>
                            <p>
                                IIMTE KARNATAKA IS INTERNATIONALLY INTERNATIONAL ASSOCIATION OF ENGINEERS(IAENG) MEMBER NO-   222646. IIMTE KARNATAKA IS AN INSTITUTIONAL MEMBER OF INDIAN SOCIETY FOR TECHNICAL EDUCATION (ITS AN CO-PROGRAMME BODY OF AICTE).
                            </p>
                            
                        </div>
                    </div>

                    <!-- New Div for Remaining Height -->
                    <div class="remaining-content">
                         <!-- First Row -->
                        <div class="grid-item">
                            <div class="grid-header">ADMISSION PROCEDURE</div>
                            <img src="./img/admission.png" alt="Icon 1" class="grid-icon">
                            <a href="academic" class="grid-link">Know More →</a>
                        </div>
                        <div class="grid-item">
                            <div class="grid-header">PROGRAMMES</div>
                            <img src="./img/programmes.png" alt="Icon 2" class="grid-icon">
                            <a href="programmes" class="grid-link">Know More →</a>
                        </div>
                        <!-- Second Row -->
                        <div class="grid-item">
                            <div class="grid-header">ACCREDITATIONS</div>
                            <img src="./img/accreditions.png" alt="Icon 3" class="grid-icon">
                            <a href="#" class="grid-link">Know More →</a>
                        </div>
                        <div class="grid-item">
                            <div class="grid-header">PLACEMENTS</div>
                            <img src="./img/placements.png" alt="Icon 4" class="grid-icon">
                            <a href="#" class="grid-link">Know More →</a>
                        </div>
                    </div>
                </div>

                <!-- Second Sector (35%) -->
                <div class="sector sector-right">
                    <!-- Content for the right sector -->
                    <h2 class="quick-links-header">Quick Links</h2>

                    <!-- Bullet Links -->
                    <ul class="quick-links-list">
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/MHRD-Notification.pdf" target="_blank" target="_blank">MHRD Notification</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2018/12/copyright0031.jpg" target="_blank">MHRD Application</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/UGC-NOTIFICATION.pdf" target="_blank">UGC Notification</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/UGC-notification-2.pdf" target="_blank">UGC Notification-2</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/HIGHCOURT-DECISION-RCI-REGULATION.pdf" target="_blank">High Court Decision RCI Regulation</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/NATIONAL-EDUCATION-POLICY-1986.pdf" target="_blank">National Education Policy 1986</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/NATIONAL-VOCATIONAL-EDUCATION-QUALIFICATION-ORDER.pdf" target="_blank">NVE Qualification Order</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/ACCREDITATION-FOR-HIGHER-EDUCATION.pdf" target="_blank">Accreditation for Higher Education</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/AIU-EVALUATION.pdf" target="_blank">AIU Evaluation</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/INTERIM-REPORT-OF-THE-OVERSIGHT-COMMITTEE.pdf" target="_blank">Interim Report of the Oversight Committee</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/MINORITY-EDUCATION.pdf" target="_blank">Minority Education</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/OPEN-SCHOOLING-ISSUES-AND-CHALLENGES.pdf" target="_blank">Open Schooling Issues and Challenges</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/OPEN-SCHOOLING.pdf" target="_blank">Open Schooling</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/QUALITY-IN-SCHOOL-EDUCATION.pdf" target="_blank">Quality in School Education</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/SCHEME-OF-ASSISTANCE-TO-VOS-NGOS-FOR-THE-WELFARE-OF-OBC.pdf" target="_blank">VOS-NGOs for the Welfare of OBC</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/UGC-NOTIFICATION-2.pdf" target="_blank">UGC Notification</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/ASSISTANCE-TO-VOLUNTARY-AGENCIES.pdf" target="_blank">Assistance to Voluntary Agencies</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/IDMI-SCHEME.pdf" target="_blank">IDMI Scheme</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/NATIONAL-POLICY-ON-EDUCATION.pdf" target="_blank">National Policy on Education</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/RECOGNITION-OF-CERTIFICATE.pdf" target="_blank">Recognition of Certificate</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/SCHEME-OF-VOCATIONALISATION-OF-SECONDARY-EDUCATION.pdf" target="_blank">Scheme of Vocationalisation of Secondary Education</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/01/UGC-NOTIFICATION-FOR-ODL-DEGREES.pdf" target="_blank">UGC Notification for ODL Degrees</a></li>
                        <li><a href="https://iimte.ac.in/wp-content/uploads/2019/02/rti.pdf" target="_blank">RTI</a></li>
                        <li><a href="#" target="_blank">UGC FAKE LIST</a></li>
                    </ul>
                </div>
                
            </div>
        </div>

        <!-- Footer -->
        <footer class="footer">
            <!-- Footer Content -->
            <div class="footer-content">
                <!-- Copyright -->
                <div class="copyright">
                    <p>Copyright © 2025, Indian Institute of Management and Technical Education</p>
                </div>

                <!-- Navigation Links -->
                <div class="footer-links">
                    <a href="home">Home</a>
                    <a href="about_us">About Us</a>
                    <a href="programmes">Programs</a>
                    <a href="students_zone">Student Zone</a>
                    <a href="#">Accreditations</a>
                    <a href="apply">Apply</a>
                    <a href="contact_us">Contact Us</a>
                    <a href="student_login" target="_blank">Center Login</a>
                </div>

                <!-- Back-to-Top Link -->
                <a href="home" class="back-to-top">↑</a>
            </div>
        </footer>
        <script src="./js/index_script.js"></script>
	</body>
</html>