package web.client.servlet;

import domain.Order;
import org.apache.commons.beanutils.BeanUtils;
import service.orderservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet("/bookcarsServlet")
public class bookcarsServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Order order = new Order();
            Map<String, String[]> map = request.getParameterMap();
            BeanUtils.populate(order, map);
            orderservice orderservice = new orderservice();
            System.out.println(order.getE_time());
            orderservice.bookcar(order);
            response.sendRedirect(request.getContextPath() + "/client/findcarer.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String d_id = request.getParameter("d_id");
        request.getSession().setAttribute("d_id",d_id);
        response.sendRedirect(request.getContextPath() + "/client/test.jsp");
    }
}
