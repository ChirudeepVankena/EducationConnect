<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Profile</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Roboto', sans-serif;
            background-color: #f8f9fa;
        }

        .navbar {
            padding: 12px 30px;
            background: linear-gradient(90deg, #4b0082, #ff4b5c); /* Indigo to pinkish-red gradient */
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: #ffffff !important;
            font-weight: 500;
            font-size: 18px;
            margin-right: 15px;
            transition: color 0.3s ease, transform 0.3s ease;
        }

        .navbar a:hover {
            color: #FFD700 !important;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <!-- Navbar for Faculty -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/"><i class="bi bi-mortarboard"></i> EduConnect</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="facultyhome"><i class="bi bi-house nav-icon"></i> Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="facultyprofile"><i class="bi bi-person nav-icon"></i> Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/upload-material"><i class="bi bi-box-arrow-right nav-icon"></i> Upload Materail</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="facultylogout"><i class="bi bi-box-arrow-right nav-icon"></i> Logout</a>
                    </li>
                  
                    
                </ul>
            </div>
        </div>
    </nav>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
