<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - EduConnect</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- AOS Animation Library -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    
	<style>
	    body {
	        font-family: 'Poppins', sans-serif;
	        background: linear-gradient(135deg, #fffacd 0%, #fdf5e6 100%); /* Light yellow gradient */
	        margin: 0;
	        padding: 0;
	        color: black; /* Default text color for contrast */
	    }

	    .hero-section {
	        background: linear-gradient(rgba(255, 248, 220, 0.9), rgba(255, 248, 220, 0.8)), url('https://via.placeholder.com/1920x600') no-repeat center center/cover;
	        color: black;
	        padding: 100px 0;
	        margin-bottom: 50px;
	        text-align: center;
	    }

	    .hero-content {
	        max-width: 800px;
	        margin: 0 auto;
	    }

	    .hero-content h1 {
	        font-size: 3.5rem;
	        font-weight: 700;
	        margin-bottom: 20px;
	        animation: fadeInUp 1s ease;
	    }

	    .hero-content p {
	        font-size: 1.2rem;
	        line-height: 1.8;
	        margin-bottom: 30px;
	        animation: fadeInUp 1.2s ease;
	    }

	    .content-box {
	        background-color: rgba(255, 255, 240, 1); /* Light cream */
	        border-radius: 20px;
	        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
	        padding: 40px;
	        margin-bottom: 30px;
	        transition: transform 0.3s ease;
	    }

	    .content-box:hover {
	        transform: translateY(-5px);
	    }

	    .feature-card {
	        background: rgba(255, 255, 240, 1); /* Light cream */
	        border-radius: 15px;
	        padding: 30px;
	        margin-bottom: 30px;
	        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
	        transition: all 0.3s ease;
	        text-align: center;
	    }

	    .feature-card img {
	        width: 80px;
	        height: 80px;
	        margin-bottom: 15px;
	        border-radius: 10px;
	    }

	    .feature-card:hover {
	        transform: translateY(-5px);
	        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
	    }

	    .btn-custom {
	        background-color: rgba(255, 248, 220, 0.8); /* Light yellow */
	        border: 2px solid rgba(255, 248, 220, 1);
	        padding: 12px 30px;
	        font-size: 1.1rem;
	        font-weight: 600;
	        border-radius: 10px;
	        transition: all 0.3s ease;
	        color: black;
	    }

	    .btn-custom:hover {
	        transform: translateY(-2px);
	        box-shadow: 0 5px 15px rgba(255, 248, 220, 1);
	    }

	    .stats-section {
	        background: rgba(255, 248, 220, 0.8); /* Light yellow */
	        padding: 60px 0;
	        color: black;
	        margin: 50px 0;
	    }

	    .stat-item {
	        text-align: center;
	        padding: 20px;
	    }

	    .stat-item h3 {
	        font-size: 2.5rem;
	        font-weight: 700;
	        margin-bottom: 10px;
	    }

	    .footer {
	        background: rgba(255, 248, 220, 0.9); /* Light yellow */
	        color: black;
	        padding: 40px 0 20px;
	    }

	    .footer-content {
	        max-width: 1200px;
	        margin: 0 auto;
	        display: grid;
	        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
	        gap: 30px;
	        padding: 0 20px;
	    }

	    /* Box style for footer sections (Quick Links, Contact, About EduConnect) */
	    .footer-section, .about-educonnect {
	        background-color: rgba(255, 255, 240, 1); /* Light cream */
	        border-radius: 15px;
	        padding: 30px;
	        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
	    }

	    .footer-section h4, .about-educonnect h2 {
	        color: black;
	        margin-bottom: 20px;
	        font-size: 1.2rem;
	        font-weight: 600;
	    }

	    .footer-section ul {
	        list-style: none;
	        padding: 0;
	    }

	    .footer-section ul li {
	        margin-bottom: 10px;
	    }

	    .footer-section ul li a {
	        color: black;
	        text-decoration: none;
	        transition: color 0.3s ease;
	    }

	    .footer-section ul li a:hover {
	        color: #333;
	    }

	    .about-educonnect p {
	        font-size: 1.1rem;
	        line-height: 1.8;
	    }

	    @media (max-width: 768px) {
	        .hero-content h1 {
	            font-size: 2.5rem;
	        }

	        .hero-section {
	            padding: 60px 0;
	        }

	        .content-box {
	            padding: 20px;
	        }

	        .stat-item h3 {
	            font-size: 2rem;
	        }

	        .footer-content {
	            grid-template-columns: 1fr;
	        }

	        .footer-section, .about-educonnect {
	            padding: 20px;
	        }
	    }

	    @keyframes fadeInUp {
	        from {
	            opacity: 0;
	            transform: translateY(20px);
	        }
	        to {
	            opacity: 1;
	            transform: translateY(0);
	        }
	    }
	</style>


</head>
<body>

<%@include file="mainnavbar.jsp" %>

<!-- Hero Section -->
<section class="hero-section">
    <div class="hero-content">
        <h1>Welcome to EduConnect-Your Gateway to Knowledge sharing!</h1>
        <p>Join us for insightful webinars and workshops!</p>
        <a href="#features" class="btn btn-light btn-custom">Get Started</a>
    </div>
</section>

<div class="container">
    <!-- Features Section -->
    <section id="features" class="mb-5">
        <div class="row">
            <div class="col-md-4" data-aos="fade-up">
                <div class="feature-card">
                    <img src="https://res.cloudinary.com/dud9b3xva/image/upload/v1731650450/adminimage_umuig9.jpg" alt="Admin Features">
                    <h3>For Administrators</h3>
                    <p>Comprehensive tools for managing users, courses, and system settings.</p>
                </div>
            </div>
            <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                <div class="feature-card">
                    <img src="https://res.cloudinary.com/dud9b3xva/image/upload/v1731650632/facultyimage_u5ze8s.jpg" alt="Instructor Features">
                    <h3>For Faculty</h3>
                    <p>Create courses, manage assignments, and track student progress effortlessly.</p>
                </div>
            </div>
            <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                <div class="feature-card">
                    <img src="https://res.cloudinary.com/dud9b3xva/image/upload/v1731650723/student_t9m2ni.jpg" alt="Student Features">
                    <h3>For Students</h3>
                    <p>Access course materials, submit assignments,live and recorded learning videos and track your learning journey.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Stats Section -->
    <section class="stats-section" data-aos="fade-up">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-6">
                    <div class="stat-item">
                        <h3>1000+</h3>
                        <p>Active Students</p>
                    </div>
                </div>
                <div class="col-md-3 col-6">
                    <div class="stat-item">
                        <h3>100+</h3>
                        <p>Expert Instructors</p>
                    </div>
                </div>
                <div class="col-md-3 col-6">
                    <div class="stat-item">
                        <h3>500+</h3>
                        <p>Courses</p>
                    </div>
                </div>
                <div class="col-md-3 col-6">
                    <div class="stat-item">
                        <h3>95%</h3>
                        <p>Satisfaction Rate</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section class="content-box" data-aos="fade-up">
        <div class="row align-items-center">
            <div class="col-md-6">
                <h2>About EduConnect</h2>
                <p>				At EduConnect, we believe in transforming the way knowledge is shared and consumed. Our platform bridges the gap between educators, professionals, and learners by providing a seamless space for hosting webinars, workshops, and knowledge-sharing events.

				Our mission is to empower learning communities by offering tools that simplify event management and enhance participant engagement. From effortless registration to real-time live streaming and on-demand access to post-event resources, we ensure every interaction is meaningful and productive.</p>
                <a href="#" class="btn btn-primary btn-custom mt-3">Learn More</a>
            </div>
            <div class="col-md-6">
                <img src="https://static.vecteezy.com/system/resources/previews/008/627/740/non_2x/female-student-listening-webinar-online-flat-illustration-cartoon-people-at-training-video-conference-or-lecture-computer-study-and-education-concept-vector.jpg" alt="About EduConnect" class="img-fluid rounded">
            </div>
        </div>
    </section>
</div>

<!-- Footer -->
<div class="footer">
    <div class="footer-content">
        <!-- About EduConnect Box -->
        <div class="about-educonnect">
            <h2>EduConnect</h2>
            <p>Empowering education through innovation and technology.</p>
        </div>

        <!-- Quick Links Section -->
        <div class="footer-section">
            <h4>Quick Links</h4>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Courses</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </div>

        <!-- Contact Information Section -->
        <div class="footer-section">
            <h4>Contact</h4>
            <ul>
                <li>Email: <a href="mailto:support@educonnect.in">support@educonnect.in</a></li>
                <li>Phone: <a href="tel:+919999888771">+91 9999888771</a></li>
            </ul>
        </div>
    </div>
</div>


<!-- AOS Animation Library -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init();
</script>
</body>
</html>
