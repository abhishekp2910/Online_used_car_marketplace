<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Gear Up - Home</title>
  <link rel="stylesheet" href="css/main.css">
  <script defer src="js/main.js"></script>
</head>
<body>
  <!-- Company logo and Company Name -->
 <header class="header" style="background-color:black">
  <div class="logo-container">
    <img src="Assets/images/GearUp_logo.webp" alt="Gear Up Logo" class="logo">
    <h1 class="company-name">Gear Up</h1>
  </div>
  <div class="search-container">
    <input type="text" class="search-input" placeholder="Quick car viewing..." />
    <button class="search-button">
      <img src="Assets/icons/magnifying-glass-solid.svg" alt="Search" class="search-icon">
    </button>
  </div>
</header>


  <!-- Navigation Bar -->
  <nav class="navbar">
 	 <div class="menu-container">
      <div class="menu-icon" id="menuIcon">☰</div> <!-- Sandwich Menu Icon -->
      <a href="Main.jsp" class="nav-link active">Home</a>
      <a href="CompareCars.jsp" class="nav-link">Compare cars</a>
      <a href="about_us.html" class="nav-link">About us</a>
      <a href="ContactUs.jsp" class="nav-link">Contact us</a>
      <a href="Testimonials.jsp" class="nav-link">Testimonials</a>
      <a href="FAQs.jsp" class="nav-link">FAQs</a>
     </div>
    <!-- Drop-down Menu -->
    <ul class="dropdown-menu" id="dropdownMenu">
      <li><a href="Shortlist.jsp">Short-listed cars</a></li>
      <li><a href="--my blog website link--">View blog</a></li>
      <li><a href="UserAccount.jsp">Your Account</a></li>
      <li><a href="#option4">Log Out</a></li>
    </ul>
  </nav>

  <!-- Main Content with Background Image -->
  <div class="main-container" style=" background-image: url('Assets/images/main_page.jpg');">
    <!-- Grid Layout -->
    <main class="content">
      <div class="grid-container">
        <div class="grid-item">
          <h2><a href="Buyer.jsp" style="color:white;text-decoration: none;">BUY CAR</a></h2>
          <p class="details">Explore a wide range of used cars at competitive prices.</p>
        </div>
        <div class="grid-item">
          <h2><a href="SellCar.jsp" style="color:white;text-decoration: none;">SELL CAR</a></h2>
          <p class="details">List your car for sale and connect with potential buyers easily.</p>
        </div>
        <div class="grid-item">
          <h2><a href="https://www.autonews.com/" style="color:white;text-decoration: none;">DAILY NEWS</a></h2>
          <p class="details">Stay updated with the latest news in the automobile industry.</p>
        </div>
        <div class="grid-item">
          <h2><a href="Services.jsp" style="color:white;text-decoration: none;">SERVICES</a></h2>
          <p class="details">"GEAR Up offers seamless, transparent services for hassle-free car trading."</p>
        </div>
      </div>
    </main>
  </div>
<footer class="footer" style="text-align: center; padding: 10px; background-color: #333; color: white; margin: 0;">
  <p>&copy; 2025 Gear Up. All rights reserved.</p>
</footer>
  
</body>
</html>

