<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <title>About Us - PlayNova</title>
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

        
        .about-container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 0 20px;
        }
        
        .about-header {
            text-align: center;
            margin-bottom: 60px;
        }
        
        .about-header h1 {
            font-size: 48px;
            margin-bottom: 20px;
            background: linear-gradient(to right, #ff3366, #9933ff);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }
        
        .about-header p {
            font-size: 18px;
            color: #cccccc;
            max-width: 700px;
            margin: 0 auto;
            line-height: 1.6;
        }
        
        .about-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 40px;
            margin-bottom: 60px;
        }
        
        .about-section {
            background-color: rgba(30, 30, 30, 0.7);
            border-radius: 8px;
            padding: 30px;
            transition: transform 0.3s;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        .about-section:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(255, 51, 102, 0.2);
        }
        
        .about-section h2 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #ff3366;
        }
        
        .about-section p {
            color: #cccccc;
            line-height: 1.6;
            margin-bottom: 20px;
        }
        
        .team-section {
            text-align: center;
            margin-bottom: 60px;
        }
        
        .team-section h2 {
            font-size: 36px;
            margin-bottom: 40px;
            background: linear-gradient(to right, #ff3366, #9933ff);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }
        
        .team-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
        }
        
        .team-member {
            background-color: rgba(30, 30, 30, 0.7);
            border-radius: 8px;
            padding: 30px;
            transition: transform 0.3s;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        .team-member:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(153, 51, 255, 0.2);
        }
        
        .team-member img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 20px;
            border: 3px solid #ff3366;
        }
        
        .team-member h3 {
            font-size: 20px;
            margin-bottom: 5px;
            color: #ffffff;
        }
        
        .team-member p {
            color: #cccccc;
            font-size: 14px;
        }
        
        .cta-section {
            text-align: center;
            margin: 80px 0;
        }
        
        .cta-buttons {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 30px;
        }
        
        .btn-cta {
            padding: 12px 30px;
            font-size: 16px;
            border-radius: 4px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
        }
        
        .btn-primary {
            background-color: #ff0033;
            color: white;
            border: none;
        }
        
        .btn-secondary {
            background-color: transparent;
            color: white;
            border: 2px solid #ff0033;
        }
        
        .btn-cta:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(255, 0, 51, 0.3);
        }
        
        footer {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 30px 0;
            text-align: center;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        footer p {
            color: #999999;
            font-size: 14px;
        }
        
        @media (max-width: 768px) {
            header {
                flex-direction: column;
                padding: 20px;
            }
            
            nav ul {
                margin: 20px 0;
                flex-wrap: wrap;
                justify-content: center;
            }
            
            .about-header h1 {
                font-size: 36px;
            }
            
            .cta-buttons {
                flex-direction: column;
                align-items: center;
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

    <main class="about-container">
        <section class="about-header">
            <h1>About pLaYNoVA</h1>
            <p>Your gateway to next-gen gaming experiences. We're passionate gamers dedicated to creating immersive worlds and unforgettable adventures.</p>
        </section>

        <section class="about-content">
            <div class="about-section">
                <h2>Our Mission</h2>
                <p>At PlayNova, we're on a mission to redefine gaming by creating innovative, immersive experiences that push the boundaries of what's possible. We believe games should be more than just entertainment—they should be transformative journeys.</p>
                <p>Founded in 2018, we've been working tirelessly to bring our vision to life through cutting-edge technology and creative storytelling.</p>
            </div>

            <div class="about-section">
                <h2>Our Vision</h2>
                <p>We envision a future where gaming transcends traditional boundaries, connecting players across the globe in shared experiences that are as meaningful as they are entertaining.</p>
                <p>Through innovation and dedication to our craft, we aim to be at the forefront of the next generation of gaming.</p>
            </div>

            <div class="about-section">
                <h2>Our Values</h2>
                <p>Innovation is in our DNA. We constantly push the envelope to create experiences that surprise and delight our community.</p>
                <p>We believe in inclusivity, creating games that welcome players of all backgrounds and skill levels. Most importantly, we never forget that fun is fundamental to everything we do.</p>
            </div>
        </section>

        <section class="team-section">
            <h2>Meet Our Team</h2>
            <div class="team-grid">
                <div class="team-member">
                    <img src="images/profile.avif" alt="Team Member">
                    <h3>Lehan Nawaratne</h3>
                    <p>Founder & Creative Director</p>
                </div>
                <div class="team-member">
                    <img src="images/profile.avif"alt="Team Member">
                    <h3>Imeth weerassoriya</h3>
                    <p>Lead Game Developer</p>
                </div>
                <div class="team-member">
                    <img src="images/profile.avif "alt="Team Member">
                    <h3>Gaindu Karunathilake</h3>
                    <p>General Director</p>
                </div>
                <div class="team-member">
                    <img src="images/profile.avif " alt="Team Member">
                    <h3>Pavith Kavisika</h3>
                    <p>Co Founder</p>
                </div>
            </div>
        </section>

        <section class="cta-section">
            <h2>Ready to Join the Adventure?</h2>
            <div class="cta-buttons">
            <a href="Store"><button class="btn-cta btn-primary">Explore Games</button> </a>
            <a href="user_insert.jsp"> <button class="btn-cta btn-secondary">Join Us</button></a> 
            </div>
        </section>
    </main>
	
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