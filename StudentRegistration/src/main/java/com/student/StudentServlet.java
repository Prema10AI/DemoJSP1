package com.student;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String course = request.getParameter("course");

        // Check empty fields
        if (name == null || name.trim().isEmpty()
                || email == null || email.trim().isEmpty()
                || course == null || course.trim().isEmpty()) {

            request.setAttribute("error",
                    "All fields are mandatory.");

            request.getRequestDispatcher("index.jsp")
                   .forward(request, response);

            return;
        }

        // Validate email
        if (!email.matches("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$")) {

            request.setAttribute("error",
                    "Please enter a valid email address.");

            request.getRequestDispatcher("index.jsp")
                   .forward(request, response);

            return;
        }

        // Create Student object
        Student student = new Student(name, email, course);

        // Send student object to JSP
        request.setAttribute("student", student);

        request.getRequestDispatcher("success.jsp")
               .forward(request, response);
    }
}