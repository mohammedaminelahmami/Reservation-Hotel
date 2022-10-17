package com.example.hotelkharboucha.Room;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

public class RoomServlet extends HttpServlet {

    private RoomRepository roomRepository = new RoomRepository();
   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int num = Integer.parseInt(req.getParameter("num"));
        int idType = Integer.parseInt(req.getParameter("idType"));
        String status = req.getParameter("status");
        String description = req.getParameter("description");
        Room newRoom = new Room(num, idType, status, description);
        if(!roomRepository.isRoomExist(num))
        {
            roomRepository.addRoom(newRoom);
            req.setAttribute("message", "Room added successfully");
        }
        else
        {
           newRoom.setNum(num);
           roomRepository.updateRoom(newRoom);
              req.setAttribute("message", "Room updated successfully");
        }
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action == null)
        {
            action = "LIST";
        }
        switch(action)
        {
            case "Rooms":
                getAllRooms(req, resp);
                break;
            case "checkRoom":
                checkRoom(req, resp);
                break;
            case "DeleteRoom":
                deleteRoom(req, resp);
                break;
            default:
                getAllRooms(req, resp);
                break;
        }
    }
    

    private void deleteRoom(HttpServletRequest req, HttpServletResponse resp) {
        int num = Integer.parseInt(req.getParameter("num"));
        roomRepository.deleteRoom(num);
        try {
            resp.sendRedirect("");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void checkRoom(HttpServletRequest req, HttpServletResponse resp) {
        int num = Integer.parseInt(req.getParameter("num"));
        Room room = roomRepository.getRoom(num);
        req.setAttribute("room", room);
        RequestDispatcher dispatcher = req.getRequestDispatcher("jsp page where we gonna display the result");
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void getAllRooms(HttpServletRequest req, HttpServletResponse resp) {
        List<Room> rooms = roomRepository.getAllRooms();
        req.setAttribute("rooms", rooms);
        RequestDispatcher dispatcher = req.getRequestDispatcher("jsp page where we gonna display the result");
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
