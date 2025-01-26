// Toggle the visibility of the dropdown menu when the sandwich menu is clicked
document.getElementById("menuIcon").addEventListener("click", function () {
  const dropdownMenu = document.getElementById("dropdownMenu");
  if (dropdownMenu.style.display === "flex") {
    dropdownMenu.style.display = "none"; // Hide the menu
  } else {
    dropdownMenu.style.display = "flex"; // Show the menu
  }
});
// Add event listeners to each grid item
document.getElementById("sellCar").addEventListener("click", function () {
  window.location.href = "SellCar.jsp";
});

document.getElementById("dailyNews").addEventListener("click", function () {
  window.location.href = "DailyNews.jsp";
});

document.getElementById("services").addEventListener("click", function () {
  window.location.href = "Services.jsp";
});
