package web.client.servlet;

import domain.User;
import org.omg.Messaging.SYNC_WITH_TRANSPORT;
import service.userservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            //1、获取登录页面输入的用户名和密码
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            userservice service = new userservice();
            User user = service.login(username, password);
            //匹配成功，将用户信息保存到session中
            request.getSession().setAttribute("user", user);
            String role = user.getRole();
            if (role.equals("admin")){
                response.getWriter().write("admin");
            }else {
                response.getWriter().write("success");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("fail");
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
