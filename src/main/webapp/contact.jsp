<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Contact Us - Play Nova</title>
  <link rel="stylesheet" href="home.css" />
  <link rel="stylesheet" href="contact.css" />
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
	
	.contact-banner {
	  height: 15vh;
	  background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url("contact-banner.jpg") no-repeat center center
	    / cover;
	}
	
	.contact-section {
	  padding: 60px 40px;
	  background: linear-gradient(to bottom, #0d0d0d, #1a1a1a);
	  color: white;
	}
	
	.contact-container {
	  max-width: 1200px;
	  margin: 0 auto;
	  display: flex;
	  flex-wrap: wrap;
	  gap: 40px;
	}
	
	.contact-form-col {
	  flex: 1 1 550px;
	}
	
	.contact-form-col h2 {
	  font-size: 2rem;
	  margin-bottom: 15px;
	  color: white;
	}
	
	.contact-form-col > p {
	  color: #cccccc;
	  margin-bottom: 30px;
	  font-size: 1.1rem;
	}
	
	.contact-form {
	  background: rgba(255, 255, 255, 0.03);
	  backdrop-filter: blur(6px);
	  border-radius: 12px;
	  padding: 30px;
	  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
	}
	
	.form-group {
	  margin-bottom: 20px;
	}
	
	.form-group label {
	  display: block;
	  margin-bottom: 8px;
	  font-weight: 500;
	  color: #eee;
	}
	
	.form-group input,
	.form-group select,
	.form-group textarea {
	  width: 100%;
	  padding: 12px 15px;
	  background: rgba(255, 255, 255, 0.05);
	  border: 1px solid rgba(255, 255, 255, 0.1);
	  border-radius: 8px;
	  color: white;
	  font-family: "Rajdhani", sans-serif;
	  font-size: 1rem;
	  transition: border-color 0.3s, box-shadow 0.3s;
	}
	
	.form-group input:focus,
	.form-group select:focus,
	.form-group textarea:focus {
	  outline: none;
	  border-color: #e60000;
	  box-shadow: 0 0 0 2px rgba(230, 0, 0, 0.2);
	}
	
	.form-group input::placeholder,
	.form-group textarea::placeholder {
	  color: rgba(255, 255, 255, 0.4);
	}
	
	.checkbox-container {
	  display: flex;
	  align-items: flex-start;
	  position: relative;
	  padding-left: 35px;
	  cursor: pointer;
	  font-size: 0.9rem;
	  color: #ccc;
	  user-select: none;
	}
	
	.checkbox-container input {
	  position: absolute;
	  opacity: 0;
	  cursor: pointer;
	  height: 0;
	  width: 0;
	}
	
	.checkmark {
	  position: absolute;
	  top: 0;
	  left: 0;
	  height: 20px;
	  width: 20px;
	  background-color: rgba(255, 255, 255, 0.05);
	  border: 1px solid rgba(255, 255, 255, 0.1);
	  border-radius: 4px;
	}
	
	.checkbox-container:hover input ~ .checkmark {
	  background-color: rgba(255, 255, 255, 0.1);
	}
	
	.checkbox-container input:checked ~ .checkmark {
	  background-color: #e60000;
	  border-color: #e60000;
	}
	
	.checkmark:after {
	  content: "";
	  position: absolute;
	  display: none;
	}
	
	.checkbox-container input:checked ~ .checkmark:after {
	  display: block;
	}
	
	.checkbox-container .checkmark:after {
	  left: 7px;
	  top: 3px;
	  width: 5px;
	  height: 10px;
	  border: solid white;
	  border-width: 0 2px 2px 0;
	  transform: rotate(45deg);
	}
	
	.submit-button {
	  background: #e60000;
	  color: white;
	  border: none;
	  border-radius: 8px;
	  padding: 14px 28px;
	  font-size: 1.1rem;
	  font-weight: 600;
	  cursor: pointer;
	  transition: background 0.3s;
	  width: 100%;
	  margin-top: 10px;
	}
	
	.submit-button:hover {
	  background: #cc0000;
	}
	
	.contact-info-col {
	  flex: 1 1 400px;
	}
	
	.contact-info-col h2 {
	  font-size: 2rem;
	  margin-bottom: 15px;
	  color: white;
	}
	
	.contact-info-col > p {
	  color: #cccccc;
	  margin-bottom: 30px;
	  font-size: 1.1rem;
	}
	
	.info-items {
	  display: flex;
	  flex-direction: column;
	  gap: 25px;
	  margin-bottom: 40px;
	}
	
	.info-item {
	  display: flex;
	  gap: 20px;
	  align-items: flex-start;
	}
	
	.info-icon {
	  width: 50px;
	  height: 50px;
	  background: rgba(230, 0, 0, 0.1);
	  border-radius: 50%;
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  color: #e60000;
	  font-size: 1.2rem;
	  flex-shrink: 0;
	}
	
	.info-content h3 {
	  font-size: 1.2rem;
	  margin-bottom: 5px;
	  color: white;
	}
	
	.info-content p {
	  color: #cccccc;
	  line-height: 1.5;
	}
	
	.social-connect h3 {
	  font-size: 1.3rem;
	  margin-bottom: 20px;
	  color: white;
	}
	
	.social-icons-large {
	  display: flex;
	  gap: 15px;
	}
	
	.social-icon-large {
	  width: 50px;
	  height: 50px;
	  background: rgba(255, 255, 255, 0.05);
	  border-radius: 50%;
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  color: white;
	  font-size: 1.2rem;
	  transition: all 0.3s ease;
	  text-decoration: none;
	}
	
	.social-icon-large:hover {
	  background: #e60000;
	  transform: translateY(-5px);
	}
	
	.faq-quick-links {
	  padding: 60px 40px;
	  background: #0f0f0f;
	  color: white;
	  text-align: center;
	}
	
	.quick-links-container {
	  max-width: 1000px;
	  margin: 0 auto;
	}
	
	.faq-quick-links h2 {
	  font-size: 2.2rem;
	  margin-bottom: 15px;
	}
	
	.faq-quick-links p {
	  font-size: 1.1rem;
	  color: #cccccc;
	  margin-bottom: 30px;
	}
	
	.quick-links {
	  display: flex;
	  flex-wrap: wrap;
	  justify-content: center;
	  gap: 20px;
	}
	
	.quick-link {
	  background: rgba(255, 255, 255, 0.03);
	  backdrop-filter: blur(6px);
	  border-radius: 10px;
	  padding: 20px;
	  width: 180px;
	  display: flex;
	  flex-direction: column;
	  align-items: center;
	  text-decoration: none;
	  color: white;
	  transition: all 0.3s ease;
	}
	
	.quick-link i {
	  font-size: 2rem;
	  margin-bottom: 15px;
	  color: #e60000;
	}
	
	.quick-link span {
	  font-size: 1rem;
	  font-weight: 500;
	}
	
	.quick-link:hover {
	  transform: translateY(-5px);
	  background: rgba(255, 255, 255, 0.08);
	}
	
	.quick-link.view-all {
	  background: rgba(230, 0, 0, 0.1);
	}
	
	.quick-link.view-all:hover {
	  background: rgba(230, 0, 0, 0.2);
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
	  .contact-section {
	    padding: 40px 20px;
	  }
	
	  .contact-form-col h2,
	  .contact-info-col h2 {
	    font-size: 1.8rem;
	  }
	
	  .info-icon {
	    width: 40px;
	    height: 40px;
	    font-size: 1rem;
	  }
	
	  .quick-link {
	    width: 140px;
	    padding: 15px;
	  }
	
	  .quick-link i {
	    font-size: 1.5rem;
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
    <a href="faq.jsp">FAQ</a>
    <a href="contact.jsp" style="color: #fff">Contact Us</a>
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

   <section class="page-banner contact-banner">
    <div class="banner-content">
      <h1>Contact Us</h1>
      <p class="banner-motto">We're here to help with any questions or concerns</p>
    </div>
  </section>

   <section class="contact-section">
    <div class="contact-container">
       <div class="contact-form-col">
        <h2>Send Us a Message</h2>
        <p>Fill out the form below and our team will get back to you as soon as possible.</p>
        
        <form class="contact-form">
          <div class="form-group">
            <label for="name">Your Name</label>
            <input type="text" id="name" name="name" placeholder="Enter your full name" required>
          </div>
          
          <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" id="email" name="email" placeholder="Enter your email address" required>
          </div>
          
          <div class="form-group">
            <label for="subject">Subject</label>
            <select id="subject" name="subject" required>
              <option value="" disabled selected>Select a topic</option>
              <option value="account">Account Issues</option>
              <option value="billing">Billing & Payments</option>
              <option value="technical">Technical Support</option>
              <option value="feedback">Feedback & Suggestions</option>
              <option value="other">Other</option>
            </select>
          </div>
          
          <div class="form-group">
            <label for="message">Your Message</label>
            <textarea id="message" name="message" rows="6" placeholder="Please describe your issue or question in detail..." required></textarea>
          </div>
          
          <div class="form-group">
            <label class="checkbox-container">
              <input type="checkbox" name="terms" required>
              <span class="checkmark"></span>
              I agree to the processing of my personal data according to the Privacy Policy
            </label>
          </div>
          
          <button type="submit" class="submit-button">Send Message</button>
        </form>
      </div>
      
       <div class="contact-info-col">
        <h2>Contact Information</h2>
        <p>You can also reach us through the following channels:</p>
        
        <div class="info-items">
          <div class="info-item">
            <div class="info-icon">
              <i class="fas fa-map-marker-alt"></i>
            </div>
            <div class="info-content">
              <h3>Our Location</h3>
              <p>PlayNova Headquarters<br>123 Gaming Boulevard<br>San Francisco, CA 94107</p>
            </div>
          </div>
          
          <div class="info-item">
            <div class="info-icon">
              <i class="fas fa-phone-alt"></i>
            </div>
            <div class="info-content">
              <h3>Phone Support</h3>
              <p>+1 (555) 123-4567<br>Monday - Friday: 9am - 6pm PST</p>
            </div>
          </div>
          
          <div class="info-item">
            <div class="info-icon">
              <i class="fas fa-envelope"></i>
            </div>
            <div class="info-content">
              <h3>Email Us</h3>
              <p>support@playnova.com<br>business@playnova.com</p>
            </div>
          </div>
          
          <div class="info-item">
            <div class="info-icon">
              <i class="fas fa-headset"></i>
            </div>
            <div class="info-content">
              <h3>Live Chat</h3>
              <p>Available 24/7 through our app<br>or website when logged in</p>
            </div>
          </div>
        </div>
        
        <div class="social-connect">
          <h3>Connect With Us</h3>
          <div class="social-icons-large">
            <a href="#" class="social-icon-large"><i class="fab fa-facebook-f"></i></a>
            <a href="#" class="social-icon-large"><i class="fab fa-twitter"></i></a>
            <a href="#" class="social-icon-large"><i class="fab fa-instagram"></i></a>
            <a href="#" class="social-icon-large"><i class="fab fa-discord"></i></a>
            <a href="#" class="social-icon-large"><i class="fab fa-youtube"></i></a>
          </div>
        </div>
      </div>
    </div>
  </section>

   <section class="faq-quick-links">
    <div class="quick-links-container">
      <h2>Frequently Asked Questions</h2>
      <p>Find quick answers to common questions before contacting us:</p>
      
      <div class="quick-links">
        <a href="faq.jsp" class="quick-link">
          <i class="fas fa-user-circle"></i>
          <span>Account Issues</span>
        </a>
        
        <a href="faq.jsp" class="quick-link">
          <i class="fas fa-credit-card"></i>
          <span>Payment Methods</span>
        </a>
        
        <a href="faq.jsp" class="quick-link">
          <i class="fas fa-download"></i>
          <span>Game Downloads</span>
        </a>
        
        <a href="faq.jsp" class="quick-link">
          <i class="fas fa-wrench"></i>
          <span>Technical Support</span>
        </a>
        
        <a href="faq.jsp" class="quick-link view-all">
          <i class="fas fa-list"></i>
          <span>View All FAQs</span>
        </a>
      </div>
    </div>
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

 
</body>
</html>
