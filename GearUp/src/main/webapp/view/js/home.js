const loginBtn = document.getElementById('loginBtn');
   const signupBtn = document.getElementById('signupBtn');
   const loginForm = document.getElementById('loginForm');
   const signupForm = document.getElementById('signupForm');
   const overlay = document.getElementById('overlay');

   loginBtn.addEventListener('click', () => {
     loginForm.classList.add('active');
     overlay.classList.add('active');
   });

   signupBtn.addEventListener('click', () => {
     signupForm.classList.add('active');
     overlay.classList.add('active');
   });

   overlay.addEventListener('click', closeForm);

   function closeForm() {
     loginForm.classList.remove('active');
     signupForm.classList.remove('active');
     overlay.classList.remove('active');
   }
   // Smooth scrolling effect for anchor links
   document.querySelectorAll('a[href^="#"]').forEach(anchor => {
     anchor.addEventListener('click', function (e) {
       e.preventDefault();

       document.querySelector(this.getAttribute('href')).scrollIntoView({
         behavior: 'smooth'
       });
     });
   });

   // Scroll to Top Button Visibility
   window.onscroll = function () {
     showScrollButton();
   };

   function showScrollButton() {
     const scrollToTopBtn = document.getElementById('scrollToTopBtn');
     if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
       scrollToTopBtn.style.display = "block"; // Show the button when scrolled 200px down
     } else {
       scrollToTopBtn.style.display = "none"; // Hide the button if scrolled less than 200px
     }
   }

   // Function to scroll to the top of the page when the button is clicked
   function scrollToTop() {
     window.scrollTo({
       top: 0,
       behavior: 'smooth'
     });
   }
