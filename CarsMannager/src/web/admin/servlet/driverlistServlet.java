package web.admin.servlet;

import domain.Driver;
import service.driverservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/driverlistServlet")
public class driverlistServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException , IOException{
        try {
            driverservice service = new driverservice();
            List<Driver> drivers = service.FindDriver();
            request.getSession().setAttribute("drivers",drivers);
            response.sendRedirect(request.getContextPath() + "/client/admin.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void doGet(HttpServletRequest request,HttpServletResponse response) throws  ServletException,IOException{
        this.doPost(request, response);
    }

}
