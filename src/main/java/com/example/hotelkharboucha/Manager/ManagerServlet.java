package com.example.hotelkharboucha.Manager;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet(name = "ManagerServlet", value = "/dashboard")
public class ManagerServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "login";
        }
        switch(action) {
            case "login":
                login(request, response);
                break;
            case "logout":
                logout(request, response);
                break;
            default:
                login(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //sign up metode
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Manager manager = new Manager(username, password);
        ManagerRepository managerRepository = new ManagerRepository();
        managerRepository.newManager(manager);
        //create session
        response.sendRedirect("jsp page where the manager will be displayed");
    }
    private void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        ManagerRepository managerRepository = new ManagerRepository();
        boolean isExist = managerRepository.isExist(username);
        if(isExist) {
            //login methode from manager repository
            Manager manager = managerRepository.login(username, password);
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            response.sendRedirect(request.getContextPath()+"./src/User/dashboard.jsp");
        } else {
           response.sendRedirect(request.getContextPath()+"./src/Manager/Login.jsp");
        }
    }
    private void logout(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        session.invalidate();
        //response.sendRedirect("redirect him to login page");
    }

    
}
