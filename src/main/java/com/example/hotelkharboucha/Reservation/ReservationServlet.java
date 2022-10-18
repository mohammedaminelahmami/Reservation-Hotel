package com.example.hotelkharboucha.Reservation;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class ReservationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action == null)
        {
            action = "Reservations";
        }
        switch(action)
        {
            case "Reservations":
                getAllReservations(req, resp);
                break;
            case "checkReservation":
                checkReservation(req, resp);
                break;
            default:
                getAllReservations(req, resp);
                break;
        }
    }

    private void checkReservation(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        ReservationRepository reservationRepository = new ReservationRepository();
        Reservation reservation = reservationRepository.getClientReservation(id);
        req.setAttribute("reservation", reservation);
        RequestDispatcher dispatcher = req.getRequestDispatcher("jsp page where the reservation will be displayed");
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
    private void getAllReservations(HttpServletRequest req, HttpServletResponse resp) {
        // get all reservations from the database
        ReservationRepository reservationRepository = new ReservationRepository();
        List<Reservation> reservations = reservationRepository.getAllReservation();
        // add reservations to the request
        req.setAttribute("reservations", reservations);
        // send to the JSP page (view)
        RequestDispatcher dispatcher = req.getRequestDispatcher("jsp page where the reservations will be displayed");
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // super.doDelete(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // super.doPost(req, resp);
        int idClient = Integer.parseInt(req.getParameter("idClient"));
        int idRoom = Integer.parseInt(req.getParameter("idRoom"));
        String date_debut = req.getParameter("date_debut");
        String date_fin = req.getParameter("date_fin");
        int idExtra = Integer.parseInt(req.getParameter("idExtra"));
        Reservation newReservation = new Reservation(idClient, idRoom, date_debut, date_fin, idExtra);
        ReservationRepository reservationRepository = new ReservationRepository();
        reservationRepository.addReservation(newReservation);
        req.setAttribute("message", "Reservation added successfully");
    }
}
