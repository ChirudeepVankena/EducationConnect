<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
	<style>
	    body {
	        background: linear-gradient(120deg, #fff9e6 0%, #fff4d6 100%); /* Light cream background */
	        font-family: 'Inter', sans-serif;
	        min-height: 100vh;
	        display: flex;
	        flex-direction: column;
	        padding: 20px;
	    }

	    .login-container {
	        max-width: 440px;
	        margin: 80px auto;
	        padding: 40px;
	        background-color: #fffbee;
	        border-radius: 16px;
	        box-shadow: 0 8px 30px rgba(0, 0, 0, 0.08);
	        transition: transform 0.3s ease, box-shadow 0.3s ease;
	        border: 1px solid rgba(0, 0, 0, 0.05);
	    }

	    .login-container:hover {
	        transform: translateY(-5px);
	        box-shadow: 0 12px 40px rgba(0, 0, 0, 0.12);
	    }

	    .login-container h3 {
	        text-align: center;
	        margin-bottom: 32px;
	        color: #d97706; /* Warm amber color */
	        font-weight: 700;
	        font-size: 28px;
	        letter-spacing: -0.5px;
	    }

	    .form-group {
	        margin-bottom: 24px;
	    }

	    .form-label {
	        font-weight: 600;
	        margin-bottom: 8px;
	        color: #6b5439; /* Brownish text for labels */
	        font-size: 14px;
	        display: block;
	    }

	    .form-control {
	        padding: 12px 16px;
	        border: 2px solid #f3e2c6;
	        border-radius: 8px;
	        font-size: 16px;
	        line-height: 24px;
	        transition: all 0.2s ease;
	        width: 100%;
	        background-color: #fffdf7; /* Soft cream color */
	    }

	    .form-control:focus {
	        border-color: #d97706; /* Amber focus color */
	        box-shadow: 0 0 0 4px rgba(217, 119, 6, 0.1);
	        outline: none;
	    }

	    .btn {
	        width: 100%;
	        padding: 12px 24px;
	        font-weight: 600;
	        font-size: 16px;
	        border-radius: 8px;
	        transition: all 0.2s ease;
	        margin-top: 12px;
	    }

	    .btn-success {
	        background-color: #d97706; /* Amber button */
	        border: none;
	        color: white;
	        box-shadow: 0 2px 4px rgba(217, 119, 6, 0.1);
	    }

	    .btn-success:hover {
	        background-color: #b45309; /* Darker amber */
	        transform: translateY(-1px);
	        box-shadow: 0 4px 8px rgba(217, 119, 6, 0.2);
	    }

	    .btn-reset {
	        background-color: #fdf7e7;
	        border: 1px solid #f3e2c6;
	        color: #6b5439;
	    }

	    .btn-reset:hover {
	        background-color: #f3e2c6;
	        color: #6b4230;
	    }

	    /* Dark Mode */
	    @media (prefers-color-scheme: dark) {
	        body {
	            background: linear-gradient(120deg, #3b2f20 0%, #544536 100%);
	        }

	        .login-container {
	            background-color: #544536;
	            border-color: rgba(255, 255, 255, 0.1);
	        }

	        .login-container h3 {
	            color: #fbbf24; /* Amber for dark mode */
	        }

	        .form-label {
	            color: #dbc8a0; /* Light cream for labels */
	        }

	        .form-control {
	            background-color: #6b5439;
	            border-color: #8b6e4a;
	            color: #fef9e3;
	        }

	        .form-control:focus {
	            border-color: #fbbf24;
	            box-shadow: 0 0 0 4px rgba(251, 191, 36, 0.1);
	        }

	        .btn-reset {
	            background-color: #6b5439;
	            border-color: #8b6e4a;
	            color: #dbc8a0;
	        }

	        .btn-reset:hover {
	            background-color: #8b6e4a;
	            color: #fffbee;
	        }
	    }

	    /* Responsive Design */
	    @media (max-width: 768px) {
	        .login-container {
	            margin: 40px auto;
	            padding: 24px;
	        }

	        .login-container h3 {
	            font-size: 24px;
	            margin-bottom: 24px;
	        }

	        .form-group {
	            margin-bottom: 20px;
	        }
	    }

	    /* Input Autofill Styles */
	    input:-webkit-autofill,
	    input:-webkit-autofill:hover,
	    input:-webkit-autofill:focus {
	        -webkit-box-shadow: 0 0 0px 1000px #fffdf7 inset;
	        transition: background-color 5000s ease-in-out 0s;
	    }

	    @media (prefers-color-scheme: dark) {
	        input:-webkit-autofill,
	        input:-webkit-autofill:hover,
	        input:-webkit-autofill:focus {
	            -webkit-box-shadow: 0 0 0px 1000px #6b5439 inset;
	            -webkit-text-fill-color: #dbc8a0;
	        }
	    }
	</style>



</head>
<body>
    <%@ include file="mainnavbar.jsp" %>

    <div class="login-container">
        <h3>Faculty Login</h3>
        <form method="post" action="checkfacultylogin">
            <div class="form-group">
                <label for="funame" class="form-label">Username</label>
                <input type="text" id="susername" class="form-control" name="fusername" required>
            </div>

            <div class="form-group">
                <label for="fpwd" class="form-label">Password</label>
                <input type="password" id="spwd" class="form-control" name="fpwd" required>
            </div>

            <input type="submit" value="Login" class="btn btn-success">
            <input type="reset" value="Clear" class="btn btn-reset">
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>