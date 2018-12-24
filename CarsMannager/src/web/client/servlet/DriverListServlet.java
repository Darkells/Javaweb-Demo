package web.client.servlet;

import domain.Driver;
import domain.Order;
import domain.User;
import service.driverservice;
import service.userservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/DriverListServlet")
public class DriverListServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException , IOException{
        try {
            driverservice service = new driverservice();
            List<Driver> drivers = new ArrayList<Driver>();
            HttpSession session = request.getSession();
            drivers = service.FindDriver();
            request.getSession().setAttribute("drivers", drivers);
            response.sendRedirect(request.getContextPath() + "/client/findcarer.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void doPoet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
