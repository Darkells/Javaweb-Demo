package web.client.servlet;

import service.userservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/CheckServlet")
public class CheckServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();
            String username = request.getParameter("username");
            System.out.println(username);
            userservice service = new userservice();
            if (username == null || username.equals("")) {
                out.println("请输入用户名");
            } else if (service.checkname(username) == true) {
                out.println("存在用户名");
            } else {
                out.println("可以注册");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
