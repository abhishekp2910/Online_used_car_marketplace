<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sell Car - Gear Up</title>
    <link rel="stylesheet" href="css/sell_car.css">
    <script defer src="js/sell_car.js"></script>
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="logo-container">
            <img src="Assets/images/GearUp_logo.webp" alt="Gear Up Logo" class="logo">
            <h1 class="company-name">Gear Up</h1>
        </div>
    </header>

    <!-- Main Content -->
    <main class="main-container">
        <h1 class="page-title">Sell Your Car</h1>
        <form id="sellCarForm" class="sell-form">
            <!-- Left Section: Cover Image Upload -->
            <div class="form-left">
                <label for="coverImage" class="cover-label">Upload Cover Image:</label>
                <div class="cover-upload">
                    <input type="file" id="coverImage" name="coverImage" accept="image/*">
                </div>
            </div>

            <!-- Right Section: Car Details -->
            <div class="form-right">
                <label for="carPlate">Car Plate Number:</label>
                <input type="text" id="carPlate" name="carPlate" placeholder="Enter Car Plate Number" required>

                <label for="carCompany">Car Company:</label>
                <select id="carCompany" name="carCompany" required>
                    <option value="" disabled selected>Select Company</option>
                    <option value="Toyota">Toyota</option>
                    <option value="Honda">Honda</option>
                    <option value="BMW">BMW</option>
                    <option value="Mercedes">Mercedes</option>
                    <option value="Hyundai">Hyundai</option>
                </select>

                <label for="carModel">Car Model Name:</label>
                <input type="text" id="carModel" name="carModel" placeholder="Enter Car Model Name" required>

                <label for="variant">Variant:</label>
                <input type="text" id="variant" name="variant" placeholder="Enter Variant" required>

                <label for="fuelType">Fuel Type:</label>
                <select id="fuelType" name="fuelType" required>
                    <option value="" disabled selected>Select Fuel Type</option>
                    <option value="Petrol">Petrol</option>
                    <option value="Diesel">Diesel</option>
                    <option value="Electric">Electric</option>
                    <option value="Hybrid">Hybrid</option>
                </select>

                <label for="manufacturingYear">Manufacturing Year:</label>
                <input type="number" id="manufacturingYear" name="manufacturingYear" placeholder="Enter Year" min="1900" max="2025" required>

                <label for="distanceDriven">Total Distance Driven (in km):</label>
                <input type="number" id="distanceDriven" name="distanceDriven" placeholder="Enter Distance" required>

                <label for="location">Location:</label>
                <input type="text" id="location" name="location" placeholder="Area ( Optional ), City_Name, State" required>
            </div>
        </form>

        <!-- Multiple Images Upload -->
        <section class="images-section">
            <label for="additionalImages">Upload Additional Images:</label>
            <input type="file" id="additionalImages" name="additionalImages" accept="image/*" multiple>
        </section>

        <!-- Buttons -->
        <div class="button-container">
            <button type="button" class="back-button" onclick="history.back()">Back</button>
            <button type="submit" class="submit-button" form="sellCarForm">Request Car Listing</button>
        </div>
    </main>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2025 Gear Up. All rights reserved.</p>
    </footer>
</body>
</html>
