<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modern EduConnect Navbar</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');

        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
        }

        .navbar {
            padding: 15px 30px;
            background: linear-gradient(135deg, #2b4162 0%, #12100e 100%);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        .navbar-brand {
            color: #ffffff !important;
            font-weight: 700;
            font-size: 26px;
            letter-spacing: 1px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .navbar-brand i {
            color: #64ffda;
            font-size: 28px;
        }

        .navbar-nav {
            gap: 10px;
        }

        .navbar-nav .nav-link {
            color: #ffffff !important;
            font-weight: 500;
            font-size: 16px;
            padding: 8px 16px;
            border-radius: 8px;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .navbar-nav .nav-link i {
            font-size: 18px;
            color: #64ffda;
            transition: all 0.3s ease;
        }

        .navbar-nav .nav-link:hover {
            background: rgba(100, 255, 218, 0.1);
            transform: translateY(-2px);
        }

        .navbar-nav .nav-link:hover i {
            transform: scale(1.1);
        }

        .navbar-toggler {
            border: none;
            padding: 0;
        }

        .navbar-toggler:focus {
            box-shadow: none;
        }

        .navbar-toggler-icon {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba(100, 255, 218, 1)' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
        }

        @media (max-width: 991px) {
            .navbar-collapse {
                background: linear-gradient(135deg, #2b4162 0%, #12100e 100%);
                margin: 15px -30px -15px;
                padding: 20px;
                border-top: 1px solid rgba(100, 255, 218, 0.1);
            }

            .navbar-nav .nav-link {
                padding: 12px 20px;
            }
        }

        /* Adding smooth scroll padding due to fixed navbar */
        html {
            scroll-padding-top: 80px;
        }

        /* Animation for navbar on scroll */
        .navbar.scrolled {
            padding: 10px 30px;
            background: rgba(43, 65, 98, 0.95);
            backdrop-filter: blur(10px);
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/"><i class="bi bi-mortarboard"></i>EduConnect</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/"><i class="bi bi-house"></i>Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about"><i class="bi bi-info-circle"></i>About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="studentlogin"><i class="bi bi-person"></i>Student Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="adminlogin"><i class="bi bi-shield-lock"></i>Admin Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="facultylogin"><i class="bi bi-person-badge"></i>Faculty Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
    <script>
        // Add scroll effect to navbar
        window.addEventListener('scroll', function() {
            const navbar = document.querySelector('.navbar');
            if (window.scrollY > 50) {
                navbar.classList.add('scrolled');
            } else {
                navbar.classList.remove('scrolled');
            }
        });
    </script>
</body>
</html>