document.getElementById("sellCarForm").addEventListener("submit", function (e) {
    e.preventDefault();
    alert("Car-Listing request sent successfully!");
	this.reset();
});
