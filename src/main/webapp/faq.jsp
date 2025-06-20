<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>FAQ - Play Nova</title>
  <link rel="stylesheet" href="home.css" />
  <link rel="stylesheet" href="faq.css" />
  <link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
	  body {
	  margin: 0;
	  font-family: 'Rajdhani', sans-serif;
	  background: linear-gradient(to bottom right, #000000, #1a1a1a);
	  color: white;
	}
	
	 .header {
	  display: flex;
	  justify-content: space-between;
	  align-items: center;
	  padding: 20px 50px;
	  background: rgba(0, 0, 0, 0.3);
	  backdrop-filter: blur(10px);
	  position: relative;
	  z-index: 10;
	}
	
	 .logo {
	  font-size: 1.8rem;
	  font-weight: 600;
	  color: white;
	}
	
	.logo img {
	  height: 40px; 
	  display: block;
	}
	
	
	 .nav-links {
	  display: flex;
	  gap: 30px;
	}
	
	.nav-links a {
	  text-decoration: none;
	  color: rgba(255, 255, 255, 0.6);
	  font-weight: 500;
	  font-size: 1.2rem;  
	  transition: color 0.3s ease;
	}
	
	.nav-links a:hover {
	  color: white;
	}
	
	
	
	 .glass-button {
	  padding: 10px 20px;
	  border: none;
	  border-radius: 8px;
	  background: rgba(255, 255, 255, 0.1);
	  color: white;
	  cursor: pointer;
	  backdrop-filter: blur(8px);
	  transition: background 0.3s, color 0.3s;
	  font-size: 1rem;
	  font-weight: 500;
	}
	
	.glass-button:hover {
	  background: white;
	  color: black;
	}
	
	 .signup-button {
	  background: #e60000;
	  color: white;
	  border: none;
	  border-radius: 8px;
	  padding: 10px 20px;
	  font-size: 1rem;
	  font-weight: 500;
	  cursor: pointer;
	  transition: background 0.3s;
	}
	
	.signup-button:hover {
	  background: #cc0000;
	}
	.auth-buttons {
	  display: flex;
	  align-items: center;
	  gap: 10px;
	}
	
	.welcome-text {
	  color: white;
	  font-family: 'Rajdhani', sans-serif;
	  font-size: 16px;
	  line-height: 1;
	}
	  AQ Page Specific Styles */
	
	 .faq-banner {
	  height: 40vh;
	  background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url("faq-banner.jpg") no-repeat center center /
	    cover;
	}
	
	 .faq-section {
	  padding: 60px 40px;
	  background: linear-gradient(to bottom, #0d0d0d, #1a1a1a);
	  color: white;
	}
	
	.faq-container {
	  max-width: 1000px;
	  margin: 0 auto;
	}
	
	 .faq-category {
	  margin-bottom: 40px;
	}
	
	.faq-category h2 {
	  font-size: 2rem;
	  margin-bottom: 25px;
	  color: #e60000;
	  border-bottom: 1px solid rgba(255, 255, 255, 0.1);
	  padding-bottom: 10px;
	}
	
	 .faq-item {
	  background: rgba(255, 255, 255, 0.03);
	  backdrop-filter: blur(6px);
	  border-radius: 8px;
	  margin-bottom: 15px;
	  overflow: hidden;
	  transition: all 0.3s ease;
	}
	
	.faq-item:hover {
	  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
	}
	
	 .faq-question {
	  padding: 20px;
	  cursor: pointer;
	  display: flex;
	  justify-content: space-between;
	  align-items: center;
	}
	
	.faq-question h3 {
	  font-size: 1.2rem;
	  margin: 0;
	  font-weight: 600;
	}
	
	.faq-icon {
	  color: #e60000;
	  transition: transform 0.3s ease;
	}
	
	 .faq-answer {
	  padding: 0 20px;
	  max-height: 0;
	  overflow: hidden;
	  transition: max-height 0.3s ease, padding 0.3s ease;
	}
	
	.faq-answer p {
	  color: #cccccc;
	  line-height: 1.6;
	  margin-bottom: 20px;
	}
	
	 .faq-item.active .faq-answer {
	  max-height: 500px;
	  padding: 0 20px 20px;
	}
	
	.faq-item.active .faq-icon {
	  transform: rotate(45deg);
	}
	
	 .contact-cta {
	  background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)), url("contact-cta-bg.jpg") no-repeat center center
	    / cover;
	  text-align: center;
	  padding: 60px 20px;
	  color: white;
	}
	
	.contact-cta h2 {
	  font-size: 2.5rem;
	  margin-bottom: 15px;
	}
	
	.contact-cta p {
	  font-size: 1.2rem;
	  margin-bottom: 30px;
	  max-width: 600px;
	  margin-left: auto;
	  margin-right: auto;
	  color: #cccccc;
	}
	
	.cta-button {
	  display: inline-block;
	  background: #e60000;
	  color: white;
	  padding: 14px 30px;
	  border-radius: 8px;
	  font-size: 1.1rem;
	  font-weight: 600;
	  text-decoration: none;
	  transition: background 0.3s ease;
	}
	
	.cta-button:hover {
	  background: #cc0000;
	}
	
	 .page-banner {
	  position: relative;
	  width: 100%;
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  text-align: center;
	}
	
	 @media (max-width: 768px) {
	  .faq-section {
	    padding: 40px 20px;
	  }
	
	  .faq-category h2 {
	    font-size: 1.8rem;
	  }
	
	  .faq-question h3 {
	    font-size: 1.1rem;
	  }
	
	  .contact-cta h2 {
	    font-size: 2rem;
	  }
	
	  .contact-cta p {
	    font-size: 1.1rem;
	  }
	}
	  
	 .site-footer {
	  background: linear-gradient(to bottom, #1a1a1a, #111); 
	  color: #eee;
	  font-family: 'Rajdhani', sans-serif;
	  padding-top: 60px;
	  margin-top: 60px;
	}
	
	 .footer-top {
	  display: flex;
	  flex-wrap: wrap;
	  justify-content: space-between;
	  gap: 40px;
	  padding: 0 40px 40px;
	  border-bottom: 1px solid rgba(255, 255, 255, 0.07);  
	}
	
	 .footer-col {
	  flex: 1 1 200px;
	  min-width: 200px;
	}
	
	.footer-logo {
	  width: 140px;
	  margin-bottom: 8px; 
	}
	
	.footer-desc {
	  margin-top: 5px;
	  margin-bottom: 15px;
	  font-size: 0.95rem;
	  color: #ccc;
	  line-height: 1.5;
	}
	
	 .social-icons a {
	  color: rgba(255, 255, 255, 0.4);  
	  font-size: 1.1rem;
	  margin-right: 12px;
	  transition: color 0.3s ease;
	  text-decoration: none;
	}
	
	.social-icons a:hover {
	  color: #e60000;  
	}
	
	 .footer-col h3 {
	  margin-bottom: 15px;
	  font-size: 1.2rem;
	  color: white;
	}
	
	 .footer-col ul {
	  list-style: none;
	  padding: 0;
	  margin: 0;
	}
	
	.footer-col ul li {
	  margin-bottom: 10px;
	}
	
	.footer-col ul li a {
	  color: #ccc;
	  text-decoration: none;
	  font-size: 0.95rem;
	  transition: color 0.3s;
	}
	
	.footer-col ul li a:hover {
	  color: #e60000; 
	}
	
	 .footer-bottom {
	  text-align: center;
	  padding: 25px 10px;
	  font-size: 0.95rem;
	  color: #aaa;
	  line-height: 1.6;
	  max-width: 900px;
	  margin: 0 auto;
	  border-top: 1px solid rgba(255, 255, 255, 0.05);  
	}
  
  </style>
</head>
<body>
  <%
    com.model.user_model user = (com.model.user_model) session.getAttribute("User");
%>

<header class="header">
  <div class="logo">
    <img src="images/logo.png" alt="Play Nova Logo">
  </div>

  <nav class="nav-links">
    <a href="home.jsp">Home</a>
    <a href="Store">Store</a>
    <a href="display_ann_servlet">News</a>
    <a href="faq.jsp" style="color: #fff">FAQ</a>
    <a href="contact.jsp">Contact Us</a>
  </nav>

  <div class="auth-buttons">
    <% if (user == null) { %>
        <button class="glass-button" onclick="location.href='user_login.jsp'">Login</button>
        <button class="signup-button" onclick="location.href='user_insert.jsp'">Sign Up</button>
    <% } else { %>
        <span class="welcome-text">Welcome back!</span>
        <button class="glass-button" onclick="location.href='user_profile_servlet'" >👤
        </button>
        <button class="glass-button" onclick="location.href='userLogout'">Logout</button>
    <% } %>
  </div>
</header>

   <section class="page-banner faq-banner">
    <div class="banner-content">
      <h1>Frequently Asked Questions</h1>
      <p class="banner-motto">Find answers to common questions about PlayNova</p>
    </div>
  </section>

   <section class="faq-section">
    <div class="faq-container">
       <div class="faq-category">
        <h2>Account & Registration</h2>
        
        <div class="faq-item">
          <div class="faq-question">
            <h3>How do I create a PlayNova account?</h3>
            <span class="faq-icon"><i class="fas fa-plus"></i></span>
          </div>
          <div class="faq-answer">
            <p>Creating a PlayNova account is simple! Click the "Sign Up" button in the top right corner of any page. Fill in your email address, create a password, and follow the verification steps. Once verified, you can customize your profile and start exploring games.</p>
          </div>
        </div>

        <div class="faq-item">
          <div class="faq-question">
            <h3>Can I change my username after registration?</h3>
            <span class="faq-icon"><i class="fas fa-plus"></i></span>
          </div>
          <div class="faq-answer">
            <p>Yes, you can change your username once every 30 days. Go to your Account Settings, select "Profile," and you'll find the option to update your username. Remember that your previous username will be available for others to use after you change it.</p>
          </div>
        </div>

        <div class="faq-item">
          <div class="faq-question">
            <h3>How do I reset my password?</h3>
            <span class="faq-icon"><i class="fas fa-plus"></i></span>
          </div>
          <div class="faq-answer">
            <p>If you've forgotten your password, click on "Login" and then select "Forgot Password." Enter the email address associated with your account, and we'll send you a password reset link. For security reasons, this link will expire after 24 hours.</p>
          </div>
        </div>
      </div>

       <div class="faq-category">
        <h2>Games & Purchases</h2>
        
        <div class="faq-item">
          <div class="faq-question">
            <h3>How do I download games after purchase?</h3>
            <span class="faq-icon"><i class="fas fa-plus"></i></span>
          </div>
          <div class="faq-answer">
            <p>After purchasing a game, it will automatically appear in your library. Navigate to "My Library" from the main menu, find your game, and click "Download." You can also set up auto-downloads for future purchases in your account settings.</p>
          </div>
        </div>

        <div class="faq-item">
          <div class="faq-question">
            <h3>What payment methods do you accept?</h3>
            <span class="faq-icon"><i class="fas fa-plus"></i></span>
          </div>
          <div class="faq-answer">
            <p>PlayNova accepts various payment methods including credit/debit cards (Visa, Mastercard, American Express), PayPal, Apple Pay, Google Pay, and PlayNova gift cards. Regional payment options may vary. All transactions are secured with industry-standard encryption.</p>
          </div>
        </div>

        <div class="faq-item">
          <div class="faq-question">
            <h3>What is your refund policy?</h3>
            <span class="faq-icon"><i class="fas fa-plus"></i></span>
          </div>
          <div class="faq-answer">
            <p>We offer refunds for games purchased within 14 days, provided you've played less than 2 hours. Special editions, DLCs, and in-game purchases may have different refund policies. To request a refund, go to your purchase history and select the "Request Refund" option.</p>
          </div>
        </div>
      </div>

       <div class="faq-category">
        <h2>Technical Support</h2>
        
        <div class="faq-item">
          <div class="faq-question">
            <h3>What are the minimum system requirements?</h3>
            <span class="faq-icon"><i class="fas fa-plus"></i></span>
          </div>
          <div class="faq-answer">
            <p>System requirements vary by game. Each game page lists its specific requirements. For the PlayNova launcher, we recommend at least Windows 10/macOS 10.14, 4GB RAM, 2GB free disk space, and a broadband internet connection. You can run our system check tool to verify compatibility.</p>
          </div>
        </div>

        <div class="faq-item">
          <div class="faq-question">
            <h3>My game is crashing or performing poorly. What should I do?</h3>
            <span class="faq-icon"><i class="fas fa-plus"></i></span>
          </div>
          <div class="faq-answer">
            <p>First, ensure your system meets the game's requirements and that your drivers are up to date. Try restarting the game and your computer. If issues persist, use the "Verify Game Files" option in your library. For specific game issues, check our support forums or submit a ticket with your system information and error logs.</p>
          </div>
        </div>

        <div class="faq-item">
          <div class="faq-question">
            <h3>How do I update my games?</h3>
            <span class="faq-icon"><i class="fas fa-plus"></i></span>
          </div>
          <div class="faq-answer">
            <p>Games on PlayNova update automatically by default when you launch the platform. You can also manually check for updates by right-clicking on a game in your library and selecting "Check for Updates." To manage auto-update settings, go to Settings > Downloads.</p>
          </div>
        </div>
      </div>

       <div class="faq-category">
        <h2>Community & Social</h2>
        
        <div class="faq-item">
          <div class="faq-question">
            <h3>How do I add friends on PlayNova?</h3>
            <span class="faq-icon"><i class="fas fa-plus"></i></span>
          </div>
          <div class="faq-answer">
            <p>To add friends, go to the "Friends" tab in your profile. You can search for users by their PlayNova username or email. You can also connect your social media accounts to find friends who are already on PlayNova. Once you send a friend request, they'll need to accept it before you're connected.</p>
          </div>
        </div>

        <div class="faq-item">
          <div class="faq-question">
            <h3>Can I stream my gameplay directly from PlayNova?</h3>
            <span class="faq-icon"><i class="fas fa-plus"></i></span>
          </div>
          <div class="faq-answer">
            <p>Yes! PlayNova has built-in streaming capabilities. While playing a game, press Shift+Tab to open the overlay, then select the "Stream" option. You can stream directly to Twitch, YouTube, or Facebook if you've linked those accounts in your settings.</p>
          </div>
        </div>

        <div class="faq-item">
          <div class="faq-question">
            <h3>How do I report inappropriate behavior?</h3>
            <span class="faq-icon"><i class="fas fa-plus"></i></span>
          </div>
          <div class="faq-answer">
            <p>We take community safety seriously. To report a user, visit their profile and click the "Report" button. For in-game incidents, use the game's reporting system if available. You can also report forum posts, reviews, or comments by clicking the flag icon. All reports are reviewed by our moderation team.</p>
          </div>
        </div>
      </div>
    </div>
  </section>

   <section class="contact-cta">
    <h2>Still have questions?</h2>
    <p>Our support team is ready to help you with any other questions you might have.</p>
    <a href="contact.jsp" class="cta-button">Contact Us</a>
  </section>

   <footer class="site-footer">
     <div class="footer-top">
       <div class="footer-col">
        <img src="images/logo.png" alt="PlayNova Logo" class="footer-logo" />
        <p class="footer-desc">PlayNova is your portal to next-gen gaming. Explore, play, and experience the future of entertainment.</p>
        <div class="social-icons">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
          <a href="#"><i class="fab fa-youtube"></i></a>
        </div>
      </div>

       <div class="footer-col">
        <h3>Quick Links</h3>
        <ul>
          <li><a href="home.jsp">Home</a></li>
          <li><a href="Store">Store</a></li>
          <li><a href="aboutus.jsp">About Us</a></li>
        </ul>
      </div>

       <div class="footer-col">
        <h3>Support</h3>
        <ul>
          <li><a href="contact.jsp">Contact Us</a></li>
        <li><a href="faq.jsp">FAQs</a></li>
        <li><a href="t&c.jsp">Terms and Conditions</a></li>
        <li><a href="p&p.jsp">Privacy Policy</a></li>
        </ul>
      </div>

       <div class="footer-col">
        <h3>Are you an Admin?</h3>
        <ul>
         <li><a href="AdminLogin.jsp">Admin Login</a></li>
        <li><a href="AdminLogin.jsp">Admin Dashboard</a></li>
        <li><a href="AdminLogin.jsp">Game Management</a></li>
        </ul>
      </div>
    </div>

     <div class="footer-bottom">
      <p>&copy; 2025 PlayNova. All rights reserved. PlayNova is a trademark of PlayNova Studios. All content is protected under copyright law.</p>
    </div>
  </footer>

  <script>

  document.addEventListener("DOMContentLoaded", () => {
    const faqItems = document.querySelectorAll(".faq-item")

    faqItems.forEach((item) => {
      const question = item.querySelector(".faq-question")

      question.addEventListener("click", () => {
        // Toggle active class on the clicked item
        item.classList.toggle("active")

        // Close other open items
        faqItems.forEach((otherItem) => {
          if (otherItem !== item && otherItem.classList.contains("active")) {
            otherItem.classList.remove("active")
          }
        })
      })
    })
  })

  </script>
</body>
</html>
