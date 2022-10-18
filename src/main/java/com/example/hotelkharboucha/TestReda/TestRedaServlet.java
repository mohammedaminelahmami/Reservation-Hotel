package com.example.hotelkharboucha.TestReda;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class TestRedaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //response.sendRedirect("./src/User/testReda.jsp");

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("./src/User/testReda.jsp");
        String data = "test get my Data !!";
        request.setAttribute("myData", data);
        requestDispatcher.forward(request, response);
    }
}