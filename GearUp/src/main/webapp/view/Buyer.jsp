<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buyer - Gear Up</title>
    <link rel="stylesheet" href="css/buyer.css">
    <script defer src="js/buyer.js"></script>
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="logo-container">
            <img src="Assets/images/GearUp_logo.webp" alt="Gear Up Logo" class="logo">
            <h1 class="company-name">Gear Up</h1>
        </div>
        <div class="search-container">
            <input type="text" class="search-bar" placeholder="Search car by brand, model...">
            <button class="search-button">
     		<img src="Assets/icons/magnifying-glass-solid.svg" alt="Search" class="search-icon">
   			</button>
        </div>
    </header>

    <!-- Navigation Bar -->
    <nav class="navbar">
        <div class="menu-container">
            <a href="home.jsp" class="nav-link">Home</a>
            <a href="compare.jsp" class="nav-link">Compare Cars</a>
            <a href="about.jsp" class="nav-link">Sell Car</a>
            <a href="about.jsp" class="nav-link">About Us</a>
            <a href="contact.jsp" class="nav-link">Contact Us</a>
        </div>
    </nav>

    <!-- Filter and Car Grid -->
    <main class="main-container">
        <section class="filters">
            <h2>Filters</h2>
            <form>
                <label for="priceRange">Price Range:</label>
                <select id="priceRange">
                    <option value="0-5000">$0 - $5,000</option>
                    <option value="5000-10000">$5,000 - $10,000</option>
                    <option value="10000-20000">$10,000 - $20,000</option>
                    <option value="20000+">$20,000+</option>
                </select>
                <label for="brand">Brand:</label>
                <select id="brand">
                    <option value="all">All</option>
                    <option value="toyota">Toyota</option>
                    <option value="honda">Honda</option>
                    <option value="bmw">Maruti Suzuki</option>
                    <option value="mercedes">TATA</option>
                    <option value="mercedes">Mahindra</option>
                    <option value="mercedes">Hyundai</option>
                    <option value="mercedes">BMW</option>
                    <option value="mercedes">Mercedes</option>
                </select>
                <button type="submit" class="filter-button">Apply Filters</button>
            </form>
        </section>

        <section class="car-grid">
            <h2>Available Cars</h2>
            <div class="car-card">
                <img src="Assets/images/car1.jpg" alt="Car Image">
                <div class="car-info">
                    <h3>Toyota Corolla</h3>
                    <p>Price: $8,000</p>
                    <p>Mileage: 50,000 miles</p>
                </div>
                <button class="details-button">View Details</button>
            </div>
            <div class="car-card">
                <img src="Assets/images/car2.jpg" alt="Car Image">
                <div class="car-info">
                    <h3>Honda Civic</h3>
                    <p>Price: $10,000</p>
                    <p>Mileage: 40,000 miles</p>
                </div>
                <button class="details-button">View Details</button>
            </div>
            <!-- Add more car cards as needed -->
        </section>
    </main>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2025 Gear Up. All rights reserved.</p>
    </footer>
</body>
</html>
