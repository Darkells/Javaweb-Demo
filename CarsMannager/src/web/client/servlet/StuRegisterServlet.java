package web.client.servlet;

import domain.User;
import org.apache.commons.beanutils.BeanUtils;
import service.userservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;


@WebServlet("/StuRegisterServlet")
public class StuRegisterServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            //1、实例化user对象
            User user = new User();
            //使用BeanUtils将表单数据封装到javabean里
            Map<String, String[]> map = request.getParameterMap();
            //将map所得到的表单数据封装到user实体类
            BeanUtils.populate(user, map);
            userservice service = new userservice();
            service.sturegister(user);
            request.getSession().setAttribute("user", user);
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
