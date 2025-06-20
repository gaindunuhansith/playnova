package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/userLogout")
public class userLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public userLogout() {
        super();
       
    }

 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // Invalidate session
        HttpSession session = request.getSession(false); // false avoids creating a new session
        if (session != null) {
            session.invalidate();
        }

        // Remove cookies
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                cookie.setMaxAge(0); // Set expiry to 0 to delete
                cookie.setPath("/"); // Ensure the path matches the one used to create the cookie
                response.addCookie(cookie);
            }
        }

        // Redirect to login page
        response.sendRedirect("home.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
