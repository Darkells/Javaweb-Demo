package web.client.servlet;

import domain.Driver;
import domain.Order;
import domain.User;
import service.orderservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/OrderlistServlet")
public class OrderlistServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        try {
            Driver driver = (Driver) request.getSession().getAttribute("driver");
            orderservice orderservice = new orderservice();
            HttpSession session = request.getSession();
            List<Order> orders = new ArrayList<Order>();
            orders = orderservice.getOrders(driver);
            request.getSession().setAttribute("orders",orders);
            response.sendRedirect(request.getContextPath() + "/client/driver/Orderlist.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        this.doPost(request, response);
    }
}
