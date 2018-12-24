package web.client.servlet;

import domain.Driver;
import service.driverservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DerLoginServlet")
public class DerLoginServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            //1、获取登录页面输入的用户名和密码
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            driverservice service = new driverservice();
            Driver driver = service.login(username, password);
            //匹配成功，将用户信息保存到session中
            request.getSession().setAttribute("driver", driver);
            response.getWriter().write("success");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("fail");
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
