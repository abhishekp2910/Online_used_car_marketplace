 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home Page</title>
 <link rel="stylesheet" href="css/home.css">
 <style>
 	 .full-width-image {
      background-image: url('Assets/images/Trial.jpg');
      background-size: cover;
      background-position: center;
      height: 100vh;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      color: white;
      text-align: center;
    }
 </style>
</head>
<body>
  <div class="full-width-image">
    
<div class="buttons-container">
  <button style="background-color: #EA5303; border-radius: 30px; color: white; padding: 10px 20px;" id="loginBtn"> Login </button>
  <button style="background-color: #EA5303; border-radius: 30px; color: white; padding: 10px 20px;" id="signupBtn">Sign up</button>
</div>

  </div>

  <!-- Overlaying of my login & sign up form -->
  <div class="overlay" id="overlay"></div>



<!-- Login form -->
  <div class="form-container" id="loginForm">
    <h2>Login</h2>
    <form action="Login" method="post">
      <input type="email" placeholder="Email" name="email" required>
      <input type="password" placeholder="Password" name="password" required>
      <button style="color:White;background-color:#251F67"  type="submit">Login</button>
      <button type="button" class="close" onclick="closeForm()">Close</button>
    </form>
  </div>
  <!-- Sign up Form -->
  <div class="form-container" id="signupForm">
    <h2>Sign up</h2>
    <form action="register" method="post">
      <input type="text" placeholder="Name" name="name" required>
      <input type="email" placeholder="Email" name="email"  required>
      <input type="text" placeholder="Phone Number" name="phoneNumber" required>
      <input type="password" placeholder="Set Password" name="password" required>
      <button style="color:White;background-color:#251F67" type="submit">Sign up</button>
      <button type="button" class="close" onclick="closeForm()">Close</button>
    </form>
  </div>



    <!-- Content Sections -->
  <div id="section1" class="section">
    <h2>Section 1</h2>
    <p>This is the content of Section 1.</p>
  </div>
  <div id="section2" class="section">
    <h2>Section 2</h2>
    <p>This is the content of Section 2.</p>
  </div>
  <div id="section3" class="section">
    <h2>Section 3</h2>
    <p>This is the content of Section 3.</p>
  </div>
   <!-- Scroll to Top Button -->
   <div class="scroll-to-top-container" style="display:flex;justify-content:center">
  <button id="scrollToTopBtn" class="scroll-to-top" onclick="scrollToTop()">Scroll to Top</button>
  </div>
  <footer class="footer" style=" text-align: center;
    padding: 10px;
    background-color: #333;
    color: white;
    margin-top: 20px;">
      <p>&copy; 2025 Gear Up. All rights reserved.</p>
  </footer> 
 
  <script src="js/home.js"></script>
</body>
</html>