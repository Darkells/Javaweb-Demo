package web.client.servlet;

import service.driverservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/passwordServlet")
public class passwordServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("newpassword");
            driverservice service = new driverservice();
            service.DerUpdatepassword(username, password);
            response.getWriter().write("{\"data\":\"成功\"}");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("msg", e.getMessage());
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
