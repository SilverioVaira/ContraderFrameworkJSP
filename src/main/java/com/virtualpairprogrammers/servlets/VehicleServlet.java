package com.virtualpairprogrammers.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class VehicleServlet extends HttpServlet implements ServletCustom {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{

        int scelta = Integer.parseInt((String)request.getParameter("scelta"));

        switch (scelta) {
            case 1:response.sendRedirect("InsertVehicle.jsp");
            break;
            case 2:response.sendRedirect("AllVehicle");
            break;
        }

    }


    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int scelta = Integer.parseInt((String)request.getParameter("scelta"));

        switch (scelta) {
            case 1:response.sendRedirect("InsertVehicle.jsp");
                break;
            case 2:response.sendRedirect("AllVehicle");
                break;
        }
    }
}
