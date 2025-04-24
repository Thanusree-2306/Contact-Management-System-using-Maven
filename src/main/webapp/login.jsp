<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Management System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f8ff; /* Light background color */
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        /* Navbar styling */
        .navbar {
            width: 100%;
            padding: 20px 50px;
            background-color: #66b2b2; /* Lighter teal background */
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .navbar .logo {
            font-size: 24px;
            font-weight: bold;
        }

        .navbar a {
            text-decoration: none;
            color: white;
            margin: 0 15px;
            font-size: 18px;
            font-weight: 500;
            transition: 0.3s ease;
        }

        .navbar a:hover {
            color: #ff9a8b;
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(135deg, #a8dadc, #bde0fe); /* Light gradient */
            color: white;
            width: 100%;
            padding: 100px 50px;
            text-align: center;
        }

        .hero h1 {
            font-size: 48px;
            margin-bottom: 15px;
            font-weight: 700;
        }

        .hero p {
            font-size: 22px;
            margin-bottom: 30px;
        }

        .hero .btn {
            padding: 14px 40px;
            background-color: #ff9a8b;
            color: white;
            border-radius: 25px;
            text-decoration: none;
            font-size: 20px;
            transition: 0.3s;
        }

        .hero .btn:hover {
            background-color: #ff7b6d;
        }

        /* Features Section */
        .features {
            display: flex;
            justify-content: center;
            gap: 30px;
            margin-top: 50px;
            flex-wrap: wrap;
            width: 100%;
            max-width: 1200px;
        }

        .feature-card {
            background-color: white;
            border-radius: 10px;
            padding: 30px;
            text-align: center;
            width: 250px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            transition: 0.3s;
        }

        .feature-card:hover {
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.15);
            transform: translateY(-5px);
        }

        .feature-card i {
            font-size: 40px;
            color: #66b2b2;
            margin-bottom: 20px;
        }

        .feature-card h3 {
            font-size: 24px;
            margin-bottom: 15px;
            color: #333;
        }

        .feature-card p {
            font-size: 16px;
            color: #666;
        }

        /* Footer */
        .footer {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
            width: 100%;
            position: fixed;
            bottom: 0;
        }

        /* Call Button */
        .call-btn {
            position: fixed;
            bottom: 100px;
            right: 20px;
            background-color: #66b2b2; /* Lighter teal */
            border-radius: 50%;
            padding: 20px;
            font-size: 30px;
            color: white;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            transition: 0.3s;
            cursor: pointer;
        }

        .call-btn:hover {
            background-color: #ff7b6d;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.3);
        }

    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <div class="logo">Contact Manager</div>
        <div>
            <a href="login.jsp">Login</a>
            <a href="register.jsp">Sign Up</a>
            <a href="messages.jsp">Messages</a>
            <a href="contacts.jsp">Contacts</a>
        </div>
    </div>

    <!-- Hero Section -->
    <div class="hero">
        <h1>Welcome to Contact Management System</h1>
        <p>Manage your contacts, messages, and stay organized in one place.</p>
        <a href="login.jsp" class="btn">Get Started</a>
    </div>

    <!-- Features Section -->
    <div class="features">
        <div class="feature-card">
            <i class="fa fa-address-book"></i>
            <h3>Manage Contacts</h3>
            <p>Store, update, and search your contacts with ease.</p>
        </div>
        <div class="feature-card">
            <i class="fa fa-comment-dots"></i>
            <h3>Send Messages</h3>
            <p>Send messages and keep track of conversations effortlessly.</p>
        </div>
        <div class="feature-card">
            <i class="fa fa-bell"></i>
            <h3>Get Notifications</h3>
            <p>Stay updated with real-time notifications about your contacts.</p>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2025 Contact Management System | All Rights Reserved</p>
    </div>

    <!-- Call Button -->
    <div class="call-btn" onclick="window.location.href='tel:+1234567890'">
        <i class="fas fa-phone-alt"></i> <!-- Font Awesome Phone Icon -->
    </div>

</body>
</html>
